#### Libraries  ---------------------------------

library(data.table)
library(dplyr)
library(tidyverse)
library(purrr)
library(ggplot2)
library(ggpubr)
library(gtools)
library(forcats)
library(ape)
library(phytools)
library(seqinr)
library(naniar)
library(rlang)

#### Datas  ---------------------------------
rm(list = ls())

set.seed(2712)
setwd("~/pop_gen_analysis_astyanax")


#Import canonical transcript length table
transcripts_lengths <- read.table("Transcript_protlen.tsv", sep="\t", header=FALSE)
colnames(transcripts_lengths) <- c("transcript_ID", "protein_length")
list_transcripts <- transcripts_lengths$transcript_ID

#Import protein conservation infos
prot_conservation_table <- read.table("Conserved_domains_Amex_trimal.csv", sep="\t", header=TRUE)
colnames(prot_conservation_table) <- c("transcript_ID", "gblock_min", "gblock_max", "conserved_coord_min", "conserved_coord_max")

#Import VCF file containing stop codon, start loss, stop loss and frameshift variants
lof_vcf <- read.table("stopgained_frameshift_startloss_stoploss_gen.tsv", sep="\t", header=FALSE)

colnames(lof_vcf) <- c("scaffold", "pos", "ref", "alt", "cons", "gene_name", "gene_ID", 
                       "transcript_ID", "type", "exon", "intron","cdna_pos", "cds_pos", "prot_pos",
                       "aa_change", "codon_change","strand", "canonical", "protein_ID", "empty", 
                       "Aaeneus","Chica_1","Chica_10","Chica_11","Chica_12","Chica_13","Chica_14",
                       "Chica_15","Chica_16","Chica_17","Chica_18","Chica_19","Chica_2","Chica_3",
                       "Chica_4","Chica_5","Chica_6","Chica_7","Chica_8","Chica_9","Choy_01","Choy_05",
                       "Choy_06","Choy_09","Choy_10","Choy_11","Choy_12","Choy_13","Choy_14","Gternetzi",
                       "Molino_10b","Molino_11a","Molino_12a","Molino_13b","Molino_14a","Molino_15b",
                       "Molino_2a","Molino_7a","Molino_9b","Pach_11","Pach_12","Pach_14","Pach_15",
                       "Pach_17","Pach_3","Pach_7","Pach_8","Pach_9","Rascon_02","Rascon_04",
                       "Rascon_13","Rascon_15","Rascon_6","Rascon_8","Tinaja_11","Tinaja_12",
                       "Tinaja_2","Tinaja_3","Tinaja_5","Tinaja_6","Tinaja_B","Tinaja_C","Tinaja_D",
                       "Tinaja_E")



#Import VCF file containing Splice mutations
lof_splice_vcf <- read.table("splicesite_mutations_gen.tsv", sep="\t", header=FALSE)

colnames(lof_splice_vcf) <- c("scaffold", "pos", "ref", "alt", "cons", "gene_name", "gene_ID", 
                              "transcript_ID", "type", "exon", "intron","cdna_pos", "cds_pos", "prot_pos",
                              "aa_change", "codon_change","strand", "canonical", "protein_ID", "empty", 
                              "Aaeneus","Chica_1","Chica_10","Chica_11","Chica_12","Chica_13","Chica_14",
                              "Chica_15","Chica_16","Chica_17","Chica_18","Chica_19","Chica_2","Chica_3",
                              "Chica_4","Chica_5","Chica_6","Chica_7","Chica_8","Chica_9","Choy_01","Choy_05",
                              "Choy_06","Choy_09","Choy_10","Choy_11","Choy_12","Choy_13","Choy_14","Gternetzi",
                              "Molino_10b","Molino_11a","Molino_12a","Molino_13b","Molino_14a","Molino_15b",
                              "Molino_2a","Molino_7a","Molino_9b","Pach_11","Pach_12","Pach_14","Pach_15",
                              "Pach_17","Pach_3","Pach_7","Pach_8","Pach_9","Rascon_02","Rascon_04",
                              "Rascon_13","Rascon_15","Rascon_6","Rascon_8","Tinaja_11","Tinaja_12",
                              "Tinaja_2","Tinaja_3","Tinaja_5","Tinaja_6","Tinaja_B","Tinaja_C","Tinaja_D",
                              "Tinaja_E")


#rename cons

lof_vcf <- 
  lof_vcf %>% 
  mutate(consequence = case_when(
    cons == "frameshift_variant" ~ "frameshift_variant",
    cons == "frameshift_variant&start_lost" ~ "frameshift_variant",
    cons == "frameshift_variant&stop_lost" ~ "frameshift_variant",
    cons == "start_lost&5_prime_UTR_variant" ~ "start_lost",
    cons == "start_lost&inframe_deletion" ~ "start_lost",
    cons == "stop_gained&frameshift_variant" ~ "frameshift_variant",
    cons == "stop_gained" ~ "stop_gained",
    cons == "stop_gained&inframe_deletion" ~ "stop_gained",
    cons == "stop_gained&inframe_insertion" ~ "stop_gained",
    cons == "stop_gained&protein_altering_variant" ~ "stop_gained",
    cons == "stop_gained&start_lost" ~ "stop_gained",
    cons == "stop_lost&3_prime_UTR_variant" ~ "stop_lost",
    cons == "stop_lost&inframe_deletion" ~ "stop_lost",
    cons == "start_lost" ~ "start_lost",
    cons == "stop_lost" ~ "stop_lost",
    cons == "start_lost&synonymous_variant" ~ "start_lost",
    cons == "stop_gained&frameshift_variant&start_lost" ~ "stop_gained"
  ))
lof_vcf <- lof_vcf %>% distinct()


lof_splice_vcf <- 
  lof_splice_vcf %>%
  mutate(consequence = case_when(
    cons == "splice_acceptor_variant&coding_sequence_variant" ~ "splice_acceptor",
    cons == "splice_acceptor_variant&coding_sequence_variant&3_prime_UTR_variant&intron_variant" ~ "splice_acceptor",
    cons == "splice_acceptor_variant&coding_sequence_variant&intron_variant" ~ "splice_acceptor",
    cons == "splice_donor_variant&coding_sequence_variant" ~ "splice_donor",
    cons == "splice_donor_variant&coding_sequence_variant&3_prime_UTR_variant&intron_variant" ~ "splice_donor",
    cons == "splice_donor_variant&coding_sequence_variant&5_prime_UTR_variant&intron_variant" ~ "splice_donor",
    cons == "splice_donor_variant&coding_sequence_variant&intron_variant" ~ "splice_donor",
    cons == "splice_donor_variant&splice_acceptor_variant&coding_sequence_variant&3_prime_UTR_variant&intron_variant" ~ "splice_donor",
    cons == "splice_donor_variant&splice_acceptor_variant&coding_sequence_variant&5_prime_UTR_variant&intron_variant" ~ "splice_donor",
    cons == "splice_donor_variant&splice_acceptor_variant&coding_sequence_variant&intron_variant" ~ "splice_donor",
    cons == "splice_donor_variant&splice_acceptor_variant&frameshift_variant&stop_lost&intron_variant" ~ "splice_donor"
  ))

