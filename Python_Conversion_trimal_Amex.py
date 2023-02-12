#!/usr/bin/python

import os
import random
import pandas 
import numpy as np
from Bio import SeqIO



#Import gblock results

gblock_file = pandas.read_csv("Trimal_block_for_every_genes.txt", sep="\t",header=None, dtype=str) #fichier avec les sequences
gblock_file.columns = ['gene','gblock_min','gblock_max']

#Import the list of fasta sequences
records = SeqIO.parse("Amex_sequences_aligned.fa", "fasta")
count = SeqIO.write(records, "A_mex_pept.tab", "tab")
print("Converted %i records" % count)

fasta_file = pandas.read_csv("A_mex_pept.tab", sep="\t",header=None, dtype=str)
fasta_file.columns = ['gene', 'sequence']

## Create a new column in indel_file with new flanks coordinates ##
#care gblock begin at 1 while python begin at 0


conserved_coord_min = []
conserved_coord_max = []

for row in gblock_file.itertuples():
    gene=row[1]
    gblock_min=int(row[2])
    gblock_max=int(row[3])
    
    gblock_min_py=gblock_min-1
    gblock_max_py=gblock_max-1
    
    sequence=fasta_file.loc[fasta_file["gene"] == gene, 'sequence'].iloc[0]
    
    part_seq_min=sequence[0:gblock_min_py]
    part_seq_max=sequence[0:gblock_max_py]
    
    counter_min = part_seq_min.count('-')
    counter_max = part_seq_max.count('-') 
    
    conserved_coord_min.append(gblock_min-counter_min)
    conserved_coord_max.append(gblock_max-counter_max)
    
gblock_file["conserved_coord_min"] = conserved_coord_min
gblock_file["conserved_coord_max"] = conserved_coord_max

gblock_file.to_csv('Conserved_domains_Amex_trimal.csv', sep='\t', index=False)

