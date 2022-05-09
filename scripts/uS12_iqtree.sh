#!/bin/bash
# uS12_iqtree.sh
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
 
./iqtree/build/iqtree -s uS12_common_mafft.fasta -m MFP -msub nuclear -wsr -st AA -alrt 1000 -bb 1000 -bnni -nt 12 

#
# keep this job running for a few minutes so you'll see it in the queue:
#sleep 180