lof_splice_vcf <- lof_splice_vcf %>% distinct()


#Merge the two VCF files

lof_vcf <- rbind(lof_vcf, lof_splice_vcf)

#keep only variants in canonical transcripts defined by AGAT
lof_vcf <- lof_vcf %>% filter(transcript_ID %in% list_transcripts) 

#reformat table
lof_vcf <- lof_vcf %>% dplyr::select(! empty)
lof_vcf <- lof_vcf %>% replace_with_na_all(condition = ~.x == "./.")
lof_vcf <- as.data.frame(lof_vcf)


cols.num <- c("Aaeneus","Chica_1","Chica_10","Chica_11","Chica_12","Chica_13","Chica_14",
              "Chica_15","Chica_16","Chica_17","Chica_18","Chica_19","Chica_2","Chica_3",
              "Chica_4","Chica_5","Chica_6","Chica_7","Chica_8","Chica_9","Choy_01","Choy_05",
              "Choy_06","Choy_09","Choy_10","Choy_11","Choy_12","Choy_13","Choy_14","Gternetzi",
              "Molino_10b","Molino_11a","Molino_12a","Molino_13b","Molino_14a","Molino_15b",
              "Molino_2a","Molino_7a","Molino_9b","Pach_11","Pach_12","Pach_14","Pach_15",
              "Pach_17","Pach_3","Pach_7","Pach_8","Pach_9","Rascon_02","Rascon_04",
              "Rascon_13","Rascon_15","Rascon_6","Rascon_8","Tinaja_11","Tinaja_12",
              "Tinaja_2","Tinaja_3","Tinaja_5","Tinaja_6","Tinaja_B","Tinaja_C","Tinaja_D",
              "Tinaja_E", "prot_pos")
lof_vcf[cols.num] <- sapply(lof_vcf[cols.num],as.numeric)

#### Filter VCF based on allele frequencies  ---------------------------------

#First remove non bi-allelic positions in A.mex

temp <- 
  as.data.frame(
    lof_vcf %>% 
      mutate(nb_allele_amex = 
               sum(Chica_1, Chica_10, Chica_11, Chica_12, Chica_13, Chica_14, Chica_15, Chica_16, 
                   Chica_17, Chica_18, Chica_19, Chica_2, Chica_3, Chica_4, Chica_5, Chica_6, Chica_7, 
                   Chica_8, Chica_9, Choy_01, Choy_05, Choy_06, Choy_09, Choy_10, Choy_11, Choy_12, 
                   Choy_13, Choy_14, Molino_10b, Molino_11a, Molino_12a, Molino_13b, Molino_14a, 
                   Molino_15b, Molino_2a, Molino_7a, Molino_9b, Pach_11, Pach_12, Pach_14, Pach_15, 
                   Pach_17, Pach_3, Pach_7, Pach_8, Pach_9, Rascon_02, Rascon_04, Rascon_13, Rascon_15, 
                   Rascon_6, Rascon_8, Tinaja_11, Tinaja_12, Tinaja_2, Tinaja_3, Tinaja_5, Tinaja_6, 
                   Tinaja_B, Tinaja_C, Tinaja_D, Tinaja_E, na.rm=TRUE)) %>%
      filter(nb_allele_amex > 0) %>%
      group_by(scaffold, pos) %>%
      summarise(count = n()) %>%
      filter(count < 2) %>%
      ungroup())

temp$scaf_pos <- paste(temp$scaffold, "-", temp$pos)

list_biallelic_pos <- temp$scaf_pos

lof_vcf$scaf_pos <- paste(lof_vcf$scaffold, "-", lof_vcf$pos)
lof_vcf_bi <- lof_vcf %>% filter(scaf_pos %in% list_biallelic_pos) %>% distinct()


#Now remove positions for which not all individuals are genotyped

lof_vcf_fg <- 
  lof_vcf_bi %>%
  filter(! is.na(Chica_1)) %>%
  filter(! is.na(Chica_10)) %>%
  filter(! is.na(Chica_11)) %>%
  filter(! is.na(Chica_12)) %>%
  filter(! is.na(Chica_13)) %>%
  filter(! is.na(Chica_14)) %>%
  filter(! is.na(Chica_15)) %>%
  filter(! is.na(Chica_16)) %>%
  filter(! is.na(Chica_17)) %>%
  filter(! is.na(Chica_18)) %>%
  filter(! is.na(Chica_19)) %>%
  filter(! is.na(Chica_2)) %>%
  filter(! is.na(Chica_3)) %>%
  filter(! is.na(Chica_4)) %>%
  filter(! is.na(Chica_5)) %>%
  filter(! is.na(Chica_6)) %>%
  filter(! is.na(Chica_7)) %>%
  filter(! is.na(Chica_8)) %>%
  filter(! is.na(Chica_9)) %>%
  filter(! is.na(Choy_01)) %>%
  filter(! is.na(Choy_05)) %>%
  filter(! is.na(Choy_06)) %>%
  filter(! is.na(Choy_09)) %>%
  filter(! is.na(Choy_10)) %>%
  filter(! is.na(Choy_11)) %>%
  filter(! is.na(Choy_12)) %>%
  filter(! is.na(Choy_13)) %>%
  filter(! is.na(Choy_14)) %>%
  filter(! is.na(Molino_10b)) %>%
  filter(! is.na(Molino_11a)) %>%
  filter(! is.na(Molino_12a)) %>%
  filter(! is.na(Molino_13b)) %>%
  filter(! is.na(Molino_14a)) %>%
  filter(! is.na(Molino_15b)) %>%
  filter(! is.na(Molino_2a)) %>%
  filter(! is.na(Molino_7a)) %>%
  filter(! is.na(Molino_9b)) %>%
  filter(! is.na(Pach_11)) %>%
  filter(! is.na(Pach_12)) %>%
  filter(! is.na(Pach_14)) %>%
  filter(! is.na(Pach_15)) %>%
  filter(! is.na(Pach_17)) %>%
  filter(! is.na(Pach_3)) %>%
  filter(! is.na(Pach_7)) %>%
  filter(! is.na(Pach_8)) %>%
  filter(! is.na(Pach_9)) %>%
  filter(! is.na(Rascon_02)) %>%
  filter(! is.na(Rascon_04)) %>%
  filter(! is.na(Rascon_13)) %>%
  filter(! is.na(Rascon_15)) %>%
  filter(! is.na(Rascon_6)) %>%
  filter(! is.na(Rascon_8)) %>%
  filter(! is.na(Tinaja_11)) %>%
  filter(! is.na(Tinaja_12)) %>%
  filter(! is.na(Tinaja_2)) %>%
  filter(! is.na(Tinaja_3)) %>%
  filter(! is.na(Tinaja_5)) %>%
  filter(! is.na(Tinaja_6)) %>%
  filter(! is.na(Tinaja_B)) %>%
  filter(! is.na(Tinaja_C)) %>%
  filter(! is.na(Tinaja_D)) %>%
  filter(! is.na(Tinaja_E)) %>%
  filter(! is.na(Gternetzi)) %>%
  filter(! is.na(Aaeneus))


