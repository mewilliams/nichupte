#### Manuscript files for a paper on the Nichupte Lagoon System: 

*`nichupte_bibliography.tex`* is an annotated bibliography of relevant papers.

*`nichupte.bib`* is the bibtex bibliography file associated with nichupte_bibliography.tex. 

*`nihupte.tex`* is a manuscript file. To compile with LaTeX, use your favorite latex compiler and `bibtex`, e.g.:

```
> pdflatex nichupte
> bibtex nichupte
> pdflatex nichupte
> pdflatex nichupte
```
The same is true for the `nichupte_bibliography.tex` file which is an annotated bibliography. 


### Script

Some script files are in the script folder. Data can't/shouldn't be stored on github - so if this works correclty all the scripts to generate `edited_data` should be in the scripts fodler, and all the `raw_data` should be in the google drive. 