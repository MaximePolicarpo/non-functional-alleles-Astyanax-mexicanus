#Download reads of Astyanax mexicanus on NCBI (using ENA mirror):  
#(Projet PRJNA260715, https://sra-explorer.info/) + PRJNA339312 + PRJNA558458

module load SRA-Toolkit


#!/usr/bin/env bash
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/004/SRR1575274/SRR1575274_1.fastq.gz -o SRR1575274_Astyanax_mexicanus_Choy_10_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/004/SRR1575274/SRR1575274_2.fastq.gz -o SRR1575274_Astyanax_mexicanus_Choy_10_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/005/SRR1575275/SRR1575275_1.fastq.gz -o SRR1575275_Astyanax_mexicanus_Choy_11_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/005/SRR1575275/SRR1575275_2.fastq.gz -o SRR1575275_Astyanax_mexicanus_Choy_11_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/001/SRR1575271/SRR1575271_1.fastq.gz -o SRR1575271_Astyanax_mexicanus_Choy_05_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/001/SRR1575271/SRR1575271_2.fastq.gz -o SRR1575271_Astyanax_mexicanus_Choy_05_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/003/SRR1575273/SRR1575273_1.fastq.gz -o SRR1575273_Astyanax_mexicanus_Choy_09_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/003/SRR1575273/SRR1575273_2.fastq.gz -o SRR1575273_Astyanax_mexicanus_Choy_09_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/000/SRR1575270/SRR1575270_1.fastq.gz -o SRR1575270_Astyanax_mexicanus_Choy_01_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/000/SRR1575270/SRR1575270_2.fastq.gz -o SRR1575270_Astyanax_mexicanus_Choy_01_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/002/SRR1575272/SRR1575272_1.fastq.gz -o SRR1575272_Astyanax_mexicanus_Choy_06_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/002/SRR1575272/SRR1575272_2.fastq.gz -o SRR1575272_Astyanax_mexicanus_Choy_06_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/006/SRR1575276/SRR1575276_1.fastq.gz -o SRR1575276_Astyanax_mexicanus_Choy_12_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/006/SRR1575276/SRR1575276_2.fastq.gz -o SRR1575276_Astyanax_mexicanus_Choy_12_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/008/SRR1575278/SRR1575278_1.fastq.gz -o SRR1575278_Astyanax_mexicanus_Choy_14_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/008/SRR1575278/SRR1575278_2.fastq.gz -o SRR1575278_Astyanax_mexicanus_Choy_14_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/007/SRR1575277/SRR1575277_1.fastq.gz -o SRR1575277_Astyanax_mexicanus_Choy_13_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/007/SRR1575277/SRR1575277_2.fastq.gz -o SRR1575277_Astyanax_mexicanus_Choy_13_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/000/SRR1575280/SRR1575280_1.fastq.gz -o SRR1575280_Astyanax_mexicanus_Pach_7_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/000/SRR1575280/SRR1575280_2.fastq.gz -o SRR1575280_Astyanax_mexicanus_Pach_7_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/009/SRR1575279/SRR1575279_1.fastq.gz -o SRR1575279_Astyanax_mexicanus_Pach_3_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/009/SRR1575279/SRR1575279_2.fastq.gz -o SRR1575279_Astyanax_mexicanus_Pach_3_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/001/SRR1575281/SRR1575281_1.fastq.gz -o SRR1575281_Astyanax_mexicanus_Pach_8_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/001/SRR1575281/SRR1575281_2.fastq.gz -o SRR1575281_Astyanax_mexicanus_Pach_8_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/002/SRR1575282/SRR1575282_1.fastq.gz -o SRR1575282_Astyanax_mexicanus_Pach_9_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/002/SRR1575282/SRR1575282_2.fastq.gz -o SRR1575282_Astyanax_mexicanus_Pach_9_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/003/SRR1575283/SRR1575283_1.fastq.gz -o SRR1575283_Astyanax_mexicanus_Pach_11_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/003/SRR1575283/SRR1575283_2.fastq.gz -o SRR1575283_Astyanax_mexicanus_Pach_11_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/005/SRR1575285/SRR1575285_1.fastq.gz -o SRR1575285_Astyanax_mexicanus_Pach_14_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/005/SRR1575285/SRR1575285_2.fastq.gz -o SRR1575285_Astyanax_mexicanus_Pach_14_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/006/SRR1575286/SRR1575286_1.fastq.gz -o SRR1575286_Astyanax_mexicanus_Pach_15_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/006/SRR1575286/SRR1575286_2.fastq.gz -o SRR1575286_Astyanax_mexicanus_Pach_15_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/004/SRR1575284/SRR1575284_1.fastq.gz -o SRR1575284_Astyanax_mexicanus_Pach_12_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/004/SRR1575284/SRR1575284_2.fastq.gz -o SRR1575284_Astyanax_mexicanus_Pach_12_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/007/SRR1575287/SRR1575287_1.fastq.gz -o SRR1575287_Astyanax_mexicanus_Pach_17_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/007/SRR1575287/SRR1575287_2.fastq.gz -o SRR1575287_Astyanax_mexicanus_Pach_17_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/000/SRR1575290/SRR1575290_1.fastq.gz -o SRR1575290_Astyanax_mexicanus_Molino_9b_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/000/SRR1575290/SRR1575290_2.fastq.gz -o SRR1575290_Astyanax_mexicanus_Molino_9b_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/008/SRR1575288/SRR1575288_1.fastq.gz -o SRR1575288_Astyanax_mexicanus_Molino_2a_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/008/SRR1575288/SRR1575288_2.fastq.gz -o SRR1575288_Astyanax_mexicanus_Molino_2a_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/009/SRR1575289/SRR1575289_1.fastq.gz -o SRR1575289_Astyanax_mexicanus_Molino_7a_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/009/SRR1575289/SRR1575289_2.fastq.gz -o SRR1575289_Astyanax_mexicanus_Molino_7a_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/002/SRR1575292/SRR1575292_1.fastq.gz -o SRR1575292_Astyanax_mexicanus_Molino_11a_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/002/SRR1575292/SRR1575292_2.fastq.gz -o SRR1575292_Astyanax_mexicanus_Molino_11a_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/001/SRR1575291/SRR1575291_1.fastq.gz -o SRR1575291_Astyanax_mexicanus_Molino_10b_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/001/SRR1575291/SRR1575291_2.fastq.gz -o SRR1575291_Astyanax_mexicanus_Molino_10b_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/003/SRR1575293/SRR1575293_1.fastq.gz -o SRR1575293_Astyanax_mexicanus_Molino_12a_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/003/SRR1575293/SRR1575293_2.fastq.gz -o SRR1575293_Astyanax_mexicanus_Molino_12a_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/007/SRR1575297/SRR1575297_1.fastq.gz -o SRR1575297_Astyanax_mexicanus_Rascon_02_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/007/SRR1575297/SRR1575297_2.fastq.gz -o SRR1575297_Astyanax_mexicanus_Rascon_02_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/005/SRR1575295/SRR1575295_1.fastq.gz -o SRR1575295_Astyanax_mexicanus_Molino_14a_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/005/SRR1575295/SRR1575295_2.fastq.gz -o SRR1575295_Astyanax_mexicanus_Molino_14a_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/004/SRR1575294/SRR1575294_1.fastq.gz -o SRR1575294_Astyanax_mexicanus_Molino_13b_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/004/SRR1575294/SRR1575294_2.fastq.gz -o SRR1575294_Astyanax_mexicanus_Molino_13b_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/008/SRR1575298/SRR1575298_1.fastq.gz -o SRR1575298_Astyanax_mexicanus_Rascon_04_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/008/SRR1575298/SRR1575298_2.fastq.gz -o SRR1575298_Astyanax_mexicanus_Rascon_04_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/006/SRR1575296/SRR1575296_1.fastq.gz -o SRR1575296_Astyanax_mexicanus_Molino_15b_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR157/006/SRR1575296/SRR1575296_2.fastq.gz -o SRR1575296_Astyanax_mexicanus_Molino_15b_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/005/SRR1927215/SRR1927215_1.fastq.gz -o SRR1927215_Astyanax_mexicanus_Tinaja_B_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/005/SRR1927215/SRR1927215_2.fastq.gz -o SRR1927215_Astyanax_mexicanus_Tinaja_B_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/002/SRR1927212/SRR1927212_1.fastq.gz -o SRR1927212_Astyanax_mexicanus_Tinaja_6_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/002/SRR1927212/SRR1927212_2.fastq.gz -o SRR1927212_Astyanax_mexicanus_Tinaja_6_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/004/SRR1927184/SRR1927184_1.fastq.gz -o SRR1927184_Astyanax_mexicanus_Tinaja_11_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/004/SRR1927184/SRR1927184_2.fastq.gz -o SRR1927184_Astyanax_mexicanus_Tinaja_11_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/001/SRR1927221/SRR1927221_1.fastq.gz -o SRR1927221_Astyanax_mexicanus_Tinaja_C_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/001/SRR1927221/SRR1927221_2.fastq.gz -o SRR1927221_Astyanax_mexicanus_Tinaja_C_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/004/SRR1927214/SRR1927214_1.fastq.gz -o SRR1927214_Astyanax_mexicanus_Tinaja_12_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/004/SRR1927214/SRR1927214_2.fastq.gz -o SRR1927214_Astyanax_mexicanus_Tinaja_12_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/008/SRR1927218/SRR1927218_1.fastq.gz -o SRR1927218_Astyanax_mexicanus_Tinaja_2_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/008/SRR1927218/SRR1927218_2.fastq.gz -o SRR1927218_Astyanax_mexicanus_Tinaja_2_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/004/SRR1927234/SRR1927234_1.fastq.gz -o SRR1927234_Astyanax_mexicanus_Rascon_13_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/004/SRR1927234/SRR1927234_2.fastq.gz -o SRR1927234_Astyanax_mexicanus_Rascon_13_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/005/SRR1927235/SRR1927235_1.fastq.gz -o SRR1927235_Astyanax_mexicanus_Rascon_15_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/005/SRR1927235/SRR1927235_2.fastq.gz -o SRR1927235_Astyanax_mexicanus_Rascon_15_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/002/SRR1927232/SRR1927232_1.fastq.gz -o SRR1927232_Astyanax_mexicanus_Tinaja_5_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/002/SRR1927232/SRR1927232_2.fastq.gz -o SRR1927232_Astyanax_mexicanus_Tinaja_5_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/004/SRR1927224/SRR1927224_1.fastq.gz -o SRR1927224_Astyanax_mexicanus_Tinaja_3_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/004/SRR1927224/SRR1927224_2.fastq.gz -o SRR1927224_Astyanax_mexicanus_Tinaja_3_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/003/SRR1927233/SRR1927233_1.fastq.gz -o SRR1927233_Astyanax_mexicanus_Tinaja_E_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/003/SRR1927233/SRR1927233_2.fastq.gz -o SRR1927233_Astyanax_mexicanus_Tinaja_E_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/008/SRR1927228/SRR1927228_1.fastq.gz -o SRR1927228_Astyanax_mexicanus_Tinaja_D_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/008/SRR1927228/SRR1927228_2.fastq.gz -o SRR1927228_Astyanax_mexicanus_Tinaja_D_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/006/SRR1927236/SRR1927236_1.fastq.gz -o SRR1927236_Astyanax_mexicanus_Rascon_8_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/006/SRR1927236/SRR1927236_2.fastq.gz -o SRR1927236_Astyanax_mexicanus_Rascon_8_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/007/SRR1927237/SRR1927237_1.fastq.gz -o SRR1927237_Astyanax_mexicanus_Rascon_6_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/007/SRR1927237/SRR1927237_2.fastq.gz -o SRR1927237_Astyanax_mexicanus_Rascon_6_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/008/SRR1927238/SRR1927238_1.fastq.gz -o SRR1927238_Astyanax_aeneus_Aeneus_Surface_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR192/008/SRR1927238/SRR1927238_2.fastq.gz -o SRR1927238_Astyanax_aeneus_Aeneus_Surface_2.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR204/002/SRR2040422/SRR2040422_1.fastq.gz -o SRR2040422_Gymnocorymbus_ternetzi_White_Long_Fin_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR204/002/SRR2040422/SRR2040422_2.fastq.gz -o SRR2040422_Gymnocorymbus_ternetzi_White_Long_Fin_2.fastq.gz