#Now remove SNP only found in Gternetzi and Aaeneus

lof_vcf_amex <- 
  as.data.frame(
    lof_vcf_fg %>% 
      rowwise() %>% 
      mutate(nb_allele_amex = 
               sum(Chica_1, Chica_10, Chica_11, Chica_12, Chica_13, Chica_14, Chica_15, Chica_16, 
                   Chica_17, Chica_18, Chica_19, Chica_2, Chica_3, Chica_4, Chica_5, Chica_6, Chica_7, 
                   Chica_8, Chica_9, Choy_01, Choy_05, Choy_06, Choy_09, Choy_10, Choy_11, Choy_12, 
                   Choy_13, Choy_14, Molino_10b, Molino_11a, Molino_12a, Molino_13b, Molino_14a, 
                   Molino_15b, Molino_2a, Molino_7a, Molino_9b, Pach_11, Pach_12, Pach_14, Pach_15, 
                   Pach_17, Pach_3, Pach_7, Pach_8, Pach_9, Rascon_02, Rascon_04, Rascon_13, Rascon_15, 
                   Rascon_6, Rascon_8, Tinaja_11, Tinaja_12, Tinaja_2, Tinaja_3, Tinaja_5, Tinaja_6, 
                   Tinaja_B, Tinaja_C, Tinaja_D, Tinaja_E, na.rm=TRUE))
  ) %>%
  filter(! nb_allele_amex == 0) %>%
  distinct()



#Remove variant found in only 1 individual

test <- lof_vcf_amex %>% dplyr::select(Chica_1, Chica_10, Chica_11, Chica_12, Chica_13, Chica_14, Chica_15, Chica_16, 
                                       Chica_17, Chica_18, Chica_19, Chica_2, Chica_3, Chica_4, Chica_5, Chica_6, Chica_7, 
                                       Chica_8, Chica_9, Choy_01, Choy_05, Choy_06, Choy_09, Choy_10, Choy_11, Choy_12, 
                                       Choy_13, Choy_14, Molino_10b, Molino_11a, Molino_12a, Molino_13b, Molino_14a, 
                                       Molino_15b, Molino_2a, Molino_7a, Molino_9b, Pach_11, Pach_12, Pach_14, Pach_15, 
                                       Pach_17, Pach_3, Pach_7, Pach_8, Pach_9, Rascon_02, Rascon_04, Rascon_13, Rascon_15, 
                                       Rascon_6, Rascon_8, Tinaja_11, Tinaja_12, Tinaja_2, Tinaja_3, Tinaja_5, Tinaja_6, 
                                       Tinaja_B, Tinaja_C, Tinaja_D, Tinaja_E, Gternetzi, Aaeneus)
good_rows <- row.names(test[rowSums(test == 0) <= 62, ])



my_rownames <- rownames(lof_vcf_amex)
lof_vcf_amex <- cbind(my_rownames,lof_vcf_amex)
lof_vcf_amex_ind <- lof_vcf_amex %>% filter(my_rownames %in% good_rows)



#Now remove SNPs that are shared with outgroup species

lof_vcf_amex_uniq <- 
  lof_vcf_amex_ind %>%
  filter(is.na(Aaeneus) | Aaeneus == 0) %>%
  filter(is.na(Gternetzi) | Gternetzi == 0) %>%
  distinct()



#Remove SNPs that are shared with surface individuals

lof_vcf_amex_uniq_cave <- 
  as.data.frame(
    lof_vcf_amex_uniq %>% 
      rowwise() %>%
      mutate(surface_allele_nb = sum(Choy_01, Choy_05, Choy_06, Choy_09, Choy_10, Choy_11, Choy_12, 
                                     Choy_13, Choy_14, Rascon_02, Rascon_04, Rascon_13, Rascon_15, 
                                     Rascon_6, Rascon_8, na.rm=TRUE)) %>% 
      filter(surface_allele_nb == 0) %>%
      distinct())



#Now remove SNP that are fixed in A.mexicanus

temp <- lof_vcf_amex_uniq_cave %>% 
  dplyr::select(
    Chica_1, Chica_10, Chica_11, Chica_12, Chica_13, Chica_14, Chica_15, Chica_16, 
    Chica_17, Chica_18, Chica_19, Chica_2, Chica_3, Chica_4, Chica_5, Chica_6, Chica_7, 
    Chica_8, Chica_9, Choy_01, Choy_05, Choy_06, Choy_09, Choy_10, Choy_11, Choy_12, 
    Choy_13, Choy_14, Molino_10b, Molino_11a, Molino_12a, Molino_13b, Molino_14a, 
    Molino_15b, Molino_2a, Molino_7a, Molino_9b, Pach_11, Pach_12, Pach_14, Pach_15, 
    Pach_17, Pach_3, Pach_7, Pach_8, Pach_9, Rascon_02, Rascon_04, Rascon_13, Rascon_15, 
    Rascon_6, Rascon_8, Tinaja_11, Tinaja_12, Tinaja_2, Tinaja_3, Tinaja_5, Tinaja_6, 
    Tinaja_B, Tinaja_C, Tinaja_D, Tinaja_E) 


nb_non_genotyped_ind <- rowSums(is.na(temp))

lof_vcf_amex_uniq_nof_nos <- 
  lof_vcf_amex_uniq_cave %>% 
  mutate(nb_max_allele_amex = 124 - (nb_non_genotyped_ind*2)) %>%
  filter(! nb_allele_amex == nb_max_allele_amex) %>%
  distinct()




#### Filter VCF based conserved prot positions  ---------------------------------


#merge with the conserved protein position table. If a protein is not present in this table
#it means no orthologous gene was found in other teleost.


lof_vcf_amex_uniq_nof_nos_onlysplice <-
  lof_vcf_amex_uniq_nof_nos %>%
  filter(consequence == "splice_donor" | consequence == "splice_acceptor")

lof_vcf_amex_uniq_nof_nos_nosplice <-
  lof_vcf_amex_uniq_nof_nos %>%
  filter(! (consequence == "splice_donor" | consequence == "splice_acceptor"))


