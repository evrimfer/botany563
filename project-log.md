BOTANY 563 - PROJECT
Phylogeny of Universal Small Ribosomal Proteins (uSSU-RP)
by evrim fer
Data Collection
Universal ribosomal small subunit protein sequences were found from UniProt
uS2: P0A7V0
uS3: P0A7V3
uS4: P0A7V8
uS5: P0A7W1
uS7: P02359
uS8: P0A7W7
uS9: P0A7X3
uS10: P0A7R5
uS11: P0A7R9
uS12: P0A7S3
uS13: P0A7S9
uS14: P0AG59
uS15: P0ADZ4
uS17: P0AG63
uS19: P0A7U3

Using these accession numbers, homohomologous protein sequences were searched in BLASTp (web-service), non-redundant (nr) sequence database. With default paremeters (evalue threshold=0.05, BLOSUM62 matrix)

First, the homologous proteins of uS2 (ribosomal small subunit S2 protein) searhed in BLASTp for different bacterial phyla, archaea and eukaryote;
Alphaproteobacteria, Betaproteobacteria, Deltaproteobacteria, Epsilonproteobacteria, Gammaproteobacteria, Cyanobacteria, Deinococcus-Thermus, Firmicutes, Archaea, Eukaryote. The target phyla groups were specifically defined in BLASTp "Organism" section.

The found uS2 sequences were imported to Geneious (version 2022.1.1) software.

For each phyla, at least two sequences were kept. Very long and very short or partial sequences were removed.

To have a consistent data (i.e. different proteins from same organisms),the remaining species/organisms were specifically searched for other small ribosomal proteins (uS3 to uS19) in BLAST by defining the species in "Organism" section.

The found sequences were added to Geneious. However, not all small subunit proteins were able to be found for all species (i.e. missing data for some proteins)

At the end, 962 small subunit protein sequences were collected in total.

uS2: 69
uS3: 66
uS4: 65
uS5: 67
uS7: 65
uS8: 65
uS9: 63
uS10: 65
uS11: 66
uS12: 66
uS13: 64
uS14: 61
uS15: 53
uS17: 63
uS19:64

The 962 small subunit sequences were exported from Genious
~/data/allSSU.fasta
~/data/uS2/all_uS2.fasta
~/data/uS3/all_uS3.fasta
~/data/uS4/all_uS4.fasta
~/data/uS5/all_uS5.fasta
~/data/uS7/all_uS7.fasta
~/data/uS8/all_uS8.fasta
~/data/uS9/all_uS9.fasta
~/data/uS10/all_uS10.fasta
~/data/uS11/all_uS11.fasta
~/data/uS12/all_uS12.fasta
~/data/uS13/all_uS13.fasta
~/data/uS14/all_uS14.fasta
~/data/uS15/all_uS15.fasta
~/data/uS17/all_uS17.fasta
~/data/uS19/all_uS19.fasta

Alignment
The alignment steps were performed on local computer (MacOS Monterey version 12.3.1)

MAFFT v7.490
Install MAFFT using conda
conda install -c bioconda mafft
Align all SSU proteins using input order (--inputorder) in fasta and auto detect the alignment algorithm (--auto)
/usr/local/bin/mafft --auto --inputorder allSSU.fasta > ../results/alignments/allSSU_mafft.fasta
MUSCLE v.5.1.osx64
Install MUSCLE using conda (MUSCLE version 5.1.ox64)
conda install -c bioconda muscle
Align all SSU proteins using MUSCLE with default parameters for iteration, CPU or cores. It used 8 cores, running 8 threads
muscle -align allSSU.fasta -output ../results/alignments/allSSU_muscle.fasta
ClustalW v2.1
Install ClustalW (version 2.1) using conda
conda install -c bioconda clustalw
Align all SSU proteins using ClustalW the options in the following order: Choose 1 - Sequence Input From Disc Enter the nam of the sequence file: allSSU.fasta Choose 2 - Multiple Alignments Choose 6 - Multiple Alignment Parameter from "MULTIPLE ALIGNMENT MENU" Choose 5 - Protein weight matrix from "MULTIPLE ALIGNMENT PARAMETER MENU" Choose 1 - BLOSUM from "PROTEIN WEIGHT MATRIX MENU" Choose 9 - Output format options from "MULTIPLE ALIGNMENT MENU" Choose F - Turn on FASTA format Choose 1 - Turn off Clustal format Choose 9 - Change Toogle output order from ALIGNED to INPUT FILE Choose 1 - Do complete multiple alignment now Slow/Accurate from "MULTIPLE ALIGNMENT MENU"
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

Phylogeny Reconstruction
The phylogeny reconstructions were performed on CHTC.