#+ 19 Chica individuals (https://www.sciencedirect.com/science/article/pii/S2589004222000487#sec3.1) :


fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044469
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044470
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044471
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044472
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044473
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044474
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044475
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044476
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044477
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044478
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044479
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044480
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044481
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044482
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044483
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044484
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044485
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044486
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044487
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044488
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044489
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044490
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044491
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044492
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044493
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044494
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044495
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044496
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044497
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044498
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044499
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044500
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044525
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044523
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044521
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044520
fastq-dump --gzip --skip-technical --readids --read-filter pass --dumpbase --split-3 --clip SRR4044503
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR404/004/SRR4044524/SRR4044524_1.fastq.gz -o SRR4044524_WGS_of_Astyanax_mexicanus_fin_clip_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR404/004/SRR4044524/SRR4044524_2.fastq.gz -o SRR4044524_WGS_of_Astyanax_mexicanus_fin_clip_2.fastq.gz


### rename files to match their individual identifier

mv SRR4044469_pass_1.fastq.gz Chica1_P1_run1_R1.fastq.gz
mv SRR4044469_pass_2.fastq.gz Chica1_P1_run1_R2.fastq.gz
mv SRR4044470_pass_1.fastq.gz Chica1_P1_run2_R1.fastq.gz
mv SRR4044470_pass_2.fastq.gz Chica1_P1_run2_R2.fastq.gz
mv SRR4044471_pass_1.fastq.gz Chica6_P1_run1_R1.fastq.gz
mv SRR4044471_pass_2.fastq.gz Chica6_P1_run1_R2.fastq.gz
mv SRR4044472_pass_1.fastq.gz Chica6_P1_run2_R1.fastq.gz
mv SRR4044472_pass_2.fastq.gz Chica6_P1_run2_R2.fastq.gz
mv SRR4044473_pass_1.fastq.gz Chica7_P1_run1_R1.fastq.gz
mv SRR4044473_pass_2.fastq.gz Chica7_P1_run1_R2.fastq.gz
mv SRR4044474_pass_1.fastq.gz Chica7_P1_run2_R1.fastq.gz
mv SRR4044474_pass_2.fastq.gz Chica7_P1_run2_R2.fastq.gz
mv SRR4044475_pass_1.fastq.gz Chica8_P1_run1_R1.fastq.gz
mv SRR4044475_pass_2.fastq.gz Chica8_P1_run1_R2.fastq.gz
mv SRR4044476_pass_1.fastq.gz Chica8_P1_run2_R1.fastq.gz 
mv SRR4044476_pass_2.fastq.gz Chica8_P1_run2_R2.fastq.gz
mv SRR4044477_pass_1.fastq.gz Chica9_P1_run1_R1.fastq.gz
mv SRR4044477_pass_2.fastq.gz Chica9_P1_run1_R2.fastq.gz
mv SRR4044478_pass_1.fastq.gz Chica9_P1_run2_R1.fastq.gz
mv SRR4044478_pass_2.fastq.gz Chica9_P1_run2_R2.fastq.gz
mv SRR4044479_pass_1.fastq.gz Chica10_P1_run1_R1.fastq.gz
mv SRR4044479_pass_2.fastq.gz Chica10_P1_run1_R2.fastq.gz
mv SRR4044480_pass_1.fastq.gz Chica10_P1_run2_R1.fastq.gz
mv SRR4044480_pass_2.fastq.gz Chica10_P1_run2_R2.fastq.gz
mv SRR4044481_pass_1.fastq.gz Chica2_P1_run1_R1.fastq.gz
mv SRR4044481_pass_2.fastq.gz Chica2_P1_run1_R2.fastq.gz
mv SRR4044482_pass_1.fastq.gz Chica11_P1_run1_R1.fastq.gz
mv SRR4044482_pass_2.fastq.gz Chica11_P1_run1_R2.fastq.gz
mv SRR4044483_pass_1.fastq.gz Chica11_P1_run2_R1.fastq.gz
mv SRR4044483_pass_2.fastq.gz Chica11_P1_run2_R2.fastq.gz
mv SRR4044484_pass_1.fastq.gz Chica12_P1_run1_R1.fastq.gz
mv SRR4044484_pass_2.fastq.gz Chica12_P1_run1_R2.fastq.gz
mv SRR4044485_pass_1.fastq.gz Chica12_P1_run2_R1.fastq.gz
mv SRR4044485_pass_2.fastq.gz Chica12_P1_run2_R2.fastq.gz
mv SRR4044486_pass_1.fastq.gz Chica13_P1_run1_R1.fastq.gz
mv SRR4044486_pass_2.fastq.gz Chica13_P1_run1_R2.fastq.gz
mv SRR4044487_pass_1.fastq.gz Chica13_P1_run2_R1.fastq.gz
mv SRR4044487_pass_2.fastq.gz Chica13_P1_run2_R2.fastq.gz
mv SRR4044488_pass_1.fastq.gz Chica14_P1_run1_R1.fastq.gz
mv SRR4044488_pass_2.fastq.gz Chica14_P1_run1_R2.fastq.gz
mv SRR4044489_pass_1.fastq.gz Chica14_P1_run2_R1.fastq.gz
mv SRR4044489_pass_2.fastq.gz Chica14_P1_run2_R2.fastq.gz
mv SRR4044490_pass_1.fastq.gz Chica15_P5_run1_R1.fastq.gz
mv SRR4044490_pass_2.fastq.gz Chica15_P5_run1_R2.fastq.gz
mv SRR4044491_pass_1.fastq.gz Chica15_P5_run2_R1.fastq.gz
mv SRR4044491_pass_2.fastq.gz Chica15_P5_run2_R2.fastq.gz
mv SRR4044492_pass_1.fastq.gz Chica2_P1_run2_R1.fastq.gz
mv SRR4044492_pass_2.fastq.gz Chica2_P1_run2_R2.fastq.gz
mv SRR4044493_pass_1.fastq.gz Chica16_P5_run1_R1.fastq.gz
mv SRR4044493_pass_2.fastq.gz Chica16_P5_run1_R2.fastq.gz
mv SRR4044494_pass_1.fastq.gz Chica16_P5_run2_R1.fastq.gz
mv SRR4044494_pass_2.fastq.gz Chica16_P5_run2_R2.fastq.gz
mv SRR4044495_pass_1.fastq.gz Chica17_P5_run1_R1.fastq.gz
mv SRR4044495_pass_2.fastq.gz Chica17_P5_run1_R2.fastq.gz
mv SRR4044496_pass_1.fastq.gz Chica17_P5_run2_R1.fastq.gz
mv SRR4044496_pass_2.fastq.gz Chica17_P5_run2_R2.fastq.gz
mv SRR4044497_pass_1.fastq.gz Chica18_P5_run1_R1.fastq.gz
mv SRR4044497_pass_2.fastq.gz Chica18_P5_run1_R2.fastq.gz
mv SRR4044498_pass_1.fastq.gz Chica18_P5_run2_R1.fastq.gz
mv SRR4044498_pass_2.fastq.gz Chica18_P5_run2_R2.fastq.gz
mv SRR4044499_pass_1.fastq.gz Chica19_P5_run1_R1.fastq.gz
mv SRR4044499_pass_2.fastq.gz Chica19_P5_run1_R2.fastq.gz
mv SRR4044500_pass_1.fastq.gz Chica19_P5_run2_R1.fastq.gz
mv SRR4044500_pass_2.fastq.gz Chica19_P5_run2_R2.fastq.gz
mv SRR4044503_pass_1.fastq.gz Chica3_P1_run1_R1.fastq.gz
mv SRR4044503_pass_2.fastq.gz Chica3_P1_run1_R2.fastq.gz
mv SRR4044520_pass_1.fastq.gz Chica3_P1_run2_R1.fastq.gz
mv SRR4044520_pass_2.fastq.gz Chica3_P1_run2_R2.fastq.gz
mv SRR4044521_pass_1.fastq.gz Chica4_P1_run1_R1.fastq.gz
mv SRR4044521_pass_2.fastq.gz Chica4_P1_run1_R2.fastq.gz
mv SRR4044523_pass_1.fastq.gz Chica4_P1_run2_R1.fastq.gz
mv SRR4044523_pass_2.fastq.gz Chica4_P1_run2_R2.fastq.gz
mv SRR4044524_WGS_of_Astyanax_mexicanus_fin_clip_1.fastq.gz Chica5_P1_run1_R1.fastq.gz
mv SRR4044524_WGS_of_Astyanax_mexicanus_fin_clip_2.fastq.gz Chica5_P1_run1_R2.fastq.gz
mv SRR4044525_pass_1.fastq.gz Chica5_P1_run2_R1.fastq.gz
mv SRR4044525_pass_2.fastq.gz Chica5_P1_run2_R2.fastq.gz
mv SRR10501627_Shotgun_re-sequecning_of_Astyanax_mexicanus_1.fastq.gz Sabinos_03_R1.fastq.gz
mv SRR10501627_Shotgun_re-sequecning_of_Astyanax_mexicanus_2.fastq.gz Sabinos_03_R2.fastq.gz
mv SRR10501628_Shotgun_re-sequecning_of_Astyanax_mexicanus_1.fastq.gz Sabinos_02_R1.fastq.gz
mv SRR10501628_Shotgun_re-sequecning_of_Astyanax_mexicanus_2.fastq.gz Sabinos_02_R2.fastq.gz
mv SRR10959193_pass_1.fastq.gz Sabinos_01_R1.fastq.gz
mv SRR10959193_pass_2.fastq.gz Sabinos_01_R2.fastq.gz




## Run Trim Galore to clean all the read data 