lof_vcf_amex_uniq_nof_nos_cons <- 
  left_join(lof_vcf_amex_uniq_nof_nos_nosplice, prot_conservation_table, by="transcript_ID") %>%
  filter(prot_pos >= conserved_coord_min & prot_pos <= conserved_coord_max) %>%
  distinct()


lof_vcf_amex_uniq_nof_nos_cons <- lof_vcf_amex_uniq_nof_nos_cons %>% dplyr::select(! c(gblock_min, gblock_max, conserved_coord_min, conserved_coord_max))

lof_vcf_amex_uniq_nof_nos_cons <- rbind(lof_vcf_amex_uniq_nof_nos_cons, lof_vcf_amex_uniq_nof_nos_onlysplice)


#### Remove premature stop codon or frameshifts in the last 5% of the protein  ---------------------------------

lof_vcf_amex_uniq_nof_nos_cons <- 
  left_join(lof_vcf_amex_uniq_nof_nos_cons, transcripts_lengths, by="transcript_ID")

lof_vcf_amex_uniq_nof_nos_cons_perc <- 
  lof_vcf_amex_uniq_nof_nos_cons %>%
  mutate(perc_95 = (protein_length * 95 / 100)) %>%
  mutate(sup_95 = if_else(
    prot_pos >= perc_95,
    "YES", 
    "NO"
  )) %>%
  filter(! ((consequence %in% c("stop_gained", "frameshift_variant")) & sup_95 == "YES")) %>%
  distinct()


# Remove overlapping frameshifts, most likely the results of mis-alignments


lof_vcf_amex_uniq_nof_nos_cons_perc <- 
  lof_vcf_amex_uniq_nof_nos_cons_perc %>% 
  mutate(frameshift_size = (str_length(alt)-str_length(ref)))

lof_vcf_amex_uniq_nof_nos_cons_perc <- 
  lof_vcf_amex_uniq_nof_nos_cons_perc %>%
  mutate(consequence_trim = case_when(
    consequence == "start_lost" ~ consequence,
    consequence == "stop_lost" ~ consequence,
    consequence == "stop_gained" ~ consequence,
    consequence == "frameshift_variant" & frameshift_size < 0 ~ "Deletion",
    consequence == "frameshift_variant" & frameshift_size > 0 ~ "Insertion",
    consequence == "splice_acceptor" ~ "Splice",
    consequence == "splice_donor" ~ "Splice"
  ))


test <- 
  lof_vcf_amex_uniq_nof_nos_cons_perc %>% 
  filter(consequence == "frameshift_variant") %>% 
  group_by(transcript_ID, exon) %>%
  summarise(nb_lof_same_exon = n()) %>%
  filter(nb_lof_same_exon > 1)


bad_transcripts_ID <- c()
bad_exon_nb <- c()
for (row in 1:nrow(test)) {
  curr_trans_ID <- as.character(test[row, "transcript_ID"])
  exon_nb  <- as.character(test[row, "exon"])
  
  counter <- 
    lof_vcf_amex_uniq_nof_nos_cons_perc %>% 
    filter(transcript_ID == curr_trans_ID) %>%
    filter(exon == exon_nb) %>%
    pull(frameshift_size) %>%
    sum()
  
  if (counter%%3 == 0){
    
    bad_transcripts_ID <- c(bad_transcripts_ID,curr_trans_ID)
    bad_exon_nb <- c(bad_exon_nb, exon_nb)
  }
}


LoF_to_remove <- as.data.frame(cbind(bad_transcripts_ID, bad_exon_nb))




rows_to_remove <- c()
for (row in 1:nrow(LoF_to_remove)) {
  the_gene <- as.character(LoF_to_remove[row, "bad_transcripts_ID"])
  the_exon <- as.character(LoF_to_remove[row, "bad_exon_nb"])
  
  bad_rows <- lof_vcf_amex_uniq_nof_nos_cons_perc %>% 
    filter(transcript_ID == the_gene & exon == the_exon & consequence == "frameshift_variant") 
  
  rows_to_remove <- rbind(rows_to_remove, bad_rows)
  
}

scaff_pos_to_remove <- rows_to_remove %>% pull(scaf_pos)

lof_vcf_amex_uniq_nof_nos_cons_perc_fs <- 
  lof_vcf_amex_uniq_nof_nos_cons_perc %>% 
  filter(! scaf_pos %in% scaff_pos_to_remove) %>%
  mutate(frameshift_size_normal = abs(frameshift_size))


nrow(lof_vcf_amex_uniq_nof_nos_cons_perc_fs)

length(lof_vcf_amex_uniq_nof_nos_cons_perc_fs %>%
         pull(transcript_ID) %>%
         unique())


# Remove CDS that don't have a proper start codon on Ensembl annotation

transcript_ID <- lof_vcf_amex_uniq_nof_nos_cons_perc_fs %>% pull(transcript_ID) %>% unique()
library("biomaRt")
mart <- useMart('ENSEMBL_MART_ENSEMBL', host = 'useast.ensembl.org')
ensembl <- useMart("ensembl")
datasets <- listDatasets(ensembl)
ensembl.astyanax <- useMart("ensembl", dataset = "amexicanus_gene_ensembl")

vector_genename <- c()
vector_CDS <- c()
CDS_table <- data.frame(NULL)
for(gene in transcript_ID){
  cds_seq = getSequence(id = gene,
                        type = "ensembl_transcript_id",
                        seqType = "coding",
                        mart = ensembl.astyanax)
  
  vector_genename <- c(vector_genename, gene)
  vector_CDS <- c(vector_CDS,cds_seq$coding)
  
}


CDS_table<- data.frame(vector_genename, vector_CDS)
colnames(CDS_table) <- c("transcript_ID", "CDS")

correct_CDS <- 
  CDS_table %>%
  mutate(first_codon = str_extract(CDS, "...")) %>%
  mutate(Start_codon = if_else(first_codon == "ATG", "Proper_start", "Incorrect_start")) %>%
  filter(Start_codon == "Proper_start") %>%
  pull(transcript_ID) %>%
  unique()



lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect <- 
  lof_vcf_amex_uniq_nof_nos_cons_perc_fs %>%
  filter(transcript_ID %in% correct_CDS)


nrow(lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect)

length(lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect %>%
         pull(transcript_ID) %>%
         unique())





#### LoF type analysis  ---------------------------------

write.table(lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect, 
            file = "lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect.csv", 
            quote = FALSE, sep = ",",
            dec = ".", row.names = FALSE,
            col.names = TRUE)



lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect %>%
  group_by(consequence_trim) %>%
  summarise(n())


#Distrib of LoF types 


setwd("~/pop_gen_analysis_astyanax")

pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Lof_type_pie.pdf",width = 6.34,  height = 4.61)


lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect %>% 
  group_by(consequence_trim) %>%
  summarise(value=n()) %>%
  ggplot(., aes(x="", y=value, fill=consequence_trim)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start=0)  +
  theme_minimal() +
  theme_void() +
  ggtitle(label = "CF specific loss-of-function mutations")


