### This script perform a comparison of gene annotation between Astyanax mexicanus and other ray-finned fish species ###


mkdir BioMart_Orthologous_Genes
cd BioMart_Orthologous_Genes


#First, keep only longest isoform of each gene annotated on the A.mexicanus genome and remove genes containing an internal stop codon


wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/372/685/GCF_000372685.2_Astyanax_mexicanus-2.0/GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.gff.gz
wget thttps://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/372/685/GCF_000372685.2_Astyanax_mexicanus-2.0/GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna.gz
gzip -d GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.gff.gz
gzip -d GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna.gz

agat_sp_keep_longest_isoform.pl --gff GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.gff -o Astyanax_mexicanus.Astyanax_mexicanus-2.0.104_NCBI_longestIsoform.gff3
agat_sp_extract_sequences.pl -gff Astyanax_mexicanus.Astyanax_mexicanus-2.0.104_NCBI_longestIsoform.gff3 --fasta GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna -t cds -o Astyanax_mexicanus_LI.dna.fa
grep ">" Astyanax_mexicanus_LI.dna.fa | sed 's/transcript://g' | sed 's/>//g' | sed 's/ .*//g'  > astyanax_gene_id
grep ">" Astyanax_mexicanus_LI.dna.fa | sed 's/>//g' > astyanax_complete_gene_id
paste -d "\t" astyanax_complete_gene_id astyanax_gene_id > renaming_file
perl rename_fasta.pl renaming_file Astyanax_mexicanus_LI.dna.fa > Astyanax_mexicanus_LI.dna.fa.renamed
transeq Astyanax_mexicanus_LI.dna.fa.renamed Astyanax_mexicanus_LI.aa.fa
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' Astyanax_mexicanus_LI.aa.fa | sed 's/\*$//g' | awk -F '\t'  '!($2 ~ /\*/)' | tr "\t" "\n" > Astyanax_mexicanus_LI_nostop.aa.fa



#Do the same procedure for 10 other fish species

#====> Danio rerio

wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/002/035/GCF_000002035.6_GRCz11/GCF_000002035.6_GRCz11_genomic.fna.gz 
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/002/035/GCF_000002035.6_GRCz11/GCF_000002035.6_GRCz11_genomic.gff.gz 
gzip -d GCF_000002035.6_GRCz11_genomic.fna.gz 
gzip -d GCF_000002035.6_GRCz11_genomic.gff.gz

agat_sp_keep_longest_isoform.pl --gff GCF_000002035.6_GRCz11_genomic.gff -o GCF_000002035.6_GRCz11_genomic_LI.gff 
agat_sp_extract_sequences.pl -gff GCF_000002035.6_GRCz11_genomic_LI.gff --fasta GCF_000002035.6_GRCz11_genomic.fna -t cds -o Danio_rerio_LI.dna.fa
transeq Danio_rerio_LI.dna.fa Danio_rerio_LI.aa.fa
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' Danio_rerio_LI.aa.fa | sed 's/\*$//g' | awk -F '\t'  '!($2 ~ /\*/)' | tr "\t" "\n" > Danio_rerio_LI_nostop.aa.fa



#====> pygocentrus nattereri 


wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/015/220/715/GCF_015220715.1_fPygNat1.pri/GCF_015220715.1_fPygNat1.pri_genomic.fna.gz 
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/015/220/715/GCF_015220715.1_fPygNat1.pri/GCF_015220715.1_fPygNat1.pri_genomic.gff.gz 
gzip -d GCF_015220715.1_fPygNat1.pri_genomic.fna.gz
gzip -d GCF_015220715.1_fPygNat1.pri_genomic.gff.gz 

agat_sp_keep_longest_isoform.pl --gff GCF_015220715.1_fPygNat1.pri_genomic.gff -o GCF_015220715.1_fPygNat1.pri_genomic_LI.gff 
agat_sp_extract_sequences.pl -gff GCF_015220715.1_fPygNat1.pri_genomic_LI.gff --fasta GCF_015220715.1_fPygNat1.pri_genomic.fna -t cds -o Pygocentus_nattereri_LI.dna.fa
transeq Pygocentus_nattereri_LI.dna.fa Pygocentus_nattereri_LI.aa.fa
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' Pygocentus_nattereri_LI.aa.fa | sed 's/\*$//g' | awk -F '\t'  '!($2 ~ /\*/)' | tr "\t" "\n" > Pygocentus_nattereri_LI_nostop.aa.fa