trim_galore --paired Sabinos_01_R1.fastq.gz Sabinos_01_R2.fastq.gz
trim_galore --paired Sabinos_02_R1.fastq.gz Sabinos_02_R2.fastq.gz
trim_galore --paired Sabinos_03_R1.fastq.gz Sabinos_03_R2.fastq.gz
trim_galore --paired Chica10_P1_run1_R1.fastq.gz Chica10_P1_run2_R1.fastq.gz 
trim_galore --paired Chica10_P1_run1_R2.fastq.gz Chica10_P1_run2_R2.fastq.gz 
trim_galore --paired Chica11_P1_run1_R1.fastq.gz Chica11_P1_run2_R1.fastq.gz 
trim_galore --paired Chica11_P1_run1_R2.fastq.gz Chica11_P1_run2_R2.fastq.gz 
trim_galore --paired Chica12_P1_run1_R1.fastq.gz Chica12_P1_run2_R1.fastq.gz 
trim_galore --paired Chica12_P1_run1_R2.fastq.gz Chica12_P1_run2_R2.fastq.gz 
trim_galore --paired Chica13_P1_run1_R1.fastq.gz Chica13_P1_run2_R1.fastq.gz 
trim_galore --paired Chica13_P1_run1_R2.fastq.gz Chica13_P1_run2_R2.fastq.gz 
trim_galore --paired Chica14_P1_run1_R1.fastq.gz Chica14_P1_run2_R1.fastq.gz 
trim_galore --paired Chica14_P1_run1_R2.fastq.gz Chica14_P1_run2_R2.fastq.gz 
trim_galore --paired Chica15_P5_run1_R1.fastq.gz Chica15_P5_run2_R1.fastq.gz 
trim_galore --paired Chica15_P5_run1_R2.fastq.gz Chica15_P5_run2_R2.fastq.gz 
trim_galore --paired Chica16_P5_run1_R1.fastq.gz Chica16_P5_run2_R1.fastq.gz 
trim_galore --paired Chica16_P5_run1_R2.fastq.gz Chica16_P5_run2_R2.fastq.gz 
trim_galore --paired Chica17_P5_run1_R1.fastq.gz Chica17_P5_run2_R1.fastq.gz 
trim_galore --paired Chica17_P5_run1_R2.fastq.gz Chica17_P5_run2_R2.fastq.gz 
trim_galore --paired Chica18_P5_run1_R1.fastq.gz Chica18_P5_run2_R1.fastq.gz 
trim_galore --paired Chica18_P5_run1_R2.fastq.gz Chica18_P5_run2_R2.fastq.gz 
trim_galore --paired Chica19_P5_run1_R1.fastq.gz Chica19_P5_run2_R1.fastq.gz 
trim_galore --paired Chica19_P5_run1_R2.fastq.gz Chica19_P5_run2_R2.fastq.gz 
trim_galore --paired Chica1_P1_run1_R1.fastq.gz Chica1_P1_run2_R1.fastq.gz
trim_galore --paired Chica1_P1_run1_R2.fastq.gz Chica1_P1_run2_R2.fastq.gz
trim_galore --paired Chica2_P1_run1_R1.fastq.gz Chica2_P1_run2_R1.fastq.gz
trim_galore --paired Chica2_P1_run1_R2.fastq.gz Chica2_P1_run2_R2.fastq.gz
trim_galore --paired Chica3_P1_run1_R1.fastq.gz Chica3_P1_run2_R1.fastq.gz
trim_galore --paired Chica3_P1_run1_R2.fastq.gz Chica3_P1_run2_R2.fastq.gz
trim_galore --paired Chica4_P1_run1_R1.fastq.gz Chica4_P1_run2_R1.fastq.gz
trim_galore --paired Chica4_P1_run1_R2.fastq.gz Chica4_P1_run2_R2.fastq.gz
trim_galore --paired Chica5_P1_run1_R1.fastq.gz Chica5_P1_run2_R1.fastq.gz
trim_galore --paired Chica5_P1_run1_R2.fastq.gz Chica5_P1_run2_R2.fastq.gz
trim_galore --paired Chica6_P1_run1_R1.fastq.gz Chica6_P1_run2_R1.fastq.gz
trim_galore --paired Chica6_P1_run1_R2.fastq.gz Chica6_P1_run2_R2.fastq.gz
trim_galore --paired Chica7_P1_run1_R1.fastq.gz Chica7_P1_run2_R1.fastq.gz
trim_galore --paired Chica7_P1_run1_R2.fastq.gz Chica7_P1_run2_R2.fastq.gz
trim_galore --paired Chica8_P1_run1_R1.fastq.gz Chica8_P1_run2_R1.fastq.gz
trim_galore --paired Chica8_P1_run1_R2.fastq.gz Chica8_P1_run2_R2.fastq.gz
trim_galore --paired Chica9_P1_run1_R1.fastq.gz Chica9_P1_run2_R1.fastq.gz
trim_galore --paired Chica9_P1_run1_R2.fastq.gz Chica9_P1_run2_R2.fastq.gz
trim_galore --paired SRR1575270_Astyanax_mexicanus_Choy_01_1.fastq.gz SRR1575270_Astyanax_mexicanus_Choy_01_2.fastq.gz
trim_galore --paired SRR1575271_Astyanax_mexicanus_Choy_05_1.fastq.gz SRR1575271_Astyanax_mexicanus_Choy_05_2.fastq.gz
trim_galore --paired SRR1575272_Astyanax_mexicanus_Choy_06_1.fastq.gz SRR1575272_Astyanax_mexicanus_Choy_06_2.fastq.gz
trim_galore --paired SRR1575273_Astyanax_mexicanus_Choy_09_1.fastq.gz SRR1575273_Astyanax_mexicanus_Choy_09_2.fastq.gz
trim_galore --paired SRR1575274_Astyanax_mexicanus_Choy_10_1.fastq.gz SRR1575274_Astyanax_mexicanus_Choy_10_2.fastq.gz
trim_galore --paired SRR1575275_Astyanax_mexicanus_Choy_11_1.fastq.gz SRR1575275_Astyanax_mexicanus_Choy_11_2.fastq.gz
trim_galore --paired SRR1575276_Astyanax_mexicanus_Choy_12_1.fastq.gz SRR1575276_Astyanax_mexicanus_Choy_12_2.fastq.gz
trim_galore --paired SRR1575277_Astyanax_mexicanus_Choy_13_1.fastq.gz SRR1575277_Astyanax_mexicanus_Choy_13_2.fastq.gz
trim_galore --paired SRR1575278_Astyanax_mexicanus_Choy_14_1.fastq.gz SRR1575278_Astyanax_mexicanus_Choy_14_2.fastq.gz
trim_galore --paired SRR1575279_Astyanax_mexicanus_Pach_3_1.fastq.gz SRR1575279_Astyanax_mexicanus_Pach_3_2.fastq.gz
trim_galore --paired SRR1575280_Astyanax_mexicanus_Pach_7_1.fastq.gz SRR1575280_Astyanax_mexicanus_Pach_7_2.fastq.gz
trim_galore --paired SRR1575281_Astyanax_mexicanus_Pach_8_1.fastq.gz SRR1575281_Astyanax_mexicanus_Pach_8_2.fastq.gz
trim_galore --paired SRR1575282_Astyanax_mexicanus_Pach_9_1.fastq.gz SRR1575282_Astyanax_mexicanus_Pach_9_2.fastq.gz
trim_galore --paired SRR1575283_Astyanax_mexicanus_Pach_11_1.fastq.gz SRR1575283_Astyanax_mexicanus_Pach_11_2.fastq.gz
trim_galore --paired SRR1575284_Astyanax_mexicanus_Pach_12_1.fastq.gz SRR1575284_Astyanax_mexicanus_Pach_12_2.fastq.gz
trim_galore --paired SRR1575285_Astyanax_mexicanus_Pach_14_1.fastq.gz SRR1575285_Astyanax_mexicanus_Pach_14_2.fastq.gz
trim_galore --paired SRR1575286_Astyanax_mexicanus_Pach_15_1.fastq.gz SRR1575286_Astyanax_mexicanus_Pach_15_2.fastq.gz
trim_galore --paired SRR1575287_Astyanax_mexicanus_Pach_17_1.fastq.gz SRR1575287_Astyanax_mexicanus_Pach_17_2.fastq.gz
trim_galore --paired SRR1575288_Astyanax_mexicanus_Molino_2a_1.fastq.gz SRR1575288_Astyanax_mexicanus_Molino_2a_2.fastq.gz
trim_galore --paired SRR1575289_Astyanax_mexicanus_Molino_7a_1.fastq.gz SRR1575289_Astyanax_mexicanus_Molino_7a_2.fastq.gz
trim_galore --paired SRR1575290_Astyanax_mexicanus_Molino_9b_1.fastq.gz SRR1575290_Astyanax_mexicanus_Molino_9b_2.fastq.gz
trim_galore --paired SRR1575291_Astyanax_mexicanus_Molino_10b_1.fastq.gz SRR1575291_Astyanax_mexicanus_Molino_10b_2.fastq.gz
trim_galore --paired SRR1575292_Astyanax_mexicanus_Molino_11a_1.fastq.gz SRR1575292_Astyanax_mexicanus_Molino_11a_2.fastq.gz
trim_galore --paired SRR1575293_Astyanax_mexicanus_Molino_12a_1.fastq.gz SRR1575293_Astyanax_mexicanus_Molino_12a_2.fastq.gz
trim_galore --paired SRR1575294_Astyanax_mexicanus_Molino_13b_1.fastq.gz SRR1575294_Astyanax_mexicanus_Molino_13b_2.fastq.gz 
trim_galore --paired SRR1575295_Astyanax_mexicanus_Molino_14a_1.fastq.gz SRR1575295_Astyanax_mexicanus_Molino_14a_2.fastq.gz
trim_galore --paired SRR1575296_Astyanax_mexicanus_Molino_15b_1.fastq.gz SRR1575296_Astyanax_mexicanus_Molino_15b_2.fastq.gz
trim_galore --paired SRR1575297_Astyanax_mexicanus_Rascon_02_1.fastq.gz SRR1575297_Astyanax_mexicanus_Rascon_02_2.fastq.gz
trim_galore --paired SRR1575298_Astyanax_mexicanus_Rascon_04_1.fastq.gz SRR1575298_Astyanax_mexicanus_Rascon_04_2.fastq.gz
trim_galore --paired SRR1927214_Astyanax_mexicanus_Tinaja_12_1.fastq.gz SRR1927214_Astyanax_mexicanus_Tinaja_12_2.fastq.gz
trim_galore --paired SRR1927215_Astyanax_mexicanus_Tinaja_B_1.fastq.gz SRR1927215_Astyanax_mexicanus_Tinaja_B_2.fastq.gz
trim_galore --paired SRR1927218_Astyanax_mexicanus_Tinaja_2_1.fastq.gz SRR1927218_Astyanax_mexicanus_Tinaja_2_2.fastq.gz
trim_galore --paired SRR1927221_Astyanax_mexicanus_Tinaja_C_1.fastq.gz SRR1927221_Astyanax_mexicanus_Tinaja_C_2.fastq.gz
trim_galore --paired SRR1927224_Astyanax_mexicanus_Tinaja_3_1.fastq.gz SRR1927224_Astyanax_mexicanus_Tinaja_3_2.fastq.gz
trim_galore --paired SRR1927228_Astyanax_mexicanus_Tinaja_D_1.fastq.gz SRR1927228_Astyanax_mexicanus_Tinaja_D_2.fastq.gz
trim_galore --paired SRR1927232_Astyanax_mexicanus_Tinaja_5_1.fastq.gz SRR1927232_Astyanax_mexicanus_Tinaja_5_2.fastq.gz
trim_galore --paired SRR1927233_Astyanax_mexicanus_Tinaja_E_1.fastq.gz SRR1927233_Astyanax_mexicanus_Tinaja_E_2.fastq.gz
trim_galore --paired SRR1927234_Astyanax_mexicanus_Rascon_13_1.fastq.gz SRR1927234_Astyanax_mexicanus_Rascon_13_2.fastq.gz
trim_galore --paired SRR1927235_Astyanax_mexicanus_Rascon_15_1.fastq.gz SRR1927235_Astyanax_mexicanus_Rascon_15_2.fastq.gz
trim_galore --paired SRR1927236_Astyanax_mexicanus_Rascon_8_1.fastq.gz SRR1927236_Astyanax_mexicanus_Rascon_8_2.fastq.gz
trim_galore --paired SRR1927237_Astyanax_mexicanus_Rascon_6_1.fastq.gz SRR1927237_Astyanax_mexicanus_Rascon_6_2.fastq.gz
trim_galore --paired SRR1927238_Astyanax_aeneus_Aeneus_Surface_1.fastq.gz SRR1927238_Astyanax_aeneus_Aeneus_Surface_2.fastq.gz
trim_galore --paired SRR2040422_Gymnocorymbus_ternetzi_White_Long_Fin_1.fastq.gz SRR2040422_Gymnocorymbus_ternetzi_White_Long_Fin_2.fastq.gz


### Merge chica individual fastq files

