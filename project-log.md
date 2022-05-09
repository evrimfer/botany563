## **BOTANY 563 - PROJECT**
## **Phylogeny of Universal Small Ribosomal Proteins (uSSU-RP)**

## **Data Collection**

1. Universal ribosomal small subunit protein sequences were found from UniProt
>>uS2: P0A7V0\
uS3: P0A7V3\
uS4: P0A7V8\
uS5: P0A7W1\
uS7: P02359\
uS8: P0A7W7\
uS9: P0A7X3\
uS10: P0A7R5\
uS11: P0A7R9\
uS12: P0A7S3\
uS13: P0A7S9\
uS14: P0AG59\
uS15: P0ADZ4\
uS17: P0AG63\
uS19: P0A7U3\

2. Using these accession numbers, homologous protein sequences were searched in BLASTp (web-service), non-redundant (nr) sequence database.\
With default paremeters (evalue threshold=0.05, BLOSUM62 matrix)

3. First, the homologous proteins of uS2 (ribosomal small subunit S2 protein) searhed in BLASTp for different bacterial phyla, archaea and eukaryote;
Alphaproteobacteria, Betaproteobacteria, Deltaproteobacteria, Epsilonproteobacteria, Gammaproteobacteria, Cyanobacteria, Deinococcus-Thermus, Firmicutes, Archaea, Eukaryote. The target phyla groups were specifically defined in BLASTp "Organism" section.

4. The found uS2 sequences were imported to Geneious (version 2022.1.1) software.

5. For each phyla, at least two sequences were kept. Very long and very short or partial sequences were removed.

6. To have a consistent data (i.e. different proteins from same organisms),the remaining species/organisms were specifically searched for other small ribosomal proteins (uS3 to uS19) in BLAST by defining the species in "Organism" section.

7. The found sequences were added to Geneious. However, not all small subunit proteins were able to be found for all species (i.e. missing data for some proteins)

8. At the end, 962 small subunit protein sequences were collected in total.

>>uS2: 69\
uS3: 66\
uS4: 65\
uS5: 67\
uS7: 65\
uS8: 65\
uS9: 63\
uS10: 65\
uS11: 66\
uS12: 66\
uS13: 64\
uS14: 61\
uS15: 53\
uS17: 63\
uS19:64

9. The 962 small subunit sequences were exported from Genious
>> ~/data/allSSU.fasta\
~/data/uS2.fasta\
~/data/uS3.fasta\
~/data/uS4.fasta\
~/data/uS5.fasta\
~/data/uS7.fasta\
~/data/uS8.fasta\
~/data/uS9.fasta\
~/data/uS10.fasta\
~/data/uS11.fasta\
~/data/uS12.fasta\
~/data/uS13.fasta\
~/data/uS14.fasta\
~/data/uS15.fasta\
~/data/uS17.fasta\
~/data/uS19.fasta

## **Alignment**
The alignment steps were performed on local computer (MacOS Monterey version 12.3.1)

### **MAFFT v7.490**
1. Install MAFFT using conda
```(bash)
conda install -c bioconda mafft
```
2. Align all SSU proteins using input order (--inputorder) in fasta and auto detect the alignment algorithm (--auto)

```(bash)
/usr/local/bin/mafft --auto --inputorder allSSU.fasta > ../results/alignments/allSSU_mafft.fasta
```
### **MUSCLE v.5.1.osx64**
1. Install MUSCLE using conda (MUSCLE version 5.1.ox64)
```(bash)
conda install -c bioconda muscle
```
2. Align all SSU proteins using MUSCLE with default parameters for iteration, CPU or cores. It used 8 cores, running 8 threads
```(bash)
muscle -align allSSU.fasta -output ../results/alignments/allSSU_muscle.fasta
```

### **ClustalW v2.1**
1. Install ClustalW (version 2.1) using conda
```(bash)
conda install -c bioconda clustalw
```
2. Align all SSU proteins using ClustalW the options in the following order:\
Choose 1 - Sequence Input From Disc Enter the name of the sequence file: allSSU.fasta\
Choose 2 - Multiple Alignments\
Choose 6 - Multiple Alignment Parameter from "MULTIPLE ALIGNMENT MENU"\
Choose 5 - Protein weight matrix from "MULTIPLE ALIGNMENT PARAMETER MENU"\
Choose 1 - BLOSUM from "PROTEIN WEIGHT MATRIX MENU"\
Choose 9 - Output format options from "MULTIPLE ALIGNMENT MENU"\
Choose F - Turn on FASTA format\
Choose 1 - Turn off Clustal format\
Choose 9 - Change Toogle output order from ALIGNED to INPUT FILE\
Choose 1 - Do complete multiple alignment now Slow/Accurate from "MULTIPLE ALIGNMENT MENU"