dev.off()

#Distrib of frameshift sizes 

pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Frameshift_size_barplot.pdf",width = 10.34,  height = 7.61)



lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect %>% 
  filter(consequence_trim == "Deletion" | consequence_trim == "Insertion") %>%
  mutate(frameshift_size_normal = abs(frameshift_size)) %>%
  #group_by(consequence_trim, frameshift_size_normal) %>%
  #mutate(value=n()) %>%
  ggplot(., aes(x=frameshift_size_normal, fill=consequence_trim)) +
  geom_bar(position = position_dodge(preserve = "single")) + theme_minimal() +
  xlab("Indel size") +
  ylab("Number") +
  ggtitle("Distribution of indel size (CF)") +
  scale_fill_discrete(name="Indel type", labels=c("Deletions", "Insertions")) +
  theme(axis.text=element_text(size=20),
        axis.title=element_text(size=18,face="bold"),
        axis.text.x = element_text(size = 14)) +
  scale_x_continuous("Indel size", c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31))


dev.off()

#Nb of LoF mutation per gene

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect %>%
  group_by(transcript_ID) %>%
  summarise(count = n()) %>%
  group_by(count) %>% summarise(nb_gene = n())



#### Compute shared LoF stats  ---------------------------------


lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb <- 
  as.data.frame(
    lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect %>%
      dplyr::rowwise() %>%
      mutate(nb_all_pachon = sum(Pach_11, Pach_12, Pach_14, Pach_15, 
                                 Pach_17, Pach_3, Pach_7, Pach_8, Pach_9, na.rm=TRUE)) %>%
      mutate(nb_all_molino = sum(Molino_10b, Molino_11a, Molino_12a, Molino_13b, Molino_14a, 
                                 Molino_15b, Molino_2a, Molino_7a, Molino_9b, na.rm=TRUE)) %>%
      mutate(nb_all_tinaja = sum(Tinaja_11, Tinaja_12, Tinaja_2, Tinaja_3, Tinaja_5, Tinaja_6, 
                                 Tinaja_B, Tinaja_C, Tinaja_D, Tinaja_E, na.rm=TRUE)) %>%
      mutate(nb_all_chica = sum(Chica_1, Chica_10, Chica_11, Chica_12, Chica_13, Chica_14, Chica_15, Chica_16, 
                                Chica_17, Chica_18, Chica_19, Chica_2, Chica_3, Chica_4, Chica_5, Chica_6, Chica_7, 
                                Chica_8, Chica_9, na.rm=TRUE)))




pachon_lof <- lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>% filter(nb_all_pachon > 0) %>% pull(scaf_pos)
molino_lof <- lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>% filter(nb_all_molino > 0) %>% pull(scaf_pos)
tinaja_lof <- lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>% filter(nb_all_tinaja > 0) %>% pull(scaf_pos)
chica_lof <- lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>% filter(nb_all_chica > 0) %>% pull(scaf_pos)

library(VennDiagram)
venn.diagram(
  x = list(pachon_lof, molino_lof, tinaja_lof, chica_lof),
  category.names = c("pachon_lof" , "molino_lof" , "tinaja_lof", "chica_lof"),
  filename = 'venn_test',
  output=TRUE
)



lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>%
  mutate(pachon_presence = if_else(
    nb_all_pachon > 0,
    1,
    0
  )) %>%
  mutate(molino_presence = if_else(
    nb_all_molino > 0,
    1,
    0
  )) %>%
  mutate(tinaja_presence = if_else(
    nb_all_tinaja > 0,
    1,
    0
  )) %>%
  mutate(chica_presence = if_else(
    nb_all_chica > 0,
    1,
    0
  )) %>%
  mutate(nb_cave_pres = pachon_presence + molino_presence + 
           tinaja_presence + chica_presence) %>%
  group_by(nb_cave_pres) %>% summarise(n())



common_4 <- intersect(chica_lof, intersect(intersect(pachon_lof, molino_lof), tinaja_lof))

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>%
  filter(scaf_pos %in% common_4)



### Do the same but by taking 9 random Chica individuals and 9 random Tinaja individuals

random_picked_tinaja <- sample(c("Tinaja_11", "Tinaja_12", "Tinaja_2", "Tinaja_3", "Tinaja_5", "Tinaja_6", 
                                 "Tinaja_B", "Tinaja_C", "Tinaja_D", "Tinaja_E"),9)

random_picked_chica <- sample(c("Chica_1","Chica_10","Chica_11","Chica_12","Chica_13","Chica_14","Chica_15",
                                "Chica_16","Chica_17","Chica_18","Chica_19","Chica_2","Chica_3","Chica_4","Chica_5",
                                "Chica_6","Chica_7","Chica_8","Chica_9"), 9)


lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb <- 
  as.data.frame(
    lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect %>%
      dplyr::rowwise() %>%
      mutate(nb_all_pachon = sum(Pach_11, Pach_12, Pach_14, Pach_15, 
                                 Pach_17, Pach_3, Pach_7, Pach_8, Pach_9, na.rm=TRUE)) %>%
      mutate(nb_all_molino = sum(Molino_10b, Molino_11a, Molino_12a, Molino_13b, Molino_14a, 
                                 Molino_15b, Molino_2a, Molino_7a, Molino_9b, na.rm=TRUE)) %>%
      mutate(nb_all_tinaja = sum(!!!syms(random_picked_tinaja), na.rm=TRUE)) %>%
      mutate(nb_all_chica = sum(!!!syms(random_picked_chica), na.rm=TRUE)))




pachon_lof <- lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>% filter(nb_all_pachon > 0) %>% pull(scaf_pos)
molino_lof <- lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>% filter(nb_all_molino > 0) %>% pull(scaf_pos)
tinaja_lof <- lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>% filter(nb_all_tinaja > 0) %>% pull(scaf_pos)
chica_lof <- lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>% filter(nb_all_chica > 0) %>% pull(scaf_pos)


venn.diagram(
  x = list(pachon_lof, molino_lof, tinaja_lof, chica_lof),
  category.names = c("pachon_lof" , "molino_lof" , "tinaja_lof", "chica_lof"),
  filename = 'venn_test_random',
  output=TRUE
)


common_4 <- intersect(chica_lof, intersect(intersect(pachon_lof, molino_lof), tinaja_lof))

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>%
  filter(scaf_pos %in% common_4)





#### Check variant frequencies  ---------------------------------