gunzip -c Chica10_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica10_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica10_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica10_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica10_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica10_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica10_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica10_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica11_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica11_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica11_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica11_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica11_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica11_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica11_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica11_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica12_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica12_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica12_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica12_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica12_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica12_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica12_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica12_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica13_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica13_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica13_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica13_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica13_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica13_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica13_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica13_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica14_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica14_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica14_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica14_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica14_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica14_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica14_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica14_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica15_P5_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica15_P5_run1_R1.fixed.fastq.gz
gunzip -c Chica15_P5_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica15_P5_run1_R2.fixed.fastq.gz
gunzip -c Chica15_P5_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica15_P5_run2_R1.fixed.fastq.gz
gunzip -c Chica15_P5_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica15_P5_run2_R2.fixed.fastq.gz
gunzip -c Chica16_P5_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica16_P5_run1_R1.fixed.fastq.gz
gunzip -c Chica16_P5_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica16_P5_run1_R2.fixed.fastq.gz
gunzip -c Chica16_P5_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica16_P5_run2_R1.fixed.fastq.gz
gunzip -c Chica16_P5_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica16_P5_run2_R2.fixed.fastq.gz
gunzip -c Chica17_P5_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica17_P5_run1_R1.fixed.fastq.gz
gunzip -c Chica17_P5_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica17_P5_run1_R2.fixed.fastq.gz
gunzip -c Chica17_P5_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica17_P5_run2_R1.fixed.fastq.gz
gunzip -c Chica17_P5_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica17_P5_run2_R2.fixed.fastq.gz
gunzip -c Chica18_P5_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica18_P5_run1_R1.fixed.fastq.gz
gunzip -c Chica18_P5_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica18_P5_run1_R2.fixed.fastq.gz
gunzip -c Chica18_P5_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica18_P5_run2_R1.fixed.fastq.gz
gunzip -c Chica18_P5_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica18_P5_run2_R2.fixed.fastq.gz
gunzip -c Chica19_P5_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica19_P5_run1_R1.fixed.fastq.gz
gunzip -c Chica19_P5_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica19_P5_run1_R2.fixed.fastq.gz
gunzip -c Chica19_P5_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica19_P5_run2_R1.fixed.fastq.gz
gunzip -c Chica19_P5_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica19_P5_run2_R2.fixed.fastq.gz
gunzip -c Chica1_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica1_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica1_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica1_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica1_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica1_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica1_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica1_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica2_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica2_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica2_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica2_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica2_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica2_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica2_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica2_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica3_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica3_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica3_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica3_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica3_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica3_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica3_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica3_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica4_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica4_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica4_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica4_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica4_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica4_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica4_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica4_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica5_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica5_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica5_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica5_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica5_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica5_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica5_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica5_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica6_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica6_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica6_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica6_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica6_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica6_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica6_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica6_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica7_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica7_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica7_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica7_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica7_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica7_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica7_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica7_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica8_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica8_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica8_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica8_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica8_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica8_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica8_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica8_P1_run2_R2.fixed.fastq.gz
gunzip -c Chica9_P1_run1_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica9_P1_run1_R1.fixed.fastq.gz
gunzip -c Chica9_P1_run1_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica9_P1_run1_R2.fixed.fastq.gz
gunzip -c Chica9_P1_run2_R1.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica9_P1_run2_R1.fixed.fastq.gz
gunzip -c Chica9_P1_run2_R2.fastq.gz | sed -E 's/(^[@+]SRR[0-9]+\.[0-9]+)\.[12]/\1/' | gzip -c > Chica9_P1_run2_R2.fixed.fastq.gz


cat Chica10_P1_run1_R1.fixed.fastq.gz Chica10_P1_run2_R1.fixed.fastq.gz > Chica10_R1.fastq.gz
cat Chica10_P1_run1_R2.fixed.fastq.gz Chica10_P1_run2_R2.fixed.fastq.gz > Chica10_R2.fastq.gz
cat Chica11_P1_run1_R1.fixed.fastq.gz Chica11_P1_run2_R1.fixed.fastq.gz > Chica11_R1.fastq.gz
cat Chica11_P1_run1_R2.fixed.fastq.gz Chica11_P1_run2_R2.fixed.fastq.gz > Chica11_R2.fastq.gz
cat Chica12_P1_run1_R1.fixed.fastq.gz Chica12_P1_run2_R1.fixed.fastq.gz > Chica12_R1.fastq.gz
cat Chica12_P1_run1_R2.fixed.fastq.gz Chica12_P1_run2_R2.fixed.fastq.gz > Chica12_R2.fastq.gz
cat Chica13_P1_run1_R1.fixed.fastq.gz Chica13_P1_run2_R1.fixed.fastq.gz > Chica13_R1.fastq.gz
cat Chica13_P1_run1_R2.fixed.fastq.gz Chica13_P1_run2_R2.fixed.fastq.gz > Chica13_R2.fastq.gz
cat Chica14_P1_run1_R1.fixed.fastq.gz Chica14_P1_run2_R1.fixed.fastq.gz > Chica14_R1.fastq.gz
cat Chica14_P1_run1_R2.fixed.fastq.gz Chica14_P1_run2_R2.fixed.fastq.gz > Chica14_R2.fastq.gz
cat Chica15_P5_run1_R1.fixed.fastq.gz Chica15_P5_run2_R1.fixed.fastq.gz > Chica15_R1.fastq.gz
cat Chica15_P5_run1_R2.fixed.fastq.gz Chica15_P5_run2_R2.fixed.fastq.gz > Chica15_R2.fastq.gz
cat Chica16_P5_run1_R1.fixed.fastq.gz Chica16_P5_run2_R1.fixed.fastq.gz > Chica16_R1.fastq.gz
cat Chica16_P5_run1_R2.fixed.fastq.gz Chica16_P5_run2_R2.fixed.fastq.gz > Chica16_R2.fastq.gz
cat Chica17_P5_run1_R1.fixed.fastq.gz Chica17_P5_run2_R1.fixed.fastq.gz > Chica17_R1.fastq.gz
cat Chica17_P5_run1_R2.fixed.fastq.gz Chica17_P5_run2_R2.fixed.fastq.gz > Chica17_R2.fastq.gz
cat Chica18_P5_run1_R1.fixed.fastq.gz Chica18_P5_run2_R1.fixed.fastq.gz > Chica18_R1.fastq.gz
cat Chica18_P5_run1_R2.fixed.fastq.gz Chica18_P5_run2_R2.fixed.fastq.gz > Chica18_R2.fastq.gz
cat Chica19_P5_run1_R1.fixed.fastq.gz Chica19_P5_run2_R1.fixed.fastq.gz > Chica19_R1.fastq.gz
cat Chica19_P5_run1_R2.fixed.fastq.gz Chica19_P5_run2_R2.fixed.fastq.gz > Chica19_R2.fastq.gz
cat Chica1_P1_run1_R1.fixed.fastq.gz Chica1_P1_run2_R1.fixed.fastq.gz > Chica1_R1.fastq.gz
cat Chica1_P1_run1_R2.fixed.fastq.gz Chica1_P1_run2_R2.fixed.fastq.gz > Chica1_R2.fastq.gz
cat Chica2_P1_run1_R1.fixed.fastq.gz Chica2_P1_run2_R1.fixed.fastq.gz > Chica2_R1.fastq.gz
cat Chica2_P1_run1_R2.fixed.fastq.gz Chica2_P1_run2_R2.fixed.fastq.gz > Chica2_R2.fastq.gz
cat Chica3_P1_run1_R1.fixed.fastq.gz Chica3_P1_run2_R1.fixed.fastq.gz > Chica3_R1.fastq.gz
cat Chica3_P1_run1_R2.fixed.fastq.gz Chica3_P1_run2_R2.fixed.fastq.gz > Chica3_R2.fastq.gz
cat Chica4_P1_run1_R1.fixed.fastq.gz Chica4_P1_run2_R1.fixed.fastq.gz > Chica4_R1.fastq.gz
cat Chica4_P1_run1_R2.fixed.fastq.gz Chica4_P1_run2_R2.fixed.fastq.gz > Chica4_R2.fastq.gz
cat Chica5_P1_run1_R1.fixed.fastq.gz Chica5_P1_run2_R1.fixed.fastq.gz > Chica5_R1.fastq.gz
cat Chica5_P1_run1_R2.fixed.fastq.gz Chica5_P1_run2_R2.fixed.fastq.gz > Chica5_R2.fastq.gz
cat Chica6_P1_run1_R1.fixed.fastq.gz Chica6_P1_run2_R1.fixed.fastq.gz > Chica6_R1.fastq.gz
cat Chica6_P1_run1_R2.fixed.fastq.gz Chica6_P1_run2_R2.fixed.fastq.gz > Chica6_R2.fastq.gz
cat Chica7_P1_run1_R1.fixed.fastq.gz Chica7_P1_run2_R1.fixed.fastq.gz > Chica7_R1.fastq.gz
cat Chica7_P1_run1_R2.fixed.fastq.gz Chica7_P1_run2_R2.fixed.fastq.gz > Chica7_R2.fastq.gz
cat Chica8_P1_run1_R1.fixed.fastq.gz Chica8_P1_run2_R1.fixed.fastq.gz > Chica8_R1.fastq.gz
cat Chica8_P1_run1_R2.fixed.fastq.gz Chica8_P1_run2_R2.fixed.fastq.gz > Chica8_R2.fastq.gz
cat Chica9_P1_run1_R1.fixed.fastq.gz Chica9_P1_run2_R1.fixed.fastq.gz > Chica9_R1.fastq.gz
cat Chica9_P1_run1_R2.fixed.fastq.gz Chica9_P1_run2_R2.fixed.fastq.gz > Chica9_R2.fastq.gz



## Align reads to the surface reference genome


wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/372/685/GCF_000372685.2_Astyanax_mexicanus-2.0/GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna.gz
gzip -d GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna.gz
bwa-mem2 index GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna 

bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575270_Astyanax_mexicanus_Choy_01_1.fastq.gz SRR1575270_Astyanax_mexicanus_Choy_01_2.fastq.gz > Choy_01.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575271_Astyanax_mexicanus_Choy_05_1.fastq.gz SRR1575271_Astyanax_mexicanus_Choy_05_2.fastq.gz > Choy_05.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575272_Astyanax_mexicanus_Choy_06_1.fastq.gz SRR1575272_Astyanax_mexicanus_Choy_06_2.fastq.gz > Choy_06.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575273_Astyanax_mexicanus_Choy_09_1.fastq.gz SRR1575273_Astyanax_mexicanus_Choy_09_2.fastq.gz > Choy_09.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575274_Astyanax_mexicanus_Choy_10_1.fastq.gz SRR1575274_Astyanax_mexicanus_Choy_10_2.fastq.gz > Choy_10.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575275_Astyanax_mexicanus_Choy_11_1.fastq.gz SRR1575275_Astyanax_mexicanus_Choy_11_2.fastq.gz > Choy_11.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575276_Astyanax_mexicanus_Choy_12_1.fastq.gz SRR1575276_Astyanax_mexicanus_Choy_12_2.fastq.gz > Choy_12.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575277_Astyanax_mexicanus_Choy_13_1.fastq.gz SRR1575277_Astyanax_mexicanus_Choy_13_2.fastq.gz > Choy_13.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575278_Astyanax_mexicanus_Choy_14_1.fastq.gz SRR1575278_Astyanax_mexicanus_Choy_14_2.fastq.gz > Choy_14.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575279_Astyanax_mexicanus_Pach_3_1.fastq.gz SRR1575279_Astyanax_mexicanus_Pach_3_2.fastq.gz > Pach_3.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575280_Astyanax_mexicanus_Pach_7_1.fastq.gz SRR1575280_Astyanax_mexicanus_Pach_7_2.fastq.gz > Pach_7.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575281_Astyanax_mexicanus_Pach_8_1.fastq.gz SRR1575281_Astyanax_mexicanus_Pach_8_2.fastq.gz > Pach_8.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575282_Astyanax_mexicanus_Pach_9_1.fastq.gz SRR1575282_Astyanax_mexicanus_Pach_9_2.fastq.gz > Pach_9.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575283_Astyanax_mexicanus_Pach_11_1.fastq.gz SRR1575283_Astyanax_mexicanus_Pach_11_2.fastq.gz > Pach_11.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575284_Astyanax_mexicanus_Pach_12_1.fastq.gz SRR1575284_Astyanax_mexicanus_Pach_12_2.fastq.gz > Pach_12.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575285_Astyanax_mexicanus_Pach_14_1.fastq.gz SRR1575285_Astyanax_mexicanus_Pach_14_2.fastq.gz > Pach_14.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575286_Astyanax_mexicanus_Pach_15_1.fastq.gz SRR1575286_Astyanax_mexicanus_Pach_15_2.fastq.gz > Pach_15.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575287_Astyanax_mexicanus_Pach_17_1.fastq.gz SRR1575287_Astyanax_mexicanus_Pach_17_2.fastq.gz > Pach_17.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575288_Astyanax_mexicanus_Molino_2a_1.fastq.gz SRR1575288_Astyanax_mexicanus_Molino_2a_2.fastq.gz > Molino_2a.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575289_Astyanax_mexicanus_Molino_7a_1.fastq.gz SRR1575289_Astyanax_mexicanus_Molino_7a_2.fastq.gz > Molino_7a.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575290_Astyanax_mexicanus_Molino_9b_1.fastq.gz SRR1575290_Astyanax_mexicanus_Molino_9b_2.fastq.gz > Molino_9b.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575291_Astyanax_mexicanus_Molino_10b_1.fastq.gz SRR1575291_Astyanax_mexicanus_Molino_10b_2.fastq.gz > Molino_10b.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575292_Astyanax_mexicanus_Molino_11a_1.fastq.gz SRR1575292_Astyanax_mexicanus_Molino_11a_2.fastq.gz > Molino_11a.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575293_Astyanax_mexicanus_Molino_12a_1.fastq.gz SRR1575293_Astyanax_mexicanus_Molino_12a_2.fastq.gz > Molino_12a.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575294_Astyanax_mexicanus_Molino_13b_1.fastq.gz SRR1575294_Astyanax_mexicanus_Molino_13b_2.fastq.gz > Molino_13b.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575295_Astyanax_mexicanus_Molino_14a_1.fastq.gz SRR1575295_Astyanax_mexicanus_Molino_14a_2.fastq.gz > Molino_14a.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575296_Astyanax_mexicanus_Molino_15b_1.fastq.gz SRR1575296_Astyanax_mexicanus_Molino_15b_2.fastq.gz > Molino_15b.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575297_Astyanax_mexicanus_Rascon_02_1.fastq.gz SRR1575297_Astyanax_mexicanus_Rascon_02_2.fastq.gz > Rascon_02.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1575298_Astyanax_mexicanus_Rascon_04_1.fastq.gz SRR1575298_Astyanax_mexicanus_Rascon_04_2.fastq.gz > Rascon_04.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927214_Astyanax_mexicanus_Tinaja_12_1.fastq.gz SRR1927214_Astyanax_mexicanus_Tinaja_12_2.fastq.gz > Tinaja_12.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927215_Astyanax_mexicanus_Tinaja_B_1.fastq.gz SRR1927215_Astyanax_mexicanus_Tinaja_B_2.fastq.gz > Tinaja_B.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927218_Astyanax_mexicanus_Tinaja_2_1.fastq.gz SRR1927218_Astyanax_mexicanus_Tinaja_2_2.fastq.gz > Tinaja_2.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927221_Astyanax_mexicanus_Tinaja_C_1.fastq.gz SRR1927221_Astyanax_mexicanus_Tinaja_C_2.fastq.gz > Tinaja_C.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927224_Astyanax_mexicanus_Tinaja_3_1.fastq.gz SRR1927224_Astyanax_mexicanus_Tinaja_3_2.fastq.gz > Tinaja_3.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927228_Astyanax_mexicanus_Tinaja_D_1.fastq.gz SRR1927228_Astyanax_mexicanus_Tinaja_D_2.fastq.gz > Tinaja_D.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927232_Astyanax_mexicanus_Tinaja_5_1.fastq.gz SRR1927232_Astyanax_mexicanus_Tinaja_5_2.fastq.gz > Tinaja_5.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927233_Astyanax_mexicanus_Tinaja_E_1.fastq.gz SRR1927233_Astyanax_mexicanus_Tinaja_E_2.fastq.gz > Tinaja_E.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927234_Astyanax_mexicanus_Rascon_13_1.fastq.gz SRR1927234_Astyanax_mexicanus_Rascon_13_2.fastq.gz > Rascon_13.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927235_Astyanax_mexicanus_Rascon_15_1.fastq.gz SRR1927235_Astyanax_mexicanus_Rascon_15_2.fastq.gz > Rascon_15.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927236_Astyanax_mexicanus_Rascon_8_1.fastq.gz SRR1927236_Astyanax_mexicanus_Rascon_8_2.fastq.gz > Rascon_8.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927237_Astyanax_mexicanus_Rascon_6_1.fastq.gz SRR1927237_Astyanax_mexicanus_Rascon_6_2.fastq.gz > Rascon_6.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927238_Astyanax_aeneus_Aeneus_Surface_1.fastq.gz SRR1927238_Astyanax_aeneus_Aeneus_Surface_2.fastq.gz > Aaeneus.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR2040422_Gymnocorymbus_ternetzi_White_Long_Fin_1.fastq.gz SRR2040422_Gymnocorymbus_ternetzi_White_Long_Fin_2.fastq.gz > Gternetzi.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927212_Astyanax_mexicanus_Tinaja_6_1.fastq.gz SRR1927212_Astyanax_mexicanus_Tinaja_6_2.fastq.gz > Tinaja_6.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna SRR1927184_Astyanax_mexicanus_Tinaja_11_1.fastq.gz SRR1927184_Astyanax_mexicanus_Tinaja_11_2.fastq.gz > Tinaja_11.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica10_R1.fastq.gz Chica10_R2.fastq.gz > Chica_10.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica11_R1.fastq.gz Chica11_R2.fastq.gz > Chica_11.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica12_R1.fastq.gz Chica12_R2.fastq.gz > Chica_12.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica13_R1.fastq.gz Chica13_R2.fastq.gz > Chica_13.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica14_R1.fastq.gz Chica14_R2.fastq.gz > Chica_14.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica15_R1.fastq.gz Chica15_R2.fastq.gz > Chica_15.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica16_R1.fastq.gz Chica16_R2.fastq.gz > Chica_16.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica17_R1.fastq.gz Chica17_R2.fastq.gz > Chica_17.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica18_R1.fastq.gz Chica18_R2.fastq.gz > Chica_18.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica19_R1.fastq.gz Chica19_R2.fastq.gz > Chica_19.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica1_R1.fastq.gz Chica1_R2.fastq.gz > Chica_1.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica2_R1.fastq.gz Chica2_R2.fastq.gz > Chica_2.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica3_R1.fastq.gz Chica3_R2.fastq.gz > Chica_3.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica4_R1.fastq.gz Chica4_R2.fastq.gz > Chica_4.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica5_R1.fastq.gz Chica5_R2.fastq.gz > Chica_5.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica6_R1.fastq.gz Chica6_R2.fastq.gz > Chica_6.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica7_R1.fastq.gz Chica7_R2.fastq.gz > Chica_7.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica8_R1.fastq.gz Chica8_R2.fastq.gz > Chica_8.sam 
bwa-mem2 mem -t 20 GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna Chica9_R1.fastq.gz Chica9_R2.fastq.gz > Chica_9.sam 



# Conert sam files to bam files


samtools view -S -b Aaeneus.sam > Aaeneus.bam
samtools view -S -b Chica_10.sam > Chica_10.bam
samtools view -S -b Chica_11.sam > Chica_11.bam
samtools view -S -b Chica_12.sam > Chica_12.bam
samtools view -S -b Chica_13.sam > Chica_13.bam
samtools view -S -b Chica_14.sam > Chica_14.bam
samtools view -S -b Chica_15.sam > Chica_15.bam
samtools view -S -b Chica_16.sam > Chica_16.bam
samtools view -S -b Chica_17.sam > Chica_17.bam
samtools view -S -b Chica_18.sam > Chica_18.bam
samtools view -S -b Chica_19.sam > Chica_19.bam
samtools view -S -b Chica_1.sam > Chica_1.bam
samtools view -S -b Chica_2.sam > Chica_2.bam
samtools view -S -b Chica_3.sam > Chica_3.bam
samtools view -S -b Chica_4.sam > Chica_4.bam
samtools view -S -b Chica_5.sam > Chica_5.bam
samtools view -S -b Chica_6.sam > Chica_6.bam
samtools view -S -b Chica_7.sam > Chica_7.bam
samtools view -S -b Chica_8.sam > Chica_8.bam
samtools view -S -b Chica_9.sam > Chica_9.bam
samtools view -S -b Choy_01.sam > Choy_01.bam
samtools view -S -b Choy_05.sam > Choy_05.bam
samtools view -S -b Choy_06.sam > Choy_06.bam
samtools view -S -b Choy_09.sam > Choy_09.bam
samtools view -S -b Choy_10.sam > Choy_10.bam
samtools view -S -b Choy_11.sam > Choy_11.bam
samtools view -S -b Choy_12.sam > Choy_12.bam
samtools view -S -b Choy_13.sam > Choy_13.bam
samtools view -S -b Choy_14.sam > Choy_14.bam
samtools view -S -b Gternetzi.sam > Gternetzi.bam
samtools view -S -b Molino_10b.sam > Molino_10b.bam
samtools view -S -b Molino_11a.sam > Molino_11a.bam
samtools view -S -b Molino_12a.sam > Molino_12a.bam
samtools view -S -b Molino_13b.sam > Molino_13b.bam
samtools view -S -b Molino_14a.sam > Molino_14a.bam
samtools view -S -b Molino_15b.sam > Molino_15b.bam
samtools view -S -b Molino_2a.sam > Molino_2a.bam
samtools view -S -b Molino_7a.sam > Molino_7a.bam
samtools view -S -b Molino_9b.sam > Molino_9b.bam
samtools view -S -b Pach_11.sam > Pach_11.bam
samtools view -S -b Pach_12.sam > Pach_12.bam
samtools view -S -b Pach_14.sam > Pach_14.bam
samtools view -S -b Pach_15.sam > Pach_15.bam
samtools view -S -b Pach_17.sam > Pach_17.bam
samtools view -S -b Pach_3.sam > Pach_3.bam
samtools view -S -b Pach_7.sam > Pach_7.bam
samtools view -S -b Pach_8.sam > Pach_8.bam
samtools view -S -b Pach_9.sam > Pach_9.bam
samtools view -S -b Rascon_02.sam > Rascon_02.bam
samtools view -S -b Rascon_04.sam > Rascon_04.bam
samtools view -S -b Rascon_13.sam > Rascon_13.bam
samtools view -S -b Rascon_15.sam > Rascon_15.bam
samtools view -S -b Rascon_6.sam > Rascon_6.bam
samtools view -S -b Rascon_8.sam > Rascon_8.bam
samtools view -S -b Tinaja_11.sam > Tinaja_11.bam
samtools view -S -b Tinaja_12.sam > Tinaja_12.bam
samtools view -S -b Tinaja_2.sam > Tinaja_2.bam
samtools view -S -b Tinaja_3.sam > Tinaja_3.bam
samtools view -S -b Tinaja_5.sam > Tinaja_5.bam
samtools view -S -b Tinaja_6.sam > Tinaja_6.bam
samtools view -S -b Tinaja_B.sam > Tinaja_B.bam
samtools view -S -b Tinaja_C.sam > Tinaja_C.bam
samtools view -S -b Tinaja_D.sam > Tinaja_D.bam
samtools view -S -b Tinaja_E.sam > Tinaja_E.bam



