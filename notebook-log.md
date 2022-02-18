# BOTANY 563 - PROJECT
### Phylogeny of Universal Small Ribosomal Proteins (uSSU-RP)
### by Evrim Fer

# TO-DO
- List universal small ribosomal subunit proteins (uSSU-RP)
- Find quesry sequence for each from NCBI
- Collect homologous sequences for each uSSU-RP
- Find common species 
- Align all uSS-RP sequences
- Construct phylogeny
- Which proteins are closely related?

# 2022-02-18 

## Data Collection

1. Go to NCBI-Protein database. Then, find query sequence for E.coli uS2 protein. UniProtKB/Swiss-Prot: P0A7V0.2

```shell
>sp|P0A7V0.2|RS2_ECOLI RecName: Full=30S ribosomal protein S2; AltName: Full=Small ribosomal subunit protein uS2
MATVSMRDMLKAGVHFGHQTRYWNPKMKPFIFGARNKVHIINLEKTVPMFNEALAELNKIASRKGKILFV
GTKRAASEAVKDAALSCDQFFVNHRWLGGMLTNWKTVRQSIKRLKDLETQSQDGTFDKLTKKEALMRTRE
LEKLENSLGGIKDMGGLPDALFVIDADHEHIAIKEANNLGIPVFAIVDTNSDPDGVDFVIPGNDDAIRAV
TLYLGAVAATVREGRSQDLASQAEESFVEAE
```

2. Go to NCBI BLASTp and paste the protein sequence as query sequence

3. BLAST Search parameters:
    Database: Non-redundant
    Organism: Escherichia coli (exclude) - to find different species
    Algorithm: blastp
    Max target sequence: 100
    Expect threshold: 0.05

4. 100 proteins mostly from Enterobacteria were found (/data/2022-02-18-uS2-100-unfiltered.txt). There so many duplicted results. Need to filter duplications and also need to expand the search parameters to get more diversity. 
    a. Increase max. target sequence
    b. Limit the search for specific phyla 