### Are pachon variants shared with other cave at higher frequency ? ###

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb <- 
  as.data.frame(
    lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect %>%
      dplyr::rowwise() %>%
      mutate(nb_all_pachon = sum(Pach_11, Pach_12, Pach_14, Pach_15, 
                                 Pach_17, Pach_3, Pach_7, Pach_8, Pach_9, na.rm=TRUE)) %>%
      mutate(nb_all_molino = sum(Molino_10b, Molino_11a, Molino_12a, Molino_13b, Molino_14a, 
                                 Molino_15b, Molino_2a, Molino_7a, Molino_9b, na.rm=TRUE)) %>%
      mutate(nb_all_tinaja = sum(Tinaja_11, Tinaja_12, Tinaja_2, Tinaja_3, Tinaja_5, Tinaja_6, 
                                 Tinaja_B, Tinaja_C, Tinaja_D, Tinaja_E, na.rm=TRUE)) %>%
      mutate(nb_all_chica = sum(Chica_1, Chica_10, Chica_11, Chica_12, Chica_13, Chica_14, Chica_15, Chica_16, 
                                Chica_17, Chica_18, Chica_19, Chica_2, Chica_3, Chica_4, Chica_5, Chica_6, Chica_7, 
                                Chica_8, Chica_9, na.rm=TRUE)))

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_pach <-
  lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>%
  filter(nb_all_pachon > 0) %>%
  mutate(shared_other_caves = if_else(
    (nb_all_molino > 0 | nb_all_tinaja > 0 | nb_all_chica > 0),
    "shared", 
    "unique"
  ))


lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_tinaja <-
  lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>%
  filter(nb_all_tinaja > 0) %>%
  mutate(shared_other_caves = if_else(
    (nb_all_molino > 0 | nb_all_pachon > 0 | nb_all_chica > 0),
    "shared", 
    "unique"
  ))

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_molino <-
  lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>%
  filter(nb_all_molino > 0) %>%
  mutate(shared_other_caves = if_else(
    (nb_all_pachon > 0 | nb_all_tinaja > 0 | nb_all_chica > 0),
    "shared", 
    "unique"
  ))

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_chica <-
  lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb %>%
  filter(nb_all_chica > 0) %>%
  mutate(shared_other_caves = if_else(
    (nb_all_molino > 0 | nb_all_tinaja > 0 | nb_all_pachon > 0),
    "shared", 
    "unique"
  ))


#pachon

pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Pachon_SFS.pdf",width = 6.34,  height = 4.61)

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_pach %>%
  filter(! nb_all_pachon == 1) %>%
  ggplot(., aes(x=nb_all_pachon, fill=shared_other_caves)) +
  geom_bar(position = position_dodge(preserve = "single")) +
  theme_classic() +
  theme(axis.text=element_text(size=20),
        axis.title=element_text(size=18,face="bold"),
        axis.text.x = element_text(size = 14),
        legend.position="none") +
  xlab("Number of LoF alleles in Pachon") +
  ylab("Count")

dev.off()



wilcox.test(lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_pach %>%
              filter(! nb_all_pachon == 1) %>%
              filter(shared_other_caves == "unique") %>%
              pull(nb_all_pachon),
            lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_pach %>%
              filter(! nb_all_pachon == 1) %>%
              filter(shared_other_caves == "shared") %>%
              pull(nb_all_pachon)
            )


pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Pachon_wilcox_frequencies.pdf",width = 6.34,  height = 4.61)


lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_pach %>%
  filter(! nb_all_pachon == 1) %>%
  ggplot(., aes(y=nb_all_pachon, x=shared_other_caves, fill=shared_other_caves)) +
  geom_boxplot() +
  theme_classic() +
  xlab("Variant presence") +
  ylab("Number of LoF alleles in Pachon") +
  theme(axis.text=element_text(size=20),
        axis.title=element_text(size=18,face="bold"),
        axis.text.x = element_text(size = 14),
        legend.position="none")

dev.off()

#tinaja

pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Tinaja_SFS.pdf",width = 6.34,  height = 4.61)

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_tinaja %>%
  filter(! nb_all_tinaja == 1) %>%
  ggplot(., aes(x=nb_all_tinaja, fill=shared_other_caves)) +
  geom_bar(position = position_dodge(preserve = "single")) +
  theme_classic() +
  theme(axis.text=element_text(size=20),
        axis.title=element_text(size=18,face="bold"),
        axis.text.x = element_text(size = 14),
        legend.position="none") +
  xlab("Number of LoF alleles in Tinaja") +
  ylab("Count")

dev.off()



wilcox.test(lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_tinaja %>%
              filter(! nb_all_tinaja == 1) %>%
              filter(shared_other_caves == "unique") %>%
              pull(nb_all_tinaja),
            lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_tinaja %>%
              filter(! nb_all_tinaja == 1) %>%
              filter(shared_other_caves == "shared") %>%
              pull(nb_all_tinaja)
)


pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Tinaja_wilcox_frequencies.pdf",width = 6.34,  height = 4.61)


lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_tinaja %>%
  filter(! nb_all_tinaja == 1) %>%
  ggplot(., aes(y=nb_all_tinaja, x=shared_other_caves, fill=shared_other_caves)) +
  geom_boxplot() +
  theme_classic() +
  xlab("Variant presence") +
  ylab("Number of LoF alleles in Tinaja") +
  theme(axis.text=element_text(size=20),
        axis.title=element_text(size=18,face="bold"),
        axis.text.x = element_text(size = 14),
        legend.position="none")

dev.off()


#molino


pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Molino_SFS.pdf",width = 6.34,  height = 4.61)

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_molino %>%
  filter(! nb_all_molino == 1) %>%
  ggplot(., aes(x=nb_all_molino, fill=shared_other_caves)) +
  geom_bar(position = position_dodge(preserve = "single")) +
  theme_classic() +
  theme(axis.text=element_text(size=20),
        axis.title=element_text(size=18,face="bold"),
        axis.text.x = element_text(size = 14),
        legend.position="none") +
  xlab("Number of LoF alleles in Molino") +
  ylab("Count")

dev.off()



wilcox.test(lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_molino %>%
              filter(! nb_all_molino == 1) %>%
              filter(shared_other_caves == "unique") %>%
              pull(nb_all_molino),
            lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_molino %>%
              filter(! nb_all_molino == 1) %>%
              filter(shared_other_caves == "shared") %>%
              pull(nb_all_molino)
)


pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Molino_wilcox_frequencies.pdf",width = 6.34,  height = 4.61)


lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_molino %>%
  filter(! nb_all_molino == 1) %>%
  ggplot(., aes(y=nb_all_molino, x=shared_other_caves, fill=shared_other_caves)) +
  geom_boxplot() +
  theme_classic() +
  xlab("Variant presence") +
  ylab("Number of LoF alleles in Molino") +
  theme(axis.text=element_text(size=20),
        axis.title=element_text(size=18,face="bold"),
        axis.text.x = element_text(size = 14),
        legend.position="none")

dev.off()



#chica

pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Chica_SFS.pdf",width = 6.34,  height = 4.61)

lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_chica %>%
  filter(! nb_all_chica == 1) %>%
  ggplot(., aes(x=nb_all_chica, fill=shared_other_caves)) +
  geom_bar(position = position_dodge(preserve = "single")) +
  theme_classic() +
  theme(axis.text=element_text(size=20),
        axis.title=element_text(size=18,face="bold"),
        axis.text.x = element_text(size = 14),
        legend.position="none") +
  xlab("Number of LoF alleles in Chica") +
  ylab("Count")

dev.off()



wilcox.test(lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_chica %>%
              filter(! nb_all_chica == 1) %>%
              filter(shared_other_caves == "unique") %>%
              pull(nb_all_chica),
            lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_chica %>%
              filter(! nb_all_chica == 1) %>%
              filter(shared_other_caves == "shared") %>%
              pull(nb_all_chica)
)


pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Chica_wilcox_frequencies.pdf",width = 6.34,  height = 4.61)


lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_chica %>%
  filter(! nb_all_chica == 1) %>%
  ggplot(., aes(y=nb_all_chica, x=shared_other_caves, fill=shared_other_caves)) +
  geom_boxplot() +
  theme_classic() +
  xlab("Variant presence") +
  ylab("Number of LoF alleles in Chica") +
  theme(axis.text=element_text(size=20),
        axis.title=element_text(size=18,face="bold"),
        axis.text.x = element_text(size = 14),
        legend.position="none")

dev.off()




#### GO-term enrichment of pseudogenes  ---------------------------------

library(biomaRt)
mart <- useMart('ENSEMBL_MART_ENSEMBL', host = 'useast.ensembl.org')
ensembl <- useMart("ensembl")
datasets <- listDatasets(ensembl)


ensembl.astyanax <- useMart("ensembl", dataset = "amexicanus_gene_ensembl")



###
transcripts_pseudos <- lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect %>%
  pull(transcript_ID) %>%
  unique()

Homo_sapiens_table <- getBM(attributes = c("ensembl_transcript_id", "hsapiens_homolog_associated_gene_name", "hsapiens_homolog_ensembl_gene"),filters = "ensembl_transcript_id", values = transcripts_pseudos,mart = ensembl.astyanax)
Danio_rerio_table <- getBM(attributes = c("ensembl_transcript_id", "drerio_homolog_associated_gene_name", "drerio_homolog_ensembl_gene"),filters = "ensembl_transcript_id", values = transcripts_pseudos,mart = ensembl.astyanax)
Homo_sapiens_table <- Homo_sapiens_table %>% distinct(ensembl_transcript_id, .keep_all= TRUE)
Danio_rerio_table <- Danio_rerio_table %>% distinct(ensembl_transcript_id, .keep_all= TRUE)



Homo_sapiens_gene_names <- Homo_sapiens_table %>% filter(hsapiens_homolog_associated_gene_name != "") %>% pull(hsapiens_homolog_associated_gene_name) %>% unique()
Homo_sapiens_ensembl_genes <- Homo_sapiens_table %>% filter(hsapiens_homolog_ensembl_gene != "") %>% pull(hsapiens_homolog_ensembl_gene) %>% unique()

Danio_rerio_genes_names <- Danio_rerio_table %>% filter(drerio_homolog_associated_gene_name != "") %>% pull(drerio_homolog_associated_gene_name) %>% unique()
Danio_rerio_ensembl_genes <- Danio_rerio_table %>% filter(drerio_homolog_ensembl_gene != "") %>% pull(drerio_homolog_ensembl_gene) %>% unique()


write(Homo_sapiens_gene_names, "Homo_sapiens_gene_names.txt")

write(Homo_sapiens_ensembl_genes, "Homo_sapiens_ensembl.txt")

write(Danio_rerio_genes_names, "Danio_rerio_gene_names.txt")

write(Danio_rerio_ensembl_genes, "Danio_rerio_ensembl.txt")


## check now pseudogenes only found in 1 cave
lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_cavenb <- 
  lof_vcf_amex_uniq_nof_nos_cons_perc_fs_cdscorrect %>%
  mutate(pachon_presence = if_else(
    nb_all_pachon > 0,
    1,
    0
  )) %>%
  mutate(molino_presence = if_else(
    nb_all_molino > 0,
    1,
    0
  )) %>%
  mutate(tinaja_presence = if_else(
    nb_all_tinaja > 0,
    1,
    0
  )) %>%
  mutate(chica_presence = if_else(
    nb_all_chica > 0,
    1,
    0
  )) %>%
  mutate(nb_cave_pres = pachon_presence + molino_presence + 
           tinaja_presence + chica_presence)


transcripts_pseudos <- 
  lof_vcf_amex_uniq_nof_nos_cons_perc_fs_nb_cavenb %>%
  filter(nb_cave_pres == 1) %>%
  pull(transcript_ID) %>%
  unique()

Homo_sapiens_table <- getBM(attributes = c("ensembl_transcript_id", "hsapiens_homolog_associated_gene_name", "hsapiens_homolog_ensembl_gene"),filters = "ensembl_transcript_id", values = transcripts_pseudos,mart = ensembl.astyanax)
Danio_rerio_table <- getBM(attributes = c("ensembl_transcript_id", "drerio_homolog_associated_gene_name", "drerio_homolog_ensembl_gene"),filters = "ensembl_transcript_id", values = transcripts_pseudos,mart = ensembl.astyanax)
Homo_sapiens_table <- Homo_sapiens_table %>% distinct(ensembl_transcript_id, .keep_all= TRUE)
Danio_rerio_table <- Danio_rerio_table %>% distinct(ensembl_transcript_id, .keep_all= TRUE)



Homo_sapiens_gene_names <- Homo_sapiens_table %>% filter(hsapiens_homolog_associated_gene_name != "") %>% pull(hsapiens_homolog_associated_gene_name) %>% unique()
Homo_sapiens_ensembl_genes <- Homo_sapiens_table %>% filter(hsapiens_homolog_ensembl_gene != "") %>% pull(hsapiens_homolog_ensembl_gene) %>% unique()

Danio_rerio_genes_names <- Danio_rerio_table %>% filter(drerio_homolog_associated_gene_name != "") %>% pull(drerio_homolog_associated_gene_name) %>% unique()
Danio_rerio_ensembl_genes <- Danio_rerio_table %>% filter(drerio_homolog_ensembl_gene != "") %>% pull(drerio_homolog_ensembl_gene) %>% unique()


write(Homo_sapiens_gene_names, "Homo_sapiens_gene_names.txt")

write(Homo_sapiens_ensembl_genes, "Homo_sapiens_ensembl.txt")

write(Danio_rerio_genes_names, "Danio_rerio_gene_names.txt")

write(Danio_rerio_ensembl_genes, "Danio_rerio_ensembl.txt")



###


library(enrichR)


