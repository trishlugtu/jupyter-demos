import { test, expect, errors } from '@playwright/test';
import { EnvPool } from '../environments';
import * as fs from 'fs';

const CSAE_ENV_PASSWORD = process.env.CSAE_ENV_PASSWORD || 'asdfasdf';
const CSAE_WORKERS_COUNT = parseInt(process.env.CSAE_WORKERS_COUNT || '1');
const CSAE_PARALLEL_TESTS_COUNT = parseInt(process.env.CSAE_PARALLEL_TESTS_COUNT || '1');
const envPool = new EnvPool(Math.floor(CSAE_WORKERS_COUNT/CSAE_PARALLEL_TESTS_COUNT));

const  CSAE_CI_JOB_IDX = parseInt(process.env.CSAE_CI_JOB_IDX || '0');
const CSAE_CI_JOB_COUNT= parseInt(process.env.CSAE_CI_JOB_COUNT || '1');

const sleep = (ms) => new Promise(r => setTimeout(r, ms));

test.describe.configure({ mode: 'parallel' });
// files.txt will contain the list of files to be tested.
// It is generated by the following command:
// find .. -name '*.ipynb' | grep 'Getting_Started/' > ./files.txt
// find .. -name '*.ipynb'  > ./files.txt
const FILE_NAME = './files.txt';
const SKIPFILE_NAME = './skip_files.txt';
function readFileIntoArray(filename) {
    try {
        const data = fs.readFileSync(filename, 'utf8');
        const lines = data.split('\n').map((line) => line.trim()).filter((line) => line !== '');
        return lines;
    } catch (err) {
        console.error(`Error reading file '${FILE_NAME}': ${err.message}`);
        return [];
    }
}

const skipfiles = readFileIntoArray(SKIPFILE_NAME)
const files = readFileIntoArray(FILE_NAME).filter((name) => skipfiles.indexOf(name) === -1);

const testCount = Math.ceil(files.length / CSAE_CI_JOB_COUNT);

for (let i = 0; i < testCount; i++) {

    const idx = i * CSAE_CI_JOB_COUNT + CSAE_CI_JOB_IDX;
    if(idx >= files.length) {
        break;
    }
    const name = files[idx];
    if(name === '') {
        continue;
    }
    
    test(`test ${i}: ${name}`, async ({page},testInfo) => {
        test.setTimeout(10800000);

        // Create Env or get existing Env
        const env = await envPool.getEnv(testInfo.parallelIndex);
        console.log('url:'+env.getJuypterUrl(name.substring(3)));
        await page.goto(env.getJuypterUrl(name.substring(3)));

        await page.waitForLoadState(); 

        const juypterNotebookData = JSON.parse(fs.readFileSync(name, 'utf8'));

        let strKernelType = '';
        if (juypterNotebookData.metadata.kernelspec.language === 'python') {
            console.log('Python Notebook');
            strKernelType = "Python 3 (ipykernel) ";
        } 
        else if (juypterNotebookData.metadata.kernelspec.language === 'Teradata SQL') {
            console.log('Teradata SQL Notebook');
            strKernelType = 'Teradata SQL ';
        } else if (juypterNotebookData.metadata.kernelspec.language === 'R') {
            console.log('R Notebook');
            strKernelType = 'R ';
        }
        
        console.log('Kernel Type: ' + strKernelType);   
        expect(strKernelType).not.toBe('');

        await page.locator('span[class="f1235lqo"] >> text="'+strKernelType+'| Idle"').waitFor({timeout: 600000});      

        //Get the number of cells in the notebook
        const jpCells =  await page.locator('div.jp-NotebookPanel:not(.p-mod-hidden)> div > div.jp-Cell');
        await jpCells.first().waitFor({timeout: 300000});
        console.log('jpCells: ' + await jpCells.count());
        
        var dm = await juypterNotebookData.cells.length; // Default Number of iterations for each Notebook demo
        
        //Clicking to activate the note book
        jpCells.first().click();

        for (let i = 0; i < dm; i++) {
            //Check for any errors so far
            expect(await page.locator(".jp-RenderedText[data-mime-type='application/vnd.jupyter.stderr']")).toHaveCount(0);

            // To continute the notebook the kernel should be in Idle state. i.e previous cell execution should be completed.
            // await page.locator('span[class="f1235lqo"] >> text="'+strKernelType+'| Idle"').waitFor({timeout: 600000});      
            if (await page.locator('span[class="f1235lqo"] >> text="'+strKernelType+'| Idle"').isVisible({timeout: 600000}))
            {
                // Go to next step by clicking the Run button
                await page.getByRole('button', { name: 'Run the selected cells and' }).click();
            }   

            // Wait to see if the kernel is started because of the cell execution (some cell does not have execution like text).
            try{
                await page.locator('span[class="f1235lqo"] >> text="'+strKernelType+'| Busy"').waitFor({timeout: 2000});
                expect
            } catch (e) {
                if(e instanceof errors.TimeoutError) {
                    continue;
                }
                throw e;
            }
            
            if (await page.locator('span[class="f1235lqo"] >> text="'+strKernelType+'| Busy"').isVisible())
            {
                const passwordField = await page.locator('pre[class="jp-Stdin-prompt"]', { hasText: 'password'})
                if (await passwordField.isVisible({timeout: 1000}))
                {
                    await page.fill('input[class="jp-Stdin-input"]', CSAE_ENV_PASSWORD);
                    await page.locator('input[class="jp-Stdin-input"]').click();
                    await page.keyboard.press('Enter');
                }           
            }
        }
    });
}