```(bash)
clustalw

**************************************************************
******** CLUSTAL 2.1 Multiple Sequence Alignments  ********
**************************************************************


   1. Sequence Input From Disc
   2. Multiple Alignments
   3. Profile / Structure Alignments
   4. Phylogenetic trees

   S. Execute a system command
   H. HELP
   X. EXIT (leave program)


Your choice: 1


Sequences should all be in 1 file.

7 formats accepted: 
NBRF/PIR, EMBL/SwissProt, Pearson (Fasta), GDE, Clustal, GCG/MSF,                  RSF.


Enter the name of the sequence file : allSSU.fasta
Sequence format is Pearson
Sequences assumed to be PROTEIN


Sequence 1: uS2_Alphaproteobacteria_Enhydrobacter_aerosaccus_SK60                          256 aa
Sequence 2: uS2_Alphaproteobacteria_Martelella_alba                                        241 aa
...
...
Sequence 961: uS19_Gammaproteobacteria_Salmonella_enterica                                    92 aa
Sequence 962: uS19_Gammaproteobacteria_Vibrio_alginolyticus                                   92 aa

**************************************************************
******** CLUSTAL 2.1 Multiple Sequence Alignments  ********
**************************************************************


   1. Sequence Input From Disc
   2. Multiple Alignments
   3. Profile / Structure Alignments
   4. Phylogenetic trees

   S. Execute a system command
   H. HELP
   X. EXIT (leave program)


Your choice: 2

****** MULTIPLE ALIGNMENT MENU ******


  1.  Do complete multiple alignment now Slow/Accurate
  2.  Produce guide tree file only
  3.  Do alignment using old guide tree file

  4.  Toggle Slow/Fast pairwise alignments = SLOW

  5.  Pairwise alignment parameters
  6.  Multiple alignment parameters

  7.  Reset gaps before alignment? = OFF
  8.  Toggle screen display          = ON
  9.  Output format options
  I. Iteration = NONE

  S.  Execute a system command
  H.  HELP
  or press [RETURN] to go back to main menu


Your choice: 6
********* MULTIPLE ALIGNMENT PARAMETERS *********


   1. Gap Opening Penalty              :10.00
   2. Gap Extension Penalty            :0.20
   3. Delay divergent sequences        :30 %

   4. DNA Transitions Weight           :0.50

   5. Protein weight matrix            :Gonnet series
   6. DNA weight matrix                :IUB
   7. Use negative matrix              :OFF

   8. Protein Gap Parameters

   H. HELP


Enter number (or [RETURN] to exit): 5
********* PROTEIN WEIGHT MATRIX MENU *********


   1. BLOSUM series
   2. PAM series
   3. Gonnet series
   4. Identity matrix
   5. User defined
   H. HELP

   -- Current matrix is the Gonnet series --
Enter number (or [RETURN] to exit): 1
********* PROTEIN WEIGHT MATRIX MENU *********


   1. BLOSUM series
   2. PAM series
   3. Gonnet series
   4. Identity matrix
   5. User defined
   H. HELP

   -- Current matrix is the BLOSUM series --
****** MULTIPLE ALIGNMENT MENU ******


  1.  Do complete multiple alignment now Slow/Accurate
  2.  Produce guide tree file only
  3.  Do alignment using old guide tree file

  4.  Toggle Slow/Fast pairwise alignments = SLOW

  5.  Pairwise alignment parameters
  6.  Multiple alignment parameters

  7.  Reset gaps before alignment? = OFF
  8.  Toggle screen display          = ON
  9.  Output format options
  I. Iteration = NONE

  S.  Execute a system command
  H.  HELP
  or press [RETURN] to go back to main menu

Your choice: 9
********* Format of Alignment Output *********


   F. Toggle FASTA format output       =  OFF

   1. Toggle CLUSTAL format output     =  ON
   2. Toggle NBRF/PIR format output    =  OFF
   3. Toggle GCG/MSF format output     =  OFF
   4. Toggle PHYLIP format output      =  OFF
   5. Toggle NEXUS format output       =  OFF
   6. Toggle GDE format output         =  OFF

   7. Toggle GDE output case           =  LOWER
   8. Toggle CLUSTALW sequence numbers =  OFF
   9. Toggle output order              =  ALIGNED

   0. Create alignment output file(s) now?

   T. Toggle parameter output          = OFF
   R. Toggle sequence range numbers =  OFF

   H. HELP


Enter number (or [RETURN] to exit): F
********* Format of Alignment Output *********


   F. Toggle FASTA format output       =  ON

   1. Toggle CLUSTAL format output     =  ON
   2. Toggle NBRF/PIR format output    =  OFF
   3. Toggle GCG/MSF format output     =  OFF
   4. Toggle PHYLIP format output      =  OFF
   5. Toggle NEXUS format output       =  OFF
   6. Toggle GDE format output         =  OFF

   7. Toggle GDE output case           =  LOWER
   8. Toggle CLUSTALW sequence numbers =  OFF
   9. Toggle output order              =  ALIGNED

   0. Create alignment output file(s) now?

   T. Toggle parameter output          = OFF
   R. Toggle sequence range numbers =  OFF

   H. HELP


Enter number (or [RETURN] to exit): 1



********* Format of Alignment Output *********


   F. Toggle FASTA format output       =  ON

   1. Toggle CLUSTAL format output     =  OFF
   2. Toggle NBRF/PIR format output    =  OFF
   3. Toggle GCG/MSF format output     =  OFF
   4. Toggle PHYLIP format output      =  OFF
   5. Toggle NEXUS format output       =  OFF
   6. Toggle GDE format output         =  OFF

   7. Toggle GDE output case           =  LOWER
   8. Toggle CLUSTALW sequence numbers =  OFF
   9. Toggle output order              =  ALIGNED

   0. Create alignment output file(s) now?

   T. Toggle parameter output          = OFF
   R. Toggle sequence range numbers =  OFF

   H. HELP

Enter number (or [RETURN] to exit): 9



********* Format of Alignment Output *********


   F. Toggle FASTA format output       =  ON

   1. Toggle CLUSTAL format output     =  OFF
   2. Toggle NBRF/PIR format output    =  OFF
   3. Toggle GCG/MSF format output     =  OFF
   4. Toggle PHYLIP format output      =  OFF
   5. Toggle NEXUS format output       =  OFF
   6. Toggle GDE format output         =  OFF

   7. Toggle GDE output case           =  LOWER
   8. Toggle CLUSTALW sequence numbers =  OFF
   9. Toggle output order              =  INPUT FILE

   0. Create alignment output file(s) now?

   T. Toggle parameter output          = OFF
   R. Toggle sequence range numbers =  OFF

   H. HELP


Enter number (or [RETURN] to exit): 

****** MULTIPLE ALIGNMENT MENU ******


  1.  Do complete multiple alignment now Slow/Accurate
  2.  Produce guide tree file only
  3.  Do alignment using old guide tree file

  4.  Toggle Slow/Fast pairwise alignments = SLOW

  5.  Pairwise alignment parameters
  6.  Multiple alignment parameters

  7.  Reset gaps before alignment? = OFF
  8.  Toggle screen display          = ON
  9.  Output format options
  I. Iteration = NONE

  S.  Execute a system command
  H.  HELP
  or press [RETURN] to go back to main menu

Your choice: 1

Enter new name to avoid overwriting  [allSSU.fasta]: allSSU_clustalw.fasta
Start of Pairwise alignments
Aligning...

Sequences (1:2) Aligned. Score:  63
Sequences (1:3) Aligned. Score:  62
...
...
Group 959:                     Delayed
Group 960:                     Delayed
Group 961:                     Delayed
Alignment Score -9149012

Consensus length = 131619 
firstres = 1 lastres = 131619
FASTA file created!

Fasta-Alignment file created    [allSSU_clustalw.fasta]
```