setEnrichrSite("FishEnrichr")
websiteLive <- TRUE
all_dbs <- listEnrichrDbs()
all_dbs

dbs <- c("GO_Biological_Process_2018", "GO_Molecular_Function_2018", "GO_Cellular_Component_2018", "WikiPathways_2018", "KEGG_2019", "GO_Biological_Process_AutoRIF_Predicted_Z-score", "Phenotype_AutoRIF_Predicted_Z-score")

enriched_set <- enrichr(Danio_rerio_genes, dbs)

head(enriched_set[["GO_Biological_Process_AutoRIF_Predicted_Z-score"]])
head(enriched_set[["Phenotype_AutoRIF_Predicted_Z-score"]])





enriched_set[["GO_Biological_Process_AutoRIF_Predicted_Z-score"]] %>%
  filter(Adjusted.P.value < 0.05) %>%
  arrange(Adjusted.P.value)




head(as.data.frame(
  enriched_set[["GO_Biological_Process_AutoRIF_Predicted_Z-score"]]) %>%
    dplyr::select(Term, Adjusted.P.value,Genes), 10)



mygenes <- c("ENSAMXG00000024894",
             "ENSAMXG00000021619",
             "ENSAMXG00000000290",
             "ENSAMXG00000002203",
             "ENSAMXG00000038125",
             "ENSAMXG00000001431",
             "ENSAMXG00000035606",
             "ENSAMXG00000002069",
             "ENSAMXG00000001431",
             "ENSAMXG00000004364",
             "ENSAMXG00000020517")

lof_vcf_amex_uniq_nof_nos_cons_perc_fs %>%
  filter(gene_ID %in% mygenes) %>%
  dplyr::rowwise() %>%
  mutate(nb_all_pachon = sum(Pach_11, Pach_12, Pach_14, Pach_15, 
                             Pach_17, Pach_3, Pach_7, Pach_8, Pach_9, na.rm=TRUE)) %>%
  mutate(nb_all_molino = sum(Molino_10b, Molino_11a, Molino_12a, Molino_13b, Molino_14a, 
                             Molino_15b, Molino_2a, Molino_7a, Molino_9b, na.rm=TRUE)) %>%
  mutate(nb_all_tinaja = sum(Tinaja_11, Tinaja_12, Tinaja_2, Tinaja_3, Tinaja_5, Tinaja_6, 
                             Tinaja_B, Tinaja_C, Tinaja_D, Tinaja_E, na.rm=TRUE)) %>%
  mutate(nb_all_chica = sum(Chica_1, Chica_10, Chica_11, Chica_12, Chica_13, Chica_14, Chica_15, Chica_16, 
                            Chica_17, Chica_18, Chica_19, Chica_2, Chica_3, Chica_4, Chica_5, Chica_6, Chica_7, 
                            Chica_8, Chica_9, na.rm=TRUE)) %>%
  mutate(pachon_freq = nb_all_pachon/18) %>%
  mutate(molino_freq = nb_all_molino/18) %>%
  mutate(tinaja_freq = nb_all_tinaja/20) %>%
  mutate(chica_freq = nb_all_chica/38)  %>%
  dplyr::select(scaffold, pos, pachon_freq, molino_freq, tinaja_freq, chica_freq)




#### Comparison WGS - PCR   ---------------------------------


WGS_vs_PCR <- read.table("Comparison_WGS_PCR.tsv", sep="\t", header=TRUE)


pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Tinaja_PCR_vs_WGS.pdf",width = 13.34,  height = 8.61)

WGS_vs_PCR %>%
  filter(Cave == "Tinaja") %>%
  ggplot(., aes(x=Gene_name, y=Freq, fill=Method)) +
  geom_bar(stat="identity", position="dodge") +
  theme_classic() +
  xlab("LoF variant") +
  ylab("Frequency")

dev.off()


pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Chica_PCR_vs_WGS.pdf",width = 13.34,  height = 8.61)


WGS_vs_PCR %>%
  filter(Cave == "Chica") %>%
  ggplot(., aes(x=Gene_name, y=Freq, fill=Method)) +
  geom_bar(stat="identity", position="dodge") +
  theme_classic() +
  xlab("LoF variant") +
  ylab("Frequency")

dev.off()

pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Molino_PCR_vs_WGS.pdf",width = 13.34,  height = 8.61)

WGS_vs_PCR %>%
  filter(Cave == "Molino") %>%
  ggplot(., aes(x=Gene_name, y=Freq, fill=Method)) +
  geom_bar(stat="identity", position="dodge") +
  theme_classic() +
  xlab("LoF variant") +
  ylab("Frequency") +
  theme(axis.text=element_text(size=16),
        axis.title=element_text(size=18),
        plot.subtitle=element_text(size=16),
        legend.position="none")

dev.off()


pdf(file = "~/pop_gen_analysis_astyanax/Raw_plots/Pachon_PCR_vs_WGS.pdf",width = 13.34,  height = 8.61)

WGS_vs_PCR %>%
  filter(Cave == "Pachon") %>%
  ggplot(., aes(x=Gene_name, y=Freq, fill=Method)) +
  geom_bar(stat="identity", position="dodge") +
  theme_classic() +
  xlab("LoF variant") +
  ylab("Frequency")

dev.off()

#### Toro correlation pheno / geno  ---------------------------------


Toro_scores <- c(7,6,0,7,6,5,3,1,5,1,5,6,6,7,6,7,6,7,5,7,3,5,4,6,0,8,4,5,3,6)
Toro_eye_SL <- c(0,0.0289,0.0932,0,0,0,0.0506,0.0998,0,0.1019,0,0,0,0,0,0,0,0,0.0565,0,0.0336,0,0.0483,0,0.1165,0,0.0412,0,0.0709,0)




cor.test(Toro_scores, Toro_eye_SL)
plot(Toro_scores, Toro_eye_SL)
my_data <- cbind(Toro_scores, Toro_eye_SL)
my_data <- as.data.frame(my_data)


library("ggpubr")
monplot = ggscatter(my_data, x = "Toro_scores", y = "Toro_eye_SL", 
                    add = "reg.line", conf.int = TRUE, 
                    cor.coef = TRUE, cor.method = "pearson",
                    cor.coeff.args = list(method = "pearson", label.x = 1, label.y = 0.12),
                    xlab = "Genotype Score", ylab = "Phenotype eye/SL"
                    ,ylim=c(0,0.15)) + geom_count(aes(size = ..n..), show.legend = FALSE) + 
  geom_label(
    label="5", 
    x = 4.8, y = 0.005, fill="white"
  ) + geom_label(
    label="7", 
    x = 5.8, y = 0.005, fill="white") + geom_label(
      label="6", 
      x = 6.8, y = 0.005, fill="white") +
  theme(axis.text=element_text(size=16),
        axis.title=element_text(size=18),
        plot.subtitle=element_text(size=16),
        legend.position="none") 



