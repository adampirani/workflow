# RESEARCH

## What do Researchers do?
Researchers inspect the "uncrawlable" list to confirm that seeders' assessments were correct (that is, that the URL/dataset is indeed uncrawlable), and investigate how the dataset could be best harvested.

## Getting set up as a Researcher
 - Apply to become a Researcher 
    - By asking your DataRescue guide or by filling out [this form](Link coming soon) 
    - Skills recommended: in general, Researchers need to have a good understanding of harvesting goals and have some familiarity with datasets. Ideally they would understand how federal data is organized (e.g. where the "master" datasets are vs. the derived partial views of those datasets.
    - Note that an email address is required to apply.
  - Uncrawlable spreadsheet URL, slack invite, and other details will be provided once your application is approved.
  - Verify that you have write access to the Researchers/Harvesters tab in the Uncrawlable spreadsheet
  - If you need any assistance:
    - Talk to your DataRescue Guide if you are at an in-person event
    - Or post questions on Slack in the #Researchers/Harvesters channel.
    
## Researchers and Harvesters
- Researchers and Harvesters should work very closely together as their work will feed from each other and much communication is needed between the two roles.
- For instance they could work in pairs or in small groups. 
  - In some cases, a single person might be both a Researcher and a Harvester.
- Note that in the Uncrawlable Action spreadsheet, Researchers and Harvesters share the same tab.
- As a Researcher, make sure to check out the [Harvesters documentation](harvesting-toolkit) to familiarize yourself with their role.

## Claiming a dataset to harvest

- Researchers work on datasets that were listed as uncrawlable by Seeders.
- Go to the Uncrawlable spreadsheet, click the Researchers/Harvesters tab, and look for a dataset to harvest
  - Available datasets are the ones whose cell "Researcher Handle" is empty
  - If an item is already claimed but its "Date Opened or Closed" cell has turned red, it is also available for you to claim (for more details see the last section of this document)
    - Claim it by entering your slack handle along with the status "Open" and today's date, for instance: 
    ```
    @khdelphine Open 1/22/2017
    ```
- You will find the URL you are about to evaluate in the "Original URL" cell.

## Evaluating the data
Go to the URL, and start inspecting the content.

## Is the data actually crawlable?
Again, see [here](https://docs.google.com/document/d/1PeWefW2toThs-Pbw0CMv2us7wxQI0gRrP1LGuwMp_UQ/edit)
and [here](https://docs.google.com/document/d/1qpuNCmBmu4KcsS_hE2srewcCiP4f9P5cCyDfHmsSAVU/edit)
for a mostly non-technical introduction to the crawler. Some additional
technical notes for answering this:
- There is no specific file size cutoff on what is crawlable, but large files
  should be manually captured anyway.
- Files types like ZIP, PDF, Excel, etc. are crawlable if they are linked.
- The crawler can only follow HTTP links that appear directly in the DOM at load
  time. (That is, they should appear as `<a href ...>` tags in the page source.)
  If links are added by Javascript or require submitting a form, they are
  not crawlable.
- The crawler does not tolerate web frames (but it straightforward to inspect
  a page to obtain the content in the frame directly, and then nominate *that*).
- The crawler recently added the ability to crawl FTP, but we will not rely on
  this; we will treat resources served over FTP as uncrawlable.

What to do in each case:

- **YES**: If the URL is crawlable or you locate a crawlable URL that accesses the
  underlying dataset:
  - Nominate it: use our
    [Chrome extension](https://chrome.google.com/webstore/detail/nominationtool/abjpihafglmijnkkoppbookfkkanklok),
    and if that doesn't work then use the
    [bookmarklet](http://digital2.library.unt.edu/nomination/eth2016/about/)
  - Fill out the cell "Can it be crawled?" = "yes" in Uncrawlable spreadsheet
  - Fill out cell "Seeded?" = "yes" and tell what URL you seeded. 
 - **NO**: If it is confirmed not crawlable:
   - Fill out the cell "Can it be crawled?" = "no" in  Researcher section of the spreadsheet
  - Search agency websites and data.gov for dataset entry points for your dataset collection   
      - Tips: Try to understand what data sets are underlying the web pages. Look for related entries in the spreadsheet, and ensure that you aren't harvesting a subdirectory if you can harvest the entire directory. Often, data underlying dozens of pages or multiple "access portal" apps is also available as one structured data file.
  - Add your suggested url for harvesting the data to spreadsheet (in cell "Harvestable Data"), REALLY IMPORTANT!
  -  Also add other information in the spreadsheet that could help the Harvester, such as information about format (SQL, FTP, ZIP, PDF Collections, etc.), size, details about what you found, recommended approach, etc. 
  - Search for related URLS in the spreadsheet that might be covered by the same approach so as not to duplicate work (in cell "URL duplicate UUID").
- **YES AND NO**: for example, FTP address, mixed content, big data sets:
   - Fill out the cell "Can it be crawled?" = "yes & no" in Researcher section of the spreadsheet
  - Nominate it anyway, but follow the steps for uncrawlable content above.
  - *While we understand that this may result in some dataset duplication, that is not a concern. We are ensuring that the data is fully preserved and accessible.*


## Finishing up
- In the Uncrawlable spreadsheet, change the status to "Closed" in the cell "Researcher: Current Status", for instance: 
  ```
  @khdelphine Closed 1/22/2017
  ```
    - If ever a day or more passed since you originally claimed the item, update the date to today's date. 
    - Note that if more than 2 days have passed since you claimed the dataset and it is still not closed, the **Date field will turn red**, signaling that someone else can claim it in your place and start working on it
      - This will avoid datasets being stuck in the middle of the workflow and not being finalized.
      
- You're done! Move on to the next URL!