## **Phylogeny Reconstruction**
The phylogeny reconstructions were performed on CHTC.

1. Move alignment files to CHTC home directory
``` (bash)
scp ~/results/alignments/allSSU_mafft.fasta fer@submit1.chtc.wisc.edu:/home/fer/
scp ~/results/alignments/allSSU_muscle.fasta fer@submit1.chtc.wisc.edu:/home/fer/
scp ~/results/alignments/allSSU_clustalw.fasta fer@submit1.chtc.wisc.edu:/home/fer/
```

### **IQTREE v1.6.12**
1. Prepare IQTREE execution script for MAFFT aligned SSU sequences: allSSU_mafft_iqtree.sh

```(bash)
#!/bin/bash
# allSSU_mafft_iqtree.sh
# IQ-TREE phylogeny reconstruction - SSU
#
# Run IQ-TREE phylogeny construction. Specify path to iqtree executable from staging directory on compute node.
# -s <filename>: alignment filename
# -st AA: specify the data is amino acid
# -msub : specify only running model selection
# -nt: optimize number of threads
# -m MFP: perform Model Finder Plus to find model and continue to use that model
# -msub nuclear: restrict to nuclear models
# -mrate G: restrict to gamma rate models
# -merit AIC: select best model based on Aikake Information Criterion
# -alrt 1000: calculate likelihood ratio test for 1000 times 
# -bb 1000: calculate UFBoot scores for 1000 times
# -bbni: reduce bias of the model selection

./iqtree/build/iqtree -s allSSU_mafft.fasta -m MFP -msub nuclear -wsr -st AA -alrt 1000 -bb 1000 -bnni -nt 12 

#
# keep this job running for a few minutes so you'll see it in the queue:
#sleep 180
```
2. Prepare IQTREE job script for MAFFT aligned SSU sequences: allSSU_mafft_iqtree.sub