#Sort SAM files


atk SortSam --INPUT Aaeneus.bam --OUTPUT Aaeneus.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_10.bam --OUTPUT Chica_10.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_11.bam --OUTPUT Chica_11.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_12.bam --OUTPUT Chica_12.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_13.bam --OUTPUT Chica_13.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_14.bam --OUTPUT Chica_14.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_15.bam --OUTPUT Chica_15.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_16.bam --OUTPUT Chica_16.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_17.bam --OUTPUT Chica_17.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_18.bam --OUTPUT Chica_18.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_19.bam --OUTPUT Chica_19.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_1.bam --OUTPUT Chica_1.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_2.bam --OUTPUT Chica_2.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_3.bam --OUTPUT Chica_3.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_4.bam --OUTPUT Chica_4.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_5.bam --OUTPUT Chica_5.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_6.bam --OUTPUT Chica_6.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_7.bam --OUTPUT Chica_7.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_8.bam --OUTPUT Chica_8.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Chica_9.bam --OUTPUT Chica_9.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Choy_01.bam --OUTPUT Choy_01.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Choy_05.bam --OUTPUT Choy_05.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Choy_06.bam --OUTPUT Choy_06.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Choy_09.bam --OUTPUT Choy_09.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Choy_10.bam --OUTPUT Choy_10.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Choy_11.bam --OUTPUT Choy_11.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Choy_12.bam --OUTPUT Choy_12.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Choy_13.bam --OUTPUT Choy_13.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Choy_14.bam --OUTPUT Choy_14.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Gternetzi.bam --OUTPUT Gternetzi.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Molino_10b.bam --OUTPUT Molino_10b.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Molino_11a.bam --OUTPUT Molino_11a.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Molino_12a.bam --OUTPUT Molino_12a.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Molino_13b.bam --OUTPUT Molino_13b.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Molino_14a.bam --OUTPUT Molino_14a.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Molino_15b.bam --OUTPUT Molino_15b.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Molino_2a.bam --OUTPUT Molino_2a.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Molino_7a.bam --OUTPUT Molino_7a.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Molino_9b.bam --OUTPUT Molino_9b.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Pach_11.bam --OUTPUT Pach_11.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Pach_12.bam --OUTPUT Pach_12.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Pach_14.bam --OUTPUT Pach_14.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Pach_15.bam --OUTPUT Pach_15.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Pach_17.bam --OUTPUT Pach_17.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Pach_3.bam --OUTPUT Pach_3.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Pach_7.bam --OUTPUT Pach_7.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Pach_8.bam --OUTPUT Pach_8.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Pach_9.bam --OUTPUT Pach_9.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Rascon_02.bam --OUTPUT Rascon_02.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Rascon_04.bam --OUTPUT Rascon_04.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Rascon_13.bam --OUTPUT Rascon_13.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Rascon_15.bam --OUTPUT Rascon_15.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Rascon_6.bam --OUTPUT Rascon_6.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Rascon_8.bam --OUTPUT Rascon_8.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Tinaja_11.bam --OUTPUT Tinaja_11.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Tinaja_12.bam --OUTPUT Tinaja_12.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Tinaja_2.bam --OUTPUT Tinaja_2.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Tinaja_3.bam --OUTPUT Tinaja_3.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Tinaja_5.bam --OUTPUT Tinaja_5.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Tinaja_6.bam --OUTPUT Tinaja_6.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Tinaja_B.bam --OUTPUT Tinaja_B.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Tinaja_C.bam --OUTPUT Tinaja_C.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Tinaja_D.bam --OUTPUT Tinaja_D.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort
gatk SortSam --INPUT Tinaja_E.bam --OUTPUT Tinaja_E.sorted.bam --SORT_ORDER coordinate --TMP_DIR Temp_dir_sort



# Remove duplicated reads


gatk MarkDuplicates -I Aaeneus.sorted.bam -O Aaeneus.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Aaeneus.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_10.sorted.bam -O Chica_10.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_10.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_11.sorted.bam -O Chica_11.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_11.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_12.sorted.bam -O Chica_12.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_12.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_13.sorted.bam -O Chica_13.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_13.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_14.sorted.bam -O Chica_14.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_14.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_15.sorted.bam -O Chica_15.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_15.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_16.sorted.bam -O Chica_16.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_16.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_17.sorted.bam -O Chica_17.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_17.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_18.sorted.bam -O Chica_18.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_18.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_19.sorted.bam -O Chica_19.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_19.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_1.sorted.bam -O Chica_1.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_1.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_2.sorted.bam -O Chica_2.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_2.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_3.sorted.bam -O Chica_3.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_3.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_4.sorted.bam -O Chica_4.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_4.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_5.sorted.bam -O Chica_5.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_5.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_6.sorted.bam -O Chica_6.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_6.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_7.sorted.bam -O Chica_7.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_7.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_8.sorted.bam -O Chica_8.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_8.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Chica_9.sorted.bam -O Chica_9.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Chica_9.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Choy_01.sorted.bam -O Choy_01.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Choy_01.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Choy_05.sorted.bam -O Choy_05.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Choy_05.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Choy_06.sorted.bam -O Choy_06.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Choy_06.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Choy_09.sorted.bam -O Choy_09.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Choy_09.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Choy_10.sorted.bam -O Choy_10.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Choy_10.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Choy_11.sorted.bam -O Choy_11.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Choy_11.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Choy_12.sorted.bam -O Choy_12.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Choy_12.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Choy_13.sorted.bam -O Choy_13.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Choy_13.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Choy_14.sorted.bam -O Choy_14.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Choy_14.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Gternetzi.sorted.bam -O Gternetzi.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Gternetzi.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Molino_10b.sorted.bam -O Molino_10b.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Molino_10b.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Molino_11a.sorted.bam -O Molino_11a.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Molino_11a.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Molino_12a.sorted.bam -O Molino_12a.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Molino_12a.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Molino_13b.sorted.bam -O Molino_13b.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Molino_13b.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Molino_14a.sorted.bam -O Molino_14a.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Molino_14a.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Molino_15b.sorted.bam -O Molino_15b.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Molino_15b.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Molino_2a.sorted.bam -O Molino_2a.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Molino_2a.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Molino_7a.sorted.bam -O Molino_7a.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Molino_7a.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Molino_9b.sorted.bam -O Molino_9b.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Molino_9b.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Pach_11.sorted.bam -O Pach_11.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Pach_11.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Pach_12.sorted.bam -O Pach_12.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Pach_12.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Pach_14.sorted.bam -O Pach_14.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Pach_14.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Pach_15.sorted.bam -O Pach_15.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Pach_15.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Pach_17.sorted.bam -O Pach_17.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Pach_17.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Pach_3.sorted.bam -O Pach_3.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Pach_3.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Pach_7.sorted.bam -O Pach_7.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Pach_7.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Pach_8.sorted.bam -O Pach_8.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Pach_8.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Pach_9.sorted.bam -O Pach_9.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Pach_9.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Rascon_02.sorted.bam -O Rascon_02.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Rascon_02.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Rascon_04.sorted.bam -O Rascon_04.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Rascon_04.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Rascon_13.sorted.bam -O Rascon_13.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Rascon_13.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Rascon_15.sorted.bam -O Rascon_15.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Rascon_15.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Rascon_6.sorted.bam -O Rascon_6.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Rascon_6.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Rascon_8.sorted.bam -O Rascon_8.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Rascon_8.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Tinaja_11.sorted.bam -O Tinaja_11.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Tinaja_11.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Tinaja_12.sorted.bam -O Tinaja_12.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Tinaja_12.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Tinaja_2.sorted.bam -O Tinaja_2.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Tinaja_2.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Tinaja_3.sorted.bam -O Tinaja_3.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Tinaja_3.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Tinaja_5.sorted.bam -O Tinaja_5.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Tinaja_5.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Tinaja_6.sorted.bam -O Tinaja_6.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Tinaja_6.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Tinaja_B.sorted.bam -O Tinaja_B.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Tinaja_B.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Tinaja_C.sorted.bam -O Tinaja_C.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Tinaja_C.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Tinaja_D.sorted.bam -O Tinaja_D.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Tinaja_D.metrics_dup --TMP_DIR Temp_dir_sort
gatk MarkDuplicates -I Tinaja_E.sorted.bam -O Tinaja_E.sorted.dup.bam --REMOVE_DUPLICATES TRUE -M Tinaja_E.metrics_dup --TMP_DIR Temp_dir_sort


## Name reads for GATK pipeline


