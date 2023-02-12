#!/usr/bin/python

import os
import random
import pandas as pd
import numpy as np
from Bio import SeqIO
import itertools
import sys




def ranges(i):
    for a, b in itertools.groupby(enumerate(i), lambda pair: pair[1] - pair[0]):
        b = list(b)
        yield b[0][1], b[-1][1]


#Import trimal results

variable_file = sys.argv[1]

trimal_file = pd.read_csv(variable_file, sep="\t",header=None, dtype=str) 
trimal_file.columns = ['gene','columns_conserved']


for row in trimal_file.itertuples():
    gene=row[1]
    trimal_columns_kept=row[2]
    trimal_columns_kept_list = list(map(int, trimal_columns_kept.split(",")))
    
    trimal_columns_range = list(ranges(trimal_columns_kept_list))
    gene_list = [gene] * len(trimal_columns_range)
    
    
    df = pd.DataFrame(list(zip(gene_list, trimal_columns_range)),
               columns =['Gene', 'gblock'])
    

print(gene)
df.to_csv(gene+".converted.tsv", sep='\t', header=None, index=None)