```(bash)
# allSSU_mafft_iqtree.sub
# Submission file for IQ-TREE phylogeny reconstruction for SSU job
#
# Specify the HTCondor Universe (vanilla is the default and is used
#  for almost all jobs) and your desired name of the HTCondor log file,
#  which is where HTCondor will describe what steps it takes to run 
#  your job. Wherever you see $(Cluster), HTCondor will insert the 
#  queue number assigned to this set of jobs at the time of submission.
universe = vanilla
log = $(SUBMIT_FILE)_$(Cluster).log
#
# Specify your executable (single binary or a script that runs several
#  commands), arguments, and a files for HTCondor to store standard
#  output (or "screen output").
#  $(Process) will be a integer number for each job, starting with "0"
#  and increasing for the relevant number of jobs.
executable = allSSU_mafft_iqtree.sh
# arguments = 
output = $(SUBMIT_FILE)_$(Cluster).out
error = $(SUBMIT_FILE)_$(Cluster).err
#
# Specify that HTCondor should transfer files to and from the
#  computer where each job runs. The last of these lines should be
#  used if there are any other files needed for the executable to use.
should_transfer_files = YES
when_to_transfer_output = ON_EXIT
transfer_input_files = allSSU_mafft.fasta, /home/fer/iqtree
#
# Tell HTCondor what amount of compute resources
#  each job will need on the computer where it runs.
request_cpus = 12
request_memory = 50GB
request_disk = 50GB
#
# Run one instance of job
queue
```

3. Prepare IQTREE execution script for ClustalW and MUSCLE aligned SSU sequences by changing the execution command of IQTREE: allSSU_clustalw_iqtree.sh, allSSU_muscle_iqtree.sh

```(bash)
./iqtree/build/iqtree -s allSSU_clustalw.fasta -m MFP -msub nuclear -wsr -st AA -alrt 1000 -bb 1000 -bnni -nt 12 

./iqtree/build/iqtree -s allSSU_muscle.fasta -m MFP -msub nuclear -wsr -st AA -alrt 1000 -bb 1000 -bnni -nt 12 
```

4. Prepare IQTREE job script for ClustalW and MUSCLE aligned SSU sequences by changing the names in the "executable" and "transfer_input_files" lines: allSSU_clustalw_iqtree.sub, allSSU_muscle_iqtree.sub

```(bash)
executable = allSSU_clustalw_iqtree.sh
transfer_input_files = allSSU_clustalw.fasta, /home/fer/

executable = allSSU_muscle_iqtree.sh
transfer_input_files = allSSU_muscle.fasta, /home/fer/
```

5. Run the IQTREE jobs on CHTC
```(bash)
condor_submit allSSU_mafft_iqtree.sub
condor_submit allSSU_clustalw_iqtree.sub
condor_submit allSSU_muscle_iqtree.sub
```

6. Transfer all the output files from CHTC to local

