# non-functional-alleles-Astyanax-mexicanus

ReadMapping_VariantCalling.sh : 


Bash script to download all astyanax mexicanus reads, map them to the surface reference genome, perform the variant calling and the annotation of variants with Ensembl VEP.

GeneAnnotation_Comparison_Ensembl.sh:

Bash script to compare Astyanax mexicanus gene annotations with 10 other species. Resulting files can be found on this github repo (Transcript_protlen.tsv, Conserved_domains_Amex_trimal.csv). Some scripts called in GeneAnnotation_Comparison_Ensembl.sh can also be found here (Python_Conversion_trimal_Amex.py, Trimal_To_Gblock.py, rename_fasta.pl)


Astyanax_Pseudogene_analysis.R:

This Rscript need results files generated with ReadMapping_VariantCalling.sh and GeneAnnotation_Comparison_Ensembl.sh. 
This annotated Rscript allows to perform all the analysis presented in the manuscript. 