#====> electrophorus eletricus


wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/013/358/815/GCF_013358815.1_fEleEle1.pri/GCF_013358815.1_fEleEle1.pri_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/013/358/815/GCF_013358815.1_fEleEle1.pri/GCF_013358815.1_fEleEle1.pri_genomic.gff.gz 
gzip -d GCF_013358815.1_fEleEle1.pri_genomic.fna.gz
gzip -d GCF_013358815.1_fEleEle1.pri_genomic.gff.gz 

agat_sp_keep_longest_isoform.pl --gff GCF_013358815.1_fEleEle1.pri_genomic.gff -o GCF_013358815.1_fEleEle1.pri_genomic_LI.gff 
agat_sp_extract_sequences.pl -gff GCF_013358815.1_fEleEle1.pri_genomic_LI.gff --fasta GCF_013358815.1_fEleEle1.pri_genomic.fna -t cds -o Electrophorus_electricus_LI.dna.fa
transeq Electrophorus_electricus_LI.dna.fa Electrophorus_electricus_LI.aa.fa
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' Electrophorus_electricus_LI.aa.fa | sed 's/\*$//g' | awk -F '\t'  '!($2 ~ /\*/)' | tr "\t" "\n" > Electrophorus_electricus_LI_nostop.aa.fa


#====> bagarius_yarelli


wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/005/784/505/GCA_005784505.1_ASM578450v1/GCA_005784505.1_ASM578450v1_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/005/784/505/GCA_005784505.1_ASM578450v1/GCA_005784505.1_ASM578450v1_genomic.gff.gz
gzip -d GCA_005784505.1_ASM578450v1_genomic.fna.gz
gzip -d GCA_005784505.1_ASM578450v1_genomic.gff.gz

agat_sp_keep_longest_isoform.pl --gff GCA_005784505.1_ASM578450v1_genomic.gff -o GCA_005784505.1_ASM578450v1_genomic_LI.gff 
agat_sp_extract_sequences.pl -gff GCA_005784505.1_ASM578450v1_genomic_LI.gff --fasta GCA_005784505.1_ASM578450v1_genomic.fna -t cds -o Bagarius_yarelli_LI.dna.fa
transeq Bagarius_yarelli_LI.dna.fa Bagarius_yarelli_LI.aa.fa
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' Bagarius_yarelli_LI.aa.fa | sed 's/\*$//g' | awk -F '\t'  '!($2 ~ /\*/)' | tr "\t" "\n" > Bagarius_yarelli_LI_nostop.aa.fa


#====> Tachysurus_fulvidraco
 

wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/003/724/035/GCF_003724035.1_ASM372403v1/GCF_003724035.1_ASM372403v1_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/003/724/035/GCF_003724035.1_ASM372403v1/GCF_003724035.1_ASM372403v1_genomic.gff.gz
gzip -d GCF_003724035.1_ASM372403v1_genomic.fna.gz
gzip -d GCF_003724035.1_ASM372403v1_genomic.gff.gz

agat_sp_keep_longest_isoform.pl --gff GCF_003724035.1_ASM372403v1_genomic.gff -o GCF_003724035.1_ASM372403v1_genomic_LI.gff 
agat_sp_extract_sequences.pl -gff GCF_003724035.1_ASM372403v1_genomic_LI.gff --fasta GCF_003724035.1_ASM372403v1_genomic.fna -t cds -o Tachysurus_fulvidraco_LI.dna.fa
transeq Tachysurus_fulvidraco_LI.dna.fa Tachysurus_fulvidraco_LI.aa.fa
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' Tachysurus_fulvidraco_LI.aa.fa | sed 's/\*$//g' | awk -F '\t'  '!($2 ~ /\*/)' | tr "\t" "\n" > Tachysurus_fulvidraco_LI_nostop.aa.fa


#====> Ameiurus_melas


wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/012/411/365/GCA_012411365.1_AMELA_1.0/GCA_012411365.1_AMELA_1.0_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/012/411/365/GCA_012411365.1_AMELA_1.0/GCA_012411365.1_AMELA_1.0_genomic.gff.gz
gzip -d GCA_012411365.1_AMELA_1.0_genomic.fna.gz
gzip -d GCA_012411365.1_AMELA_1.0_genomic.gff.gz

agat_sp_keep_longest_isoform.pl --gff GCA_012411365.1_AMELA_1.0_genomic.gff -o GCA_012411365.1_AMELA_1.0_genomic_LI.gff 
agat_sp_extract_sequences.pl -gff GCA_012411365.1_AMELA_1.0_genomic_LI.gff --fasta GCA_012411365.1_AMELA_1.0_genomic.fna -t cds -o Ameiurus_melas_LI.dna.fa
transeq Ameiurus_melas_LI.dna.fa Ameiurus_melas_LI.aa.fa
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' Ameiurus_melas_LI.aa.fa | sed 's/\*$//g' | awk -F '\t'  '!($2 ~ /\*/)' | tr "\t" "\n" > Ameiurus_melas_LI_nostop.aa.fa


#====> Triplophysa_tibetana

wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/008/369/825/GCA_008369825.1_ASM836982v1/GCA_008369825.1_ASM836982v1_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/008/369/825/GCA_008369825.1_ASM836982v1/GCA_008369825.1_ASM836982v1_genomic.gff.gz
gzip -d GCA_008369825.1_ASM836982v1_genomic.fna.gz
gzip -d GCA_008369825.1_ASM836982v1_genomic.gff.gz

agat_sp_keep_longest_isoform.pl --gff GCA_008369825.1_ASM836982v1_genomic.gff -o GCA_008369825.1_ASM836982v1_genomic_LI.gff 
agat_sp_extract_sequences.pl -gff GCA_008369825.1_ASM836982v1_genomic_LI.gff --fasta GCA_008369825.1_ASM836982v1_genomic.fna -t cds -o Triplophysa_tibetana_LI.dna.fa
transeq Triplophysa_tibetana_LI.dna.fa Triplophysa_tibetana_LI.aa.fa
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' Triplophysa_tibetana_LI.aa.fa | sed 's/\*$//g' | awk -F '\t'  '!($2 ~ /\*/)' | tr "\t" "\n" > Triplophysa_tibetana_LI_nostop.aa.fa


#====> Anabarilius_grahami 


wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/003/731/715/GCA_003731715.1_BGI_Agra_1.0/GCA_003731715.1_BGI_Agra_1.0_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/003/731/715/GCA_003731715.1_BGI_Agra_1.0/GCA_003731715.1_BGI_Agra_1.0_genomic.gff.gz
gzip -d GCA_003731715.1_BGI_Agra_1.0_genomic.fna.gz
gzip -d GCA_003731715.1_BGI_Agra_1.0_genomic.gff.gz

agat_sp_keep_longest_isoform.pl --gff GCA_003731715.1_BGI_Agra_1.0_genomic.gff -o GCA_003731715.1_BGI_Agra_1.0_genomic_LI.gff 
agat_sp_extract_sequences.pl -gff GCA_003731715.1_BGI_Agra_1.0_genomic_LI.gff --fasta GCA_003731715.1_BGI_Agra_1.0_genomic.fna -t cds -o Anabarilius_grahami_LI.dna.fa
transeq Anabarilius_grahami_LI.dna.fa Anabarilius_grahami_LI.aa.fa
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' Anabarilius_grahami_LI.aa.fa | sed 's/\*$//g' | awk -F '\t'  '!($2 ~ /\*/)' | tr "\t" "\n" > Anabarilius_grahami_LI_nostop.aa.fa

#====> Labeo_rohita


wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/004/120/215/GCA_004120215.1_ASM412021v1/GCA_004120215.1_ASM412021v1_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/004/120/215/GCA_004120215.1_ASM412021v1/GCA_004120215.1_ASM412021v1_genomic.gff.gz
gzip -d GCA_004120215.1_ASM412021v1_genomic.fna.gz
gzip -d GCA_004120215.1_ASM412021v1_genomic.gff.gz