```(bash)
scp fer@submit1.chtc.wisc.edu:/home/fer/allSSU_mafft.fasta.* ./results/phylogeny/
scp fer@submit1.chtc.wisc.edu:/home/fer/allSSU_clustalw.fasta.* ./results/phylogeny/
scp fer@submit1.chtc.wisc.edu:/home/fer/allSSU_muscle.fasta.* ./results/phylogeny/
```
7. The output tree file is unrooted. To root the tree, I used minimum acnestor deviation (MAD) (version 2.2) software since there is not outgroup in the dataset. Downloaded MAD software from https://www.mikrobio.uni-kiel.de/de/ag-dagan/ressourcen and unzipped.

```(bash)
unzip mad2.2.zip 
Run MAD with IQTREE -.treefile. It will give an output like -.treefile.rooted 
./mad.py ~/results/phylogeny/allSSU_mafft.fasta.treefile
./mad.py ~/results/phylogeny/allSSU_clustalw.fasta.treefile
./mad.py ~/results/phylogeny/allSSU_muscle.fasta.treefile
```

8. Visualize the rooted treefiles using FigTree software. Order node under "Trees" option. Collapse branches based on ribosomal protein name and annotate the collapsed groups.

### **FastTree**
1. Install FastTree (v2.1.11) using conda
```(bash)
conda install -c bioconda fasttree
```

2. Run FastTree for allSSU alignments (aligned by ClustalW, MAFFT and MUSCLE).\
- For ClustalW and MAFFT alignments -lg option was used. -lg option indicates Le-Gascuel 2008 model (amino acid alignments only). I used -lg because IQTREE ModelFinder found the best models as LG+G4 and LG+R8 for each alignments respectively.\
- For MUSCLE, I used -wag because IQTREE ModelFinder found the best models as WAG+R7 for MUSCLE alignment. 
```(bash)
FastTree -lg  allSSU_clustalw.fasta > ../phylogeny/allSSU_clustalw_fasttree.treefile
FastTree -lg  allSSU_mafft.fasta > ../phylogeny/allSSU_mafft_fasttree.treefile
FastTree -wag  allSSU_muscle.fasta > ../phylogeny/allSSU_muscle_fasttree.treefile
```
3. The unrooted trees were rooted using minimal ancestor deviation (MAD) method since there is not outgroup in the dataset.
```(bash)
./mad.py ../..botany563/results/phylogeny/allSSU_clustalw_fasttree.treefile
./mad.py ../..botany563/results/phylogeny/allSSU_mafft_fasttree.treefile
./mad.py ../..botany563/results/phylogeny/allSSU_muscle_fasttree.treefile
```
4. The trees were visualized in FigTree.

## **Species Tree**

1. The common species in all small subunit (SSU) protein sequence datasets were found in Geneious. In total 38 species remained. 

2. The remained species in each SSU protein were extracted from Geneoius and aligned using MAFFT v7.490.

```(bash)
/usr/local/bin/mafft --auto --inputorder uS2_common.fasta > ../results/alignments/uS2_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS3_common.fasta > ../results/alignments/uS3_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS4_common.fasta > ../results/alignments/uS4_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS5_common.fasta > ../results/alignments/uS5_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS7_common.fasta > ../results/alignments/uS7_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS8_common.fasta > ../results/alignments/uS8_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS9_common.fasta > ../results/alignments/uS9_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS10_common.fasta > ../results/alignments/uS10_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS11_common.fasta > ../results/alignments/uS11_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS12_common.fasta > ../results/alignments/uS12_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS13_common.fasta > ../results/alignments/uS13_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS14_common.fasta > ../results/alignments/uS14_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS15_common.fasta > ../results/alignments/uS15_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS17_common.fasta > ../results/alignments/uS17_common_mafft.fasta
/usr/local/bin/mafft --auto --inputorder uS19_common.fasta > ../results/alignments/uS19_common_mafft.fasta
```

### **By Concatenation**
1. All alignments of individual SSU were imported to Geneoius. Here, the alignments are concatenated next to each other based on species names. The output file exracted from Geneious as "~/results/alignments/allSSU_concatenated.fasta"


2. The alignment file was transferred to CHTC. 
```(bash)
scp allSSU_concatenated.fasta fer@submit1.chtc.wisc.edu:/home/fer/
```