gatk AddOrReplaceReadGroups --INPUT Aaeneus.sorted.dup.bam --OUTPUT Aaeneus.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Aaeneus
gatk AddOrReplaceReadGroups --INPUT Chica_10.sorted.dup.bam --OUTPUT Chica_10.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_10
gatk AddOrReplaceReadGroups --INPUT Chica_11.sorted.dup.bam --OUTPUT Chica_11.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_11
gatk AddOrReplaceReadGroups --INPUT Chica_12.sorted.dup.bam --OUTPUT Chica_12.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_12
gatk AddOrReplaceReadGroups --INPUT Chica_13.sorted.dup.bam --OUTPUT Chica_13.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_13
gatk AddOrReplaceReadGroups --INPUT Chica_14.sorted.dup.bam --OUTPUT Chica_14.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_14
gatk AddOrReplaceReadGroups --INPUT Chica_15.sorted.dup.bam --OUTPUT Chica_15.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_15
gatk AddOrReplaceReadGroups --INPUT Chica_16.sorted.dup.bam --OUTPUT Chica_16.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_16
gatk AddOrReplaceReadGroups --INPUT Chica_17.sorted.dup.bam --OUTPUT Chica_17.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_17
gatk AddOrReplaceReadGroups --INPUT Chica_18.sorted.dup.bam --OUTPUT Chica_18.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_18
gatk AddOrReplaceReadGroups --INPUT Chica_19.sorted.dup.bam --OUTPUT Chica_19.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_19
gatk AddOrReplaceReadGroups --INPUT Chica_1.sorted.dup.bam --OUTPUT Chica_1.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_1
gatk AddOrReplaceReadGroups --INPUT Chica_2.sorted.dup.bam --OUTPUT Chica_2.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_2
gatk AddOrReplaceReadGroups --INPUT Chica_3.sorted.dup.bam --OUTPUT Chica_3.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_3
gatk AddOrReplaceReadGroups --INPUT Chica_4.sorted.dup.bam --OUTPUT Chica_4.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_4
gatk AddOrReplaceReadGroups --INPUT Chica_5.sorted.dup.bam --OUTPUT Chica_5.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_5
gatk AddOrReplaceReadGroups --INPUT Chica_6.sorted.dup.bam --OUTPUT Chica_6.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_6
gatk AddOrReplaceReadGroups --INPUT Chica_7.sorted.dup.bam --OUTPUT Chica_7.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_7
gatk AddOrReplaceReadGroups --INPUT Chica_8.sorted.dup.bam --OUTPUT Chica_8.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_8
gatk AddOrReplaceReadGroups --INPUT Chica_9.sorted.dup.bam --OUTPUT Chica_9.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Chica_9
gatk AddOrReplaceReadGroups --INPUT Choy_01.sorted.dup.bam --OUTPUT Choy_01.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Choy_01
gatk AddOrReplaceReadGroups --INPUT Choy_05.sorted.dup.bam --OUTPUT Choy_05.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Choy_05
gatk AddOrReplaceReadGroups --INPUT Choy_06.sorted.dup.bam --OUTPUT Choy_06.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Choy_06
gatk AddOrReplaceReadGroups --INPUT Choy_09.sorted.dup.bam --OUTPUT Choy_09.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Choy_09
gatk AddOrReplaceReadGroups --INPUT Choy_10.sorted.dup.bam --OUTPUT Choy_10.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Choy_10
gatk AddOrReplaceReadGroups --INPUT Choy_11.sorted.dup.bam --OUTPUT Choy_11.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Choy_11
gatk AddOrReplaceReadGroups --INPUT Choy_12.sorted.dup.bam --OUTPUT Choy_12.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Choy_12
gatk AddOrReplaceReadGroups --INPUT Choy_13.sorted.dup.bam --OUTPUT Choy_13.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Choy_13
gatk AddOrReplaceReadGroups --INPUT Choy_14.sorted.dup.bam --OUTPUT Choy_14.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Choy_14
gatk AddOrReplaceReadGroups --INPUT Gternetzi.sorted.dup.bam --OUTPUT Gternetzi.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Gternetzi
gatk AddOrReplaceReadGroups --INPUT Molino_10b.sorted.dup.bam --OUTPUT Molino_10b.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Molino_10b
gatk AddOrReplaceReadGroups --INPUT Molino_11a.sorted.dup.bam --OUTPUT Molino_11a.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Molino_11a
gatk AddOrReplaceReadGroups --INPUT Molino_12a.sorted.dup.bam --OUTPUT Molino_12a.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Molino_12a
gatk AddOrReplaceReadGroups --INPUT Molino_13b.sorted.dup.bam --OUTPUT Molino_13b.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Molino_13b
gatk AddOrReplaceReadGroups --INPUT Molino_14a.sorted.dup.bam --OUTPUT Molino_14a.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Molino_14a
gatk AddOrReplaceReadGroups --INPUT Molino_15b.sorted.dup.bam --OUTPUT Molino_15b.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Molino_15b
gatk AddOrReplaceReadGroups --INPUT Molino_2a.sorted.dup.bam --OUTPUT Molino_2a.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Molino_2a
gatk AddOrReplaceReadGroups --INPUT Molino_7a.sorted.dup.bam --OUTPUT Molino_7a.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Molino_7a
gatk AddOrReplaceReadGroups --INPUT Molino_9b.sorted.dup.bam --OUTPUT Molino_9b.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Molino_9b
gatk AddOrReplaceReadGroups --INPUT Pach_11.sorted.dup.bam --OUTPUT Pach_11.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Pach_11
gatk AddOrReplaceReadGroups --INPUT Pach_12.sorted.dup.bam --OUTPUT Pach_12.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Pach_12
gatk AddOrReplaceReadGroups --INPUT Pach_14.sorted.dup.bam --OUTPUT Pach_14.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Pach_14
gatk AddOrReplaceReadGroups --INPUT Pach_15.sorted.dup.bam --OUTPUT Pach_15.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Pach_15
gatk AddOrReplaceReadGroups --INPUT Pach_17.sorted.dup.bam --OUTPUT Pach_17.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Pach_17
gatk AddOrReplaceReadGroups --INPUT Pach_3.sorted.dup.bam --OUTPUT Pach_3.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Pach_3
gatk AddOrReplaceReadGroups --INPUT Pach_7.sorted.dup.bam --OUTPUT Pach_7.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Pach_7
gatk AddOrReplaceReadGroups --INPUT Pach_8.sorted.dup.bam --OUTPUT Pach_8.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Pach_8
gatk AddOrReplaceReadGroups --INPUT Pach_9.sorted.dup.bam --OUTPUT Pach_9.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Pach_9
gatk AddOrReplaceReadGroups --INPUT Rascon_02.sorted.dup.bam --OUTPUT Rascon_02.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Rascon_02
gatk AddOrReplaceReadGroups --INPUT Rascon_04.sorted.dup.bam --OUTPUT Rascon_04.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Rascon_04
gatk AddOrReplaceReadGroups --INPUT Rascon_13.sorted.dup.bam --OUTPUT Rascon_13.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Rascon_13
gatk AddOrReplaceReadGroups --INPUT Rascon_15.sorted.dup.bam --OUTPUT Rascon_15.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Rascon_15
gatk AddOrReplaceReadGroups --INPUT Rascon_6.sorted.dup.bam --OUTPUT Rascon_6.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Rascon_6
gatk AddOrReplaceReadGroups --INPUT Rascon_8.sorted.dup.bam --OUTPUT Rascon_8.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Rascon_8
gatk AddOrReplaceReadGroups --INPUT Tinaja_11.sorted.dup.bam --OUTPUT Tinaja_11.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Tinaja_11
gatk AddOrReplaceReadGroups --INPUT Tinaja_12.sorted.dup.bam --OUTPUT Tinaja_12.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Tinaja_12
gatk AddOrReplaceReadGroups --INPUT Tinaja_2.sorted.dup.bam --OUTPUT Tinaja_2.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Tinaja_2
gatk AddOrReplaceReadGroups --INPUT Tinaja_3.sorted.dup.bam --OUTPUT Tinaja_3.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Tinaja_3
gatk AddOrReplaceReadGroups --INPUT Tinaja_5.sorted.dup.bam --OUTPUT Tinaja_5.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Tinaja_5
gatk AddOrReplaceReadGroups --INPUT Tinaja_6.sorted.dup.bam --OUTPUT Tinaja_6.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Tinaja_6
gatk AddOrReplaceReadGroups --INPUT Tinaja_B.sorted.dup.bam --OUTPUT Tinaja_B.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Tinaja_B
gatk AddOrReplaceReadGroups --INPUT Tinaja_C.sorted.dup.bam --OUTPUT Tinaja_C.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Tinaja_C
gatk AddOrReplaceReadGroups --INPUT Tinaja_D.sorted.dup.bam --OUTPUT Tinaja_D.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Tinaja_D
gatk AddOrReplaceReadGroups --INPUT Tinaja_E.sorted.dup.bam --OUTPUT Tinaja_E.sorted.dup.named.bam --RGLB lib1 --RGPL illumina --RGPU unit1 --RGSM Tinaja_E


#Build index for bam files


gatk BuildBamIndex --INPUT Aaeneus.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_10.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_11.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_12.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_13.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_14.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_15.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_16.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_17.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_18.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_19.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_1.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_2.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_3.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_4.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_5.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_6.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_7.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_8.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Chica_9.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Choy_01.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Choy_05.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Choy_06.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Choy_09.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Choy_10.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Choy_11.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Choy_12.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Choy_13.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Choy_14.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Gternetzi.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Molino_10b.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Molino_11a.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Molino_12a.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Molino_13b.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Molino_14a.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Molino_15b.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Molino_2a.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Molino_7a.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Molino_9b.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Pach_11.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Pach_12.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Pach_14.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Pach_15.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Pach_17.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Pach_3.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Pach_7.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Pach_8.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Pach_9.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Rascon_02.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Rascon_04.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Rascon_13.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Rascon_15.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Rascon_6.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Rascon_8.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Tinaja_11.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Tinaja_12.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Tinaja_2.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Tinaja_3.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Tinaja_5.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Tinaja_6.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Tinaja_B.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Tinaja_C.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Tinaja_D.sorted.dup.named.bam
gatk BuildBamIndex --INPUT Tinaja_E.sorted.dup.named.bam


## Get the coverage of each samples


samtools depth Aaeneus.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Aaeneus.depth
samtools depth Chica_10.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_10.depth
samtools depth Chica_11.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_11.depth
samtools depth Chica_12.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_12.depth
samtools depth Chica_13.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_13.depth
samtools depth Chica_14.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_14.depth
samtools depth Chica_15.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_15.depth
samtools depth Chica_16.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_16.depth
samtools depth Chica_17.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_17.depth
samtools depth Chica_18.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_18.depth
samtools depth Chica_19.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_19.depth
samtools depth Chica_1.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_1.depth
samtools depth Chica_2.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_2.depth
samtools depth Chica_3.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_3.depth
samtools depth Chica_4.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_4.depth
samtools depth Chica_5.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_5.depth
samtools depth Chica_6.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_6.depth
samtools depth Chica_7.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_7.depth
samtools depth Chica_8.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_8.depth
samtools depth Chica_9.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Chica_9.depth
samtools depth Choy_01.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Choy_01.depth
samtools depth Choy_05.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Choy_05.depth
samtools depth Choy_06.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Choy_06.depth
samtools depth Choy_09.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Choy_09.depth
samtools depth Choy_10.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Choy_10.depth
samtools depth Choy_11.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Choy_11.depth
samtools depth Choy_12.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Choy_12.depth
samtools depth Choy_13.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Choy_13.depth
samtools depth Choy_14.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Choy_14.depth
samtools depth Gternetzi.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Gternetzi.depth
samtools depth Molino_10b.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Molino_10b.depth
samtools depth Molino_11a.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Molino_11a.depth
samtools depth Molino_12a.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Molino_12a.depth
samtools depth Molino_13b.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Molino_13b.depth
samtools depth Molino_14a.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Molino_14a.depth
samtools depth Molino_15b.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Molino_15b.depth
samtools depth Molino_2a.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Molino_2a.depth
samtools depth Molino_7a.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Molino_7a.depth
samtools depth Molino_9b.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Molino_9b.depth
samtools depth Pach_11.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Pach_11.depth
samtools depth Pach_12.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Pach_12.depth
samtools depth Pach_14.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Pach_14.depth
samtools depth Pach_15.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Pach_15.depth
samtools depth Pach_17.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Pach_17.depth
samtools depth Pach_3.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Pach_3.depth
samtools depth Pach_7.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Pach_7.depth
samtools depth Pach_8.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Pach_8.depth
samtools depth Pach_9.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Pach_9.depth
samtools depth Rascon_02.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Rascon_02.depth
samtools depth Rascon_04.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Rascon_04.depth
samtools depth Rascon_13.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Rascon_13.depth
samtools depth Rascon_15.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Rascon_15.depth
samtools depth Rascon_6.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Rascon_6.depth
samtools depth Rascon_8.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Rascon_8.depth
samtools depth Tinaja_11.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Tinaja_11.depth
samtools depth Tinaja_12.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Tinaja_12.depth
samtools depth Tinaja_2.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Tinaja_2.depth
samtools depth Tinaja_3.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Tinaja_3.depth
samtools depth Tinaja_5.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Tinaja_5.depth
samtools depth Tinaja_6.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Tinaja_6.depth
samtools depth Tinaja_B.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Tinaja_B.depth
samtools depth Tinaja_C.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Tinaja_C.depth
samtools depth Tinaja_D.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Tinaja_D.depth
samtools depth Tinaja_E.sorted.dup.named.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}' > Tinaja_E.depth



for i in *.depth ; do sp_name=`echo "$i" | sed 's/.depth//g'` ; nb=`sed 's/.*=  //g' $i` ; echo "$sp_name,$nb" ; done > All_individuals_mean_coverage.csv



## GATK Haplotype caller



gatk CreateSequenceDictionary -R GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna
samtools faidx GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna


gatk HaplotypeCaller --input Aaeneus_granadas.sorted.dup.named.bam --output Aaeneus_granadas.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Aaeneus.sorted.dup.named.bam --output Aaeneus.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Amex_Texas.sorted.dup.named.bam --output Amex_Texas.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_10.sorted.dup.named.bam --output Chica_10.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_11.sorted.dup.named.bam --output Chica_11.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_12.sorted.dup.named.bam --output Chica_12.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_13.sorted.dup.named.bam --output Chica_13.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_14.sorted.dup.named.bam --output Chica_14.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_15.sorted.dup.named.bam --output Chica_15.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_16.sorted.dup.named.bam --output Chica_16.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_17.sorted.dup.named.bam --output Chica_17.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_18.sorted.dup.named.bam --output Chica_18.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_19.sorted.dup.named.bam --output Chica_19.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_1.sorted.dup.named.bam --output Chica_1.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_2.sorted.dup.named.bam --output Chica_2.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_3.sorted.dup.named.bam --output Chica_3.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_4.sorted.dup.named.bam --output Chica_4.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_5.sorted.dup.named.bam --output Chica_5.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_6.sorted.dup.named.bam --output Chica_6.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_7.sorted.dup.named.bam --output Chica_7.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_8.sorted.dup.named.bam --output Chica_8.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Chica_9.sorted.dup.named.bam --output Chica_9.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Choy_01.sorted.dup.named.bam --output Choy_01.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Choy_05.sorted.dup.named.bam --output Choy_05.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Choy_06.sorted.dup.named.bam --output Choy_06.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Choy_09.sorted.dup.named.bam --output Choy_09.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Choy_10.sorted.dup.named.bam --output Choy_10.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Choy_11.sorted.dup.named.bam --output Choy_11.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Choy_12.sorted.dup.named.bam --output Choy_12.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Choy_13.sorted.dup.named.bam --output Choy_13.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Choy_14.sorted.dup.named.bam --output Choy_14.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Molino_10b.sorted.dup.named.bam --output Molino_10b.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Molino_11a.sorted.dup.named.bam --output Molino_11a.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Molino_12a.sorted.dup.named.bam --output Molino_12a.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Molino_13b.sorted.dup.named.bam --output Molino_13b.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Molino_14a.sorted.dup.named.bam --output Molino_14a.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Molino_15b.sorted.dup.named.bam --output Molino_15b.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Molino_2a.sorted.dup.named.bam --output Molino_2a.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Molino_7a.sorted.dup.named.bam --output Molino_7a.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Molino_9b.sorted.dup.named.bam --output Molino_9b.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Pach_11.sorted.dup.named.bam --output Pach_11.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Pach_12.sorted.dup.named.bam --output Pach_12.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Pach_14.sorted.dup.named.bam --output Pach_14.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Pach_15.sorted.dup.named.bam --output Pach_15.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Pach_17.sorted.dup.named.bam --output Pach_17.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Pach_3.sorted.dup.named.bam --output Pach_3.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Pach_7.sorted.dup.named.bam --output Pach_7.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Pach_8.sorted.dup.named.bam --output Pach_8.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Pach_9.sorted.dup.named.bam --output Pach_9.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Rascon_02.sorted.dup.named.bam --output Rascon_02.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Rascon_04.sorted.dup.named.bam --output Rascon_04.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Rascon_13.sorted.dup.named.bam --output Rascon_13.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Rascon_15.sorted.dup.named.bam --output Rascon_15.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Rascon_6.sorted.dup.named.bam --output Rascon_6.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Rascon_8.sorted.dup.named.bam --output Rascon_8.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Tinaja_11.sorted.dup.named.bam --output Tinaja_11.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Tinaja_12.sorted.dup.named.bam --output Tinaja_12.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Tinaja_2.sorted.dup.named.bam --output Tinaja_2.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Tinaja_3.sorted.dup.named.bam --output Tinaja_3.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Tinaja_5.sorted.dup.named.bam --output Tinaja_5.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Tinaja_6.sorted.dup.named.bam --output Tinaja_6.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Tinaja_B.sorted.dup.named.bam --output Tinaja_B.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Tinaja_C.sorted.dup.named.bam --output Tinaja_C.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Tinaja_D.sorted.dup.named.bam --output Tinaja_D.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Tinaja_E.sorted.dup.named.bam --output Tinaja_E.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort
gatk HaplotypeCaller --input Gternetzi.sorted.dup.named.bam --output Gternetzi.g.vcf.gz --reference GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna --ERC GVCF --native-pair-hmm-threads 20 --tmp-dir Temp_dir_sort



## CombineGVCF


gatk CombineGVCFs -V Gternetzi.g.vcf.gz -V Aaeneus.g.vcf.gz -V Chica_10.g.vcf.gz -V Chica_11.g.vcf.gz -V Chica_12.g.vcf.gz -V Chica_13.g.vcf.gz -V Chica_14.g.vcf.gz -V Chica_15.g.vcf.gz -V Chica_16.g.vcf.gz -V Chica_17.g.vcf.gz -V Chica_18.g.vcf.gz -V Chica_19.g.vcf.gz -V Chica_1.g.vcf.gz -V Chica_2.g.vcf.gz -V Chica_3.g.vcf.gz -V Chica_4.g.vcf.gz -V Chica_5.g.vcf.gz -V Chica_6.g.vcf.gz -V Chica_7.g.vcf.gz -V Chica_8.g.vcf.gz -V Chica_9.g.vcf.gz -V Choy_01.g.vcf.gz -V Choy_05.g.vcf.gz -V Choy_06.g.vcf.gz -V Choy_09.g.vcf.gz -V Choy_10.g.vcf.gz -V Choy_11.g.vcf.gz -V Choy_12.g.vcf.gz -V Choy_13.g.vcf.gz -V Choy_14.g.vcf.gz -V Molino_10b.g.vcf.gz -V Molino_11a.g.vcf.gz -V Molino_12a.g.vcf.gz -V Molino_13b.g.vcf.gz -V Molino_14a.g.vcf.gz -V Molino_15b.g.vcf.gz -V Molino_2a.g.vcf.gz -V Molino_7a.g.vcf.gz -V Molino_9b.g.vcf.gz -V Pach_11.g.vcf.gz -V Pach_12.g.vcf.gz -V Pach_14.g.vcf.gz -V Pach_15.g.vcf.gz -V Pach_17.g.vcf.gz -V Pach_3.g.vcf.gz -V Pach_7.g.vcf.gz -V Pach_8.g.vcf.gz -V Pach_9.g.vcf.gz -V Rascon_02.g.vcf.gz -V Rascon_04.g.vcf.gz -V Rascon_13.g.vcf.gz -V Rascon_15.g.vcf.gz -V Rascon_6.g.vcf.gz -V Rascon_8.g.vcf.gz -V Tinaja_11.g.vcf.gz -V Tinaja_12.g.vcf.gz -V Tinaja_2.g.vcf.gz -V Tinaja_3.g.vcf.gz -V Tinaja_5.g.vcf.gz -V Tinaja_6.g.vcf.gz -V Tinaja_B.g.vcf.gz -V Tinaja_C.g.vcf.gz -V Tinaja_D.g.vcf.gz -V Tinaja_E.g.vcf.gz -R GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna -O Cohort_Combined_Every_Samples.g.vcf


## Genotype gvcf


gatk GenotypeGVCFs -R GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna -V Cohort_Combined_Every_Samples.g.vcf -O GenotypeGVCF_Cohort_Combined_Every_Samples.g.vcf.gz --use-new-qual-calculator


## Extract raw SNP and Indels

gatk SelectVariants -R GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna -V GenotypeGVCF_Cohort_Combined_Every_Samples.g.vcf.gz -select-type SNP -O Raw_snps.vcf --remove-unused-alternates true --exclude-non-variants true
gatk SelectVariants -R GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna -V GenotypeGVCF_Cohort_Combined_Every_Samples.g.vcf.gz -select-type INDEL -O Raw_indels.vcf --remove-unused-alternates true --exclude-non-variants true

## Filter variant quality.

gatk VariantFiltration -R GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna -V Raw_snps.vcf  --filter-expression "QD < 2.0 || FS > 60.0 || MQ < 40.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0 || ExcessHet > 54.69" --filter-name "SNP_hard_filter" -O filtered_snps.vcf
gatk VariantFiltration -R GCF_000372685.2_Astyanax_mexicanus-2.0_genomic.fna -V Raw_indels.vcf  --filter-expression "QD < 2.0 || FS > 200.0 || ReadPosRankSum < -20.0 || ExcessHet > 54.69" --filter-name "INDEL_hard_filter" -O filtered_indels.vcf


## Merge filtered SNP and Indels

gatk MergeVcfs -I filtered_snps.vcf -I filtered_indels.vcf -O filtered_snps_indels.vcf


## Remove no call variant and no invariant positions 


gatk SelectVariants -V filtered_snps_indels.vcf -O Indels_SNPs_HardFiltered_0nocall.vcf --max-nocall-number 10 --exclude-filtered true
java -jar jvarkit/dist/vcffilterjs.jar -e 'function accept(v) {var g0= v.getGenotype(0);for(var i=1;i< v.getNSamples();i++) {if(!v.getGenotype(i).sameGenotype(g0)) return true;} return false;}accept(variant);' Indels_SNPs_HardFiltered_0nocall.vcf > Indels_SNPs_HardFiltered_0nocall_0invariant.vcf



## Annotate variant with VEP and extract null alleles

vep --cache --canonical --offline -i Indels_SNPs_HardFiltered_0nocall_0invariant_modif_split.vcf -o VEP_annotation.vcf --species astyanax_mexicanus --protein --total_length --coding_only --vcf 


bcftools +split-vep VEP_annotation.vcf -l 

bcftools +split-vep VEP_annotation.vcf -c Consequence,SYMBOL,Gene,Feature,BIOTYPE,EXON,INTRON,cDNA_position,CDS_position,Protein_position,Amino_acids,Codons,STRAND,CANONICAL,ENSP -s :stop_gained -x -d | bcftools query -f '%CHROM\t%POS\t%REF\t%ALT\t%Consequence\t%SYMBOL\t%Gene\t%Feature\t%BIOTYPE\t%EXON\t%INTRON\t%cDNA_position\t%CDS_position\t%Protein_position\t%Amino_acids\t%Codons\t%STRAND\t%CANONICAL\t%ENSP\t[ %GT]\n' > stopgained_frameshift_startloss_stoploss.consequences

grep -v "splice_donor" stopgained_frameshift_startloss_stoploss.consequences | grep -v "splice_acceptor" | grep -v "splice_region" > stopgained_frameshift_startloss_stoploss.consequences_nosplice

bcftools +split-vep VEP_annotation.vcf -c Consequence,SYMBOL,Gene,Feature,BIOTYPE,EXON,INTRON,cDNA_position,CDS_position,Protein_position,Amino_acids,Codons,STRAND,CANONICAL,ENSP -s :splice_acceptor -x -d | bcftools query -f '%CHROM\t%POS\t%REF\t%ALT\t%Consequence\t%SYMBOL\t%Gene\t%Feature\t%BIOTYPE\t%EXON\t%INTRON\t%cDNA_position\t%CDS_position\t%Protein_position\t%Amino_acids\t%Codons\t%STRAND\t%CANONICAL\t%ENSP\t[ %GT]\n' > splicesite_mutations.consequences






#Convert score annotations made by GATK so that it will be more easily handled in R
sed 's/0|1/1/g' stopgained_frameshift_startloss_stoploss.consequences_nosplice | sed 's/1|0/1/g' | sed 's/1|1/2/g' | sed 's/0|0/0/g' | sed 's/1\/1/2/g' | sed 's/0\/0/0/g' | sed 's/1\/0/1/g' | sed 's/0\/1/1/g' > stopgained_frameshift_startloss_stoploss_gen.tsv
sed 's/0|1/1/g' splicesite_mutations.consequences | sed 's/1|0/1/g' | sed 's/1|1/2/g' | sed 's/0|0/0/g' | sed 's/1\/1/2/g' | sed 's/0\/0/0/g' | sed 's/1\/0/1/g' | sed 's/0\/1/1/g' > splicesite_mutations_gen.tsv

sed -i 's/ /	/g' stopgained_frameshift_startloss_stoploss_gen.tsv 
grep -v "stop_gained&frameshift_variant&start_lost&start_retai\|frameshift_variant&start_lost&start_retained_variant\|frameshift_variant&stop_retained_variant\|start_lost&start_retained_variant\|start_lost&start_retained_variant&5_prime_UTR_variant\|stop_lost&inframe_deletion&stop_retained_variant" stopgained_frameshift_startloss_stoploss_gen.tsv > test ; mv test stopgained_frameshift_startloss_stoploss_gen.tsv 
sed -i 's/ /	/g' splicesite_mutations_gen.tsv





