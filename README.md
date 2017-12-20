# scripts
bash scripts to automate things I do on my computer frequently

## badly_formatted_pdfs
I frequently download resumes and cover letters from my Google Drive and they end up piling up in my downloads folder  
In addition, several of these files end up being poorly formatted due to use of a certain format

This script checks all of the files in my Download folder for formatting, moves the files that don't contain the offending formatting to a permanent folder, and deletes the files that do  
**Requires the pdffonts tool from the poppler package. If you do not have this, use the code below**  
`brew install poppler`