3. The species tree using concatenated alignments was reconstructred with IQTREE v1.6.12 using execution (allSSU_concatenated_iqtree.sh) and job submission files (allSSU_concatenated_iqtree.sub). 

```(bash)
# -s <filename>: alignment filename
# -st AA: specify the data is amino acid
# -msub : specify only running model selection
# -nt: optimize number of threads
# -m MFP: perform Model Finder Plus to find model and continue to use that model
# -alrt 1000: calculate likelihood ratio test for 1000 times 
# -bb 1000: calculate UFBoot scores for 1000 times
# -bbni: reduce bias of the model selection
 
./iqtree/build/iqtree -s allSSU_concatenated.fasta -m MFP -msub nuclear -wsr -st AA -alrt 1000 -bb 1000 -bnni -nt 12 
```

4. Trasfer output treefile from CHTC to local computer.
```(bash) 
scp fer@submit1.chtc.wisc.edu:/home/fer/allSSU_concatenated.fasta.treefile ./results/phylogeny/
```

5. The treefile is unrooted. To root the tree minimal ancestor deviation tool was used. 
```(bash)
./mad.py ~/results/phylogeny/allSSU_concatenated.fasta.treefile
```

6. Open both rooted and unrooted tree in FigTree. By looking at the rooted tree determine the branch in unrooted tree and manually root it. I did this because I wanted to show branch support values which are saved in the unrooted treefile and lost in rooted treefile. 
Checked the box for branch labels and select 'labels' for branch description. The branch support values (SH-aLRT and UFBoot) are shown on each branched. Save the image of the tree.

### **By Coalescence**
1. All alignments of individual SSU were transferred to CHTC.
```(bash)
scp uS2_common_mafft.fasta fer@submit1.chtc.wisc.edu:/home/fer/
...
scp uS19_common_mafft.fasta fer@submit1.chtc.wisc.edu:/home/fer/
```

2. For each SSU protein a maximum likelihood tree constructed.

```(bash)
# -s <filename>: alignment filename
# -st AA: specify the data is amino acid
# -msub : specify only running model selection
# -nt: optimize number of threads
# -m MFP: perform Model Finder Plus to find model and continue to use that model
# -alrt 1000: calculate likelihood ratio test for 1000 times 
# -bb 1000: calculate UFBoot scores for 1000 times
# -bbni: reduce bias of the model selection
 
./iqtree/build/iqtree -s uS2_common_mafft.fasta -m MFP -msub nuclear -wsr -st AA -alrt 1000 -bb 1000 -bnni -nt 12 
...
./iqtree/build/iqtree -s uS19_common_mafft.fasta -m MFP -msub nuclear -wsr -st AA -alrt 1000 -bb 1000 -bnni -nt 12 
```

3. Trasfer output treefile from CHTC to local computer.
```(bash) 
scp fer@submit1.chtc.wisc.edu:/home/fer/uS2_common_mafft.fasta.treefile ./results/phylogeny/
...
scp fer@submit1.chtc.wisc.edu:/home/fer/uS19_common_mafft.fasta.treefile ./results/phylogeny/
```

4. Concatenate treefiles.
```(bash)
cat uS2_common_mafft.fasta.treefile uS3_common_mafft.fasta.treefile ...uS19_common_mafft.fasta.treefile > allSSU_input.tre
```

5. Download ASTRAL v5.7.1 from https://github.com/smirarab/ASTRAL/releases/tag/v5.7.1 to local computer. 

6. Untar ASTRAL folder and unzip Astral.5.7.1.zip inside the folder.
```(bash)
tar –cvzf ASTRAL-5.7.1.tar.gz
unzip Astral.5.7.1.zip
```

7. Go under the Astral folder and run the following command to reconstruct species tree by coalescence method.
```(bash)
cd Astral
java -jar astral.5.7.1.jar -i ~/results/phylogeny/allSSU_input.tre -o ~/results/phylogeny/allSSU_output.tre
```

8. Visualize species tree in FigTree.

## GitHub help

1. Clone your repository
```
git clone https://github.com/evrimfer/botany563.git
```
2. Add all the files in the folder to transfer
```
git add .
```
3. Write commit message
```
git commit -m “meaningful comment”
```
4. Push the added files to github
```
git push
```
5. Check the status of added/deleted/modified files
```
git status
```
6. If you add “.gitignore after git add . “ Command do this
```
git rm -r --cached . 
```