agat_sp_keep_longest_isoform.pl --gff GCA_004120215.1_ASM412021v1_genomic.gff -o GCA_004120215.1_ASM412021v1_genomic_LI.gff 
agat_sp_extract_sequences.pl -gff GCA_004120215.1_ASM412021v1_genomic_LI.gff --fasta GCA_004120215.1_ASM412021v1_genomic.fna -t cds -o Labeo_rohita_LI.dna.fa
transeq Labeo_rohita_LI.dna.fa Labeo_rohita_LI.aa.fa
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' Labeo_rohita_LI.aa.fa | sed 's/\*$//g' | awk -F '\t'  '!($2 ~ /\*/)' | tr "\t" "\n" > Labeo_rohita_LI_nostop.aa.fa


### Now lets find orthologous relationships with Broccoli


mkdir Proteomes_db
for i in *nostop.aa.fa ; do mv $i Proteomes_db/$i.fasta ; done

python broccoli.py -dir Proteomes_db/ -threads 20 


## Now lets perform alignments with each orthogroups

mkdir Alignments_Orthologous_Genes
cd Alignments_Orthologous_Genes/


grep ">" ../Astyanax_mexicanus_LI.aa.fa | sed 's/>//g' | sed 's/_1$//g' > List_astyanax_transcripts.txt
cat ../Proteomes_db/*.fasta > One_big_fasta_allsp.fasta
sed 's/ .*//g' One_big_fasta_allsp.fasta  > One_big_fasta_allsp_nospace.fasta
samtools faidx One_big_fasta_allsp_nospace.fasta


for gene in `cat List_astyanax_transcripts.txt` ; do 
	rm Current_orthologous.list

	if grep -q "$gene" ../dir_step3/table_OGs_protein_names.txt ; then

		grep "$gene" ../dir_step3/table_OGs_protein_names.txt  | cut -f2- | tr "\t" "\n" | tr " " "\n" > current_genes.txt

		xargs samtools faidx One_big_fasta_allsp_nospace.fasta < current_genes.txt > $gene.prot

		mafft --auto $gene.prot > $gene.aln 

		trimal -in $gene.aln -out $gene.trimalalign -gt 0.7 -colnumbering > $gene.columns

	fi

done

echo "all alignments dones"



# Extract genes that have no orthologous sequences found , will be discarded in downstream analysis

ls -l > list_files
rm List_no_orthologous_found
for gene in `cat List_astyanax_transcripts.txt` ; do 
	if grep -q "$gene" list_files ; then 
		nb_ortho=`grep -c ">" $gene.prot` 
		if [ "$nb_ortho" -lt '2' ] ; then echo "$gene" >> List_no_orthologous_found ; fi
	else
		echo "$gene" >> List_no_orthologous_found
	fi
done


#Parse Trimal file to look like a classic Gblock format

for i in *.columns ; do sed "s/#ColumnsMap/$i/g" $i | sed 's/.columns//g' > $i.cc ; done
for i in *.columns.cc ; do python3 Trimal_To_Gblock.py $i ; done
for i in *.converted.tsv ; do sed 's/(//g' $i | sed 's/)//g' | sed 's/ //g' | tr ',' '\t' > $i.Final_conversion ; done 
cat *.Final_conversion > Trimal_block_for_every_genes.txt


#Now lets convert conserved positions found by Trimal to relative positions on the Astyanax mexicanus genes


cat *.aln > Concat_alignments.conc
sed -i 's/_1$//g' Concat_alignments.conc
for i in `cat List_astyanax_transcripts.txt` ; do if grep -q "$i" Concat_alignments.conc ; then echo "$i" >> present_genes.txt ; fi ; done
xargs samtools faidx Concat_alignments.conc < present_genes.txt > Amex_sequences_aligned.fa 
python Python_Conversion_trimal_Amex.py


#Result file : Conserved_domains_Amex_trimal.csv


#Lets extract the gene length of every genes

cd /scicore/home/salzburg/polica0000/pop_gen_analysis_astyanax/BioMart_Orthologous_Genes/

samtools faidx Astyanax_mexicanus_LI.aa.fa
cut -f1,2 Astyanax_mexicanus_LI.aa.fa.fai | sed 's/_1    /       /g' > Transcript_protlen.tsv