Move alignment files to CHTC home directory
scp ~/results/alignments/allSSU_mafft.fasta fer@submit1.chtc.wisc.edu:/home/fer/
scp ~/results/alignments/allSSU_muscle.fasta fer@submit1.chtc.wisc.edu:/home/fer/
scp ~/results/alignments/allSSU_clustalw.fasta fer@submit1.chtc.wisc.edu:/home/fer/
**IQTREE v1.6.12 **
Prepare IQTREE execution script for MAFFT aligned SSU sequences: allSSU_mafft_iqtree.sh
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
Prepare IQTREE job script for MAFFT aligned SSU sequences: allSSU_mafft_iqtree.sub
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
Prepare IQTREE execution script for ClustalW and MUSCLE aligned SSU sequences by changing the execution command of IQTREE: allSSU_clustalw_iqtree.sh, allSSU_muscle_iqtree.sh
./iqtree/build/iqtree -s allSSU_clustalw.fasta -m MFP -msub nuclear -wsr -st AA -alrt 1000 -bb 1000 -bnni -nt 12 

./iqtree/build/iqtree -s allSSU_muscle.fasta -m MFP -msub nuclear -wsr -st AA -alrt 1000 -bb 1000 -bnni -nt 12 
Prepare IQTREE job script for ClustalW and MUSCLE aligned SSU sequences by changing the names in the "executable" and "transfer_input_files" lines: allSSU_clustalw_iqtree.sub, allSSU_muscle_iqtree.sub
executable = allSSU_clustalw_iqtree.sh
transfer_input_files = allSSU_clustalw.fasta, /home/fer/

executable = allSSU_muscle_iqtree.sh
transfer_input_files = allSSU_muscle.fasta, /home/fer/
Run the IQTREE jobs on CHTC
condor_submit allSSU_mafft_iqtree.sub
condor_submit allSSU_clustalw_iqtree.sub
condor_submit allSSU_muscle_iqtree.sub
Transfer all the output files from CHTC to local
scp fer@submit1.chtc.wisc.edu:/home/fer/allSSU_mafft.fasta.* ~/results/phylogeny/allSSU_IQTREE/
scp fer@submit1.chtc.wisc.edu:/home/fer/allSSU_clustalw.fasta.* ~/results/phylogeny/allSSU_IQTREE/
scp fer@submit1.chtc.wisc.edu:/home/fer/allSSU_muscle.fasta.* ~/results/phylogeny/allSSU_IQTREE/
The output tree file is unrooted. To root the tree, I used minimum acnestor deviation (MAD) (version 2.2) software. Downloaded MAD software from https://www.mikrobio.uni-kiel.de/de/ag-dagan/ressourcen and unzipped.
unzip mad2.2.zip 
Run MAD with IQTREE -.treefile. It will give an output like -.treefile.rooted
./mad.py ~/results/phylogeny/allSSU_IQTREE/allSSU_mafft.fasta.treefile
./mad.py ~/results/phylogeny/allSSU_IQTREE/allSSU_clustalw.fasta.treefile
./mad.py ~/results/phylogeny/allSSU_IQTREE/allSSU_muscle.fasta.treefile
Visualize the rooted treefiles using FigTree software. Order node under "Trees" option. Collapse branches based on ribosomal protein name and annotate the collapsed groups.
All SSU - MAFFT Aligned - IQTREE



MrBayes v.3.2.7a
Install MrBayes from GitHub
git clone --depth=1 --branch=develop https://github.com/NBISweden/MrBayes.git
cd MrBayes
./configure --enable-doc=no   
make -j2

#to run
cd src
./mb
Since the MrBayes needs input file in NEXUS format, I exported the clustalw, mafft and muscle FASTA alignments in NEXUS format using Geneious. The exported alignment files in NEXUS format were saved under MrBayes/src folder to run the program.

The extraction added quotes at the beginning of some species names. The quotes were found and eplace with no-space.

Run MrBayes for clustalw

cd MrBayes/src
./mb

                            MrBayes 3.2.7a arm

                    (Bayesian Analysis of Phylogeny)

            Distributed under the GNU General Public License


             Type "help" or "help <command>" for information
                   on the commands that are available.

                 Type "about" for authorship and general
                     information about the program.

MrBayes > lset nst=6 rates=invgamma

 Nst =1 unchanged because dataType is not DNA or RNA
 Setting Rates to Invgamma
 Successfully set likelihood model parameters

MrBayes > execute allSSU_clustalw.nex

 Executing file "allSSU_clustalw.nex"
 UNIX line termination
 Longest line length = 139
 Parsing file
 Expecting NEXUS formatted file
 Reading taxa block
    Allocated taxon set
    Defining new set of 962 taxa
 Exiting taxa block
 Reading characters block
    Allocated matrix
    Defining new character matrix with 131619 characters
    Data is Protein
    Missing data coded as ?
    Gaps coded as -
    Data matrix is interleaved
    Taxon   1 -> uS2_Alphaproteobacteria_Enhydrobacter_aerosaccus_SK60

    ...
    ...

    Taxon 960 -> uS19_Gammaproteobacteria_Escherichia_coli
    Taxon 961 -> uS19_Gammaproteobacteria_Salmonella_enterica
    Taxon 962 -> uS19_Gammaproteobacteria_Vibrio_alginolyticus Successfully read matrix
    Setting default partition (does not divide up characters)
    Setting model defaults
    Seed (for generating default start values) = 2086384576




*Coalescence