# Alexey Fedulov RRBS data analysis pipeline

## Downloading data

To download the files from Cornell:
```{bash}
echo -e "\n\n*** Downloading files for cart: Default...\n";
wget --no-check-certificate --content-disposition --continue --ask-password --user=joselynn_wallace@brown.edu "https://abc.med.cornell.edu/pubshare/data/2/109726/Project_EC-AF-6092/Sample_1/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109726/Reports/html/HJ2HWDRXX/all/all/all/laneBarcode.html" "https://abc.med.cornell.edu/pubshare/data/0/109726/fastp_qc/qc_Sample_1.html" "https://abc.med.cornell.edu/pubshare/data/2/109727/Project_EC-AF-6092/Sample_10/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109727/fastp_qc/qc_Sample_10.html" "https://abc.med.cornell.edu/pubshare/data/2/109728/Project_EC-AF-6092/Sample_11/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109728/fastp_qc/qc_Sample_11.html" "https://abc.med.cornell.edu/pubshare/data/2/109729/Project_EC-AF-6092/Sample_12/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109729/fastp_qc/qc_Sample_12.html" "https://abc.med.cornell.edu/pubshare/data/2/109730/Project_EC-AF-6092/Sample_13/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109730/fastp_qc/qc_Sample_13.html" "https://abc.med.cornell.edu/pubshare/data/2/109731/Project_EC-AF-6092/Sample_14/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109731/fastp_qc/qc_Sample_14.html" "https://abc.med.cornell.edu/pubshare/data/2/109732/Project_EC-AF-6092/Sample_15/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109732/fastp_qc/qc_Sample_15.html" "https://abc.med.cornell.edu/pubshare/data/2/109733/Project_EC-AF-6092/Sample_16/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109733/fastp_qc/qc_Sample_16.html" "https://abc.med.cornell.edu/pubshare/data/2/109734/Project_EC-AF-6092/Sample_17/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109734/fastp_qc/qc_Sample_17.html" "https://abc.med.cornell.edu/pubshare/data/2/109735/Project_EC-AF-6092/Sample_18/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109735/fastp_qc/qc_Sample_18.html" "https://abc.med.cornell.edu/pubshare/data/2/109736/Project_EC-AF-6092/Sample_2/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109736/fastp_qc/qc_Sample_2.html" "https://abc.med.cornell.edu/pubshare/data/2/109737/Project_EC-AF-6092/Sample_3/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109737/fastp_qc/qc_Sample_3.html" "https://abc.med.cornell.edu/pubshare/data/2/109738/Project_EC-AF-6092/Sample_4/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109738/fastp_qc/qc_Sample_4.html" "https://abc.med.cornell.edu/pubshare/data/2/109739/Project_EC-AF-6092/Sample_5/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109739/fastp_qc/qc_Sample_5.html" "https://abc.med.cornell.edu/pubshare/data/2/109740/Project_EC-AF-6092/Sample_6/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109740/fastp_qc/qc_Sample_6.html" "https://abc.med.cornell.edu/pubshare/data/2/109741/Project_EC-AF-6092/Sample_7/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109741/fastp_qc/qc_Sample_7.html" "https://abc.med.cornell.edu/pubshare/data/2/109742/Project_EC-AF-6092/Sample_8/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109742/fastp_qc/qc_Sample_8.html" "https://abc.med.cornell.edu/pubshare/data/2/109743/Project_EC-AF-6092/Sample_9/*.fastq.gz" "https://abc.med.cornell.edu/pubshare/data/0/109743/fastp_qc/qc_Sample_9.html" "https://abc.med.cornell.edu/pubshare/data/0/109762/18.bam" "https://abc.med.cornell.edu/pubshare/data/0/109762/18.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109762/18.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109762/18_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109762/18_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109762/cgunits.18.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109762/chg.18.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109762/chh.18.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109762/cpg.18.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109762/methylcall.CHG.18.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109762/methylcall.CHH.18.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109762/methylcall.CpG.18.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109763/17.bam" "https://abc.med.cornell.edu/pubshare/data/0/109763/17.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109763/17.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109763/17_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109763/17_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109763/cgunits.17.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109763/chg.17.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109763/chh.17.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109763/cpg.17.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109763/methylcall.CHG.17.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109763/methylcall.CHH.17.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109763/methylcall.CpG.17.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109764/16.bam" "https://abc.med.cornell.edu/pubshare/data/0/109764/16.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109764/16.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109764/16_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109764/16_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109764/cgunits.16.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109764/chg.16.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109764/chh.16.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109764/cpg.16.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109764/methylcall.CHG.16.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109764/methylcall.CHH.16.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109764/methylcall.CpG.16.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109765/14.bam" "https://abc.med.cornell.edu/pubshare/data/0/109765/14.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109765/14.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109765/14_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109765/14_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109765/cgunits.14.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109765/chg.14.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109765/chh.14.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109765/cpg.14.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109765/methylcall.CHG.14.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109765/methylcall.CHH.14.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109765/methylcall.CpG.14.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109766/15.bam" "https://abc.med.cornell.edu/pubshare/data/0/109766/15.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109766/15.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109766/15_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109766/15_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109766/cgunits.15.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109766/chg.15.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109766/chh.15.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109766/cpg.15.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109766/methylcall.CHG.15.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109766/methylcall.CHH.15.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109766/methylcall.CpG.15.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109767/13.bam" "https://abc.med.cornell.edu/pubshare/data/0/109767/13.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109767/13.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109767/13_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109767/13_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109767/cgunits.13.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109767/chg.13.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109767/chh.13.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109767/cpg.13.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109767/methylcall.CHG.13.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109767/methylcall.CHH.13.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109767/methylcall.CpG.13.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109768/12.bam" "https://abc.med.cornell.edu/pubshare/data/0/109768/12.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109768/12.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109768/12_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109768/12_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109768/cgunits.12.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109768/chg.12.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109768/chh.12.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109768/cpg.12.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109768/methylcall.CHG.12.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109768/methylcall.CHH.12.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109768/methylcall.CpG.12.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109769/7.bam" "https://abc.med.cornell.edu/pubshare/data/0/109769/7.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109769/7.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109769/7_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109769/7_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109769/cgunits.7.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109769/chg.7.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109769/chh.7.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109769/cpg.7.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109769/methylcall.CHG.7.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109769/methylcall.CHH.7.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109769/methylcall.CpG.7.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109770/10.bam" "https://abc.med.cornell.edu/pubshare/data/0/109770/10.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109770/10.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109770/10_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109770/10_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109770/cgunits.10.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109770/chg.10.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109770/chh.10.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109770/cpg.10.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109770/methylcall.CHG.10.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109770/methylcall.CHH.10.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109770/methylcall.CpG.10.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109771/9.bam" "https://abc.med.cornell.edu/pubshare/data/0/109771/9.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109771/9.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109771/9_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109771/9_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109771/cgunits.9.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109771/chg.9.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109771/chh.9.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109771/cpg.9.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109771/methylcall.CHG.9.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109771/methylcall.CHH.9.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109771/methylcall.CpG.9.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109772/8.bam" "https://abc.med.cornell.edu/pubshare/data/0/109772/8.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109772/8.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109772/8_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109772/8_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109772/cgunits.8.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109772/chg.8.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109772/chh.8.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109772/cpg.8.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109772/methylcall.CHG.8.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109772/methylcall.CHH.8.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109772/methylcall.CpG.8.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109773/11.bam" "https://abc.med.cornell.edu/pubshare/data/0/109773/11.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109773/11.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109773/11_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109773/11_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109773/cgunits.11.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109773/chg.11.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109773/chh.11.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109773/cpg.11.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109773/methylcall.CHG.11.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109773/methylcall.CHH.11.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109773/methylcall.CpG.11.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109774/6.bam" "https://abc.med.cornell.edu/pubshare/data/0/109774/6.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109774/6.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109774/6_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109774/6_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109774/cgunits.6.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109774/chg.6.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109774/chh.6.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109774/cpg.6.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109774/methylcall.CHG.6.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109774/methylcall.CHH.6.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109774/methylcall.CpG.6.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109775/4.bam" "https://abc.med.cornell.edu/pubshare/data/0/109775/4.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109775/4.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109775/4_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109775/4_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109775/cgunits.4.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109775/chg.4.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109775/chh.4.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109775/cpg.4.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109775/methylcall.CHG.4.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109775/methylcall.CHH.4.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109775/methylcall.CpG.4.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109776/5.bam" "https://abc.med.cornell.edu/pubshare/data/0/109776/5.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109776/5.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109776/5_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109776/5_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109776/cgunits.5.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109776/chg.5.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109776/chh.5.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109776/cpg.5.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109776/methylcall.CHG.5.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109776/methylcall.CHH.5.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109776/methylcall.CpG.5.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109777/2.bam" "https://abc.med.cornell.edu/pubshare/data/0/109777/2.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109777/2.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109777/2_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109777/2_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109777/cgunits.2.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109777/chg.2.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109777/chh.2.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109777/cpg.2.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109777/methylcall.CHG.2.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109777/methylcall.CHH.2.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109777/methylcall.CpG.2.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109778/1.bam" "https://abc.med.cornell.edu/pubshare/data/0/109778/1.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109778/1.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109778/1_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109778/1_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109778/cgunits.1.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109778/chg.1.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109778/chh.1.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109778/cpg.1.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109778/methylcall.CHG.1.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109778/methylcall.CHH.1.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109778/methylcall.CpG.1.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109779/3.bam" "https://abc.med.cornell.edu/pubshare/data/0/109779/3.bedGraph.gz" "https://abc.med.cornell.edu/pubshare/data/0/109779/3.bismark.cov.gz" "https://abc.med.cornell.edu/pubshare/data/0/109779/3_CpG.wig" "https://abc.med.cornell.edu/pubshare/data/0/109779/3_summary.txt" "https://abc.med.cornell.edu/pubshare/data/0/109779/cgunits.3.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109779/chg.3.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109779/chh.3.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109779/cpg.3.10x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109779/methylcall.CHG.3.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109779/methylcall.CHH.3.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/data/0/109779/methylcall.CpG.3.1x.txt.gz" "https://abc.med.cornell.edu/pubshare/download_list_items/checksums.txt?download_list_id=2144"

echo -e "\n\n*** Extracting any tar archives...\n";
for f in *.tar; do tar xvf $f; done;

echo -e "\n\n*** Running checksum...\n";
sha1sum -c *.sha1;

echo -e "\n\n*** Complete\n";
```
All of the Cornell data is in `/gpfs/data/cbc/fedulov_alexey/rrbs_data/cornell_data`. 

## Initial QC

After downloading all the Cornell data, I ran a few QC metrics. First, I ran the `bamqc.sh` script, which will sort the bam files and run qualimap bamqc and fastqc on them.

```{bash}
sbatch bamqc.sh
```

Then, I ran the `bismark_mbias.sh` script, which will use the bismark_methylation_extractor to create m-bias plots. The m-bias text files are in `/gpfs/data/cbc/fedulov_alexey/rrbs_data/mbias_plots`. I used multiqc to create the actual m-bias plots.

```{bash}
sbatch bismark_mbias.sh
```

```{bash}
cd /gpfs/data/cbc/fedulov_alexey/rrbs_data/mbias_plots
multiqc .
```

The m-bias plots persuaded me that I should try to re-run the analysis pipeline. 

## Read trimming and QC

Next, I used trimgalore in the RRBS mode to re-trim the reads:

```{bash}
sbatch trim_galore.sh
``` 

Then I ran the reads through fastqc:

```{bash}
sbatch rrbs_fastqc.sh
```
## Bismark aligning

Make the Bismark genome index:

```{bash}
sbatch bismark_genome.sh 
```

Map the reads

```{bash}
bismark_align_ignore.sh
```

Run Bismark extractor

```{bash}
bismark_extractor_ignore.sh
```

Make some reports:

```{bash}
sbatch bismark_report_ignore.sh
```
```{bash}
sbatch bam2nuc.sh
```

At this point, used the bam coverage files to run some R analyses:

```{r message=FALSE, warning=FALSE}
library(biomaRt)
library(DSS)
library(BSseq)
library(dplyr)
library(AnnotationDbi)
library(GenomicRanges)
library(clusterProfiler)
library(methyAnalysis)
```

Read in text files and create an object of BSseq class, which is defined in bsseq Bioconductor package.

```{r}
# List Bismark coverage files
coverage_files <- list.files('./alignments_ignore', '*.bismark.cov$', full.names=T)
names(coverage_files) <- list.files('./alignments_ignore', '*.bismark.cov$', full.names=F)

# Import all of the files
create_dss_input <- function(files){
  read_file <- read.table(files, header = F, col.names = c('chrom', 'start', 'end', 'perc_methyl', 'n_meth', 'n_unmeth'))
  read_file$'total_reads' <- read_file$'n_meth' + read_file$'n_unmeth'
  read_file_renamed <- read_file %>% dplyr::select('chrom', 'start', 'total_reads', 'n_meth') %>% dplyr::rename('chr' = 'chrom', 'pos' = 'start', 'N' = 'total_reads', 'X' = 'n_meth')
  return(read_file_renamed)
}

dss_input <- lapply(coverage_files, create_dss_input)

# Turn them into a bsseq object
rrbs_object <- makeBSseqData(dss_input, c('vehicle_1','talc_estrogen_1','talc_estrogen_2','talc_estrogen_3','titanium_1','titanium_2','titanium_3','titanium_estrogen_1','titanium_estrogen_2','titanium_estrogen_3','vehicle_2','vehicle_3','estrogen_1','estrogen_2','estrogen_3','talc_1','talc_2','talc_3'))

# Import the sample design file and set the factor references
sampleNames(rrbs_object)
rrbs_design <- read.table('./design.txt')

estrogen_levels <- factor(c('noestrogen', 'estrogen'))
additive_levels <- factor(c('vehicle', 'titanium', 'talc'))

rrbs_design$Estrogen <- factor(rrbs_design$Estrogen, levels(estrogen_levels))
rrbs_design$Additive <- factor(rrbs_design$Additive, levels(additive_levels))

rrbs_design$Estrogen <- relevel(rrbs_design$Estrogen, ref = 'noestrogen')
rrbs_design$Additive <- relevel(rrbs_design$Additive, ref = 'vehicle')

#Fit a linear model using DMLfit.multiFactor function. Similar to in a multiple regression, the model only needs to be fit once, and then the parameters can be tested based on the model fitting results.
rrbs_dml_fit <- DMLfit.multiFactor(rrbs_object, design = rrbs_design, formula = ~ Estrogen*Additive)

# Perform the test
rrbs_dml_test_talc_interaction <- DMLtest.multiFactor(rrbs_dml_fit, coef = 'Estrogenestrogen:Additivetalc') #this is the difference betw. the talc effect for estrogen and no estrogen
rrbs_dml_test_titanium_interaction <- DMLtest.multiFactor(rrbs_dml_fit, coef = 'Estrogenestrogen:Additivetitanium') #this is the difference betw. the titanium effect for estrogen and no estrogen

#now call the DMRs
talc_interaction_dmr <- callDMR(rrbs_dml_test_talc_interaction, p.threshold = 0.05)
titanium_interaction_dmr <- callDMR(rrbs_dml_test_titanium_interaction, p.threshold = 0.05)

#make a txdb object...
mm_txdb <- makeTxDbFromBiomart(biomart = 'ENSEMBL_MART_ENSEMBL', dataset = 'mmusculus_gene_ensembl')

#annotate the DMRs 
talc_interaction_dmr_annots_ma <- methyAnalysis::annotateDMRInfo(talc_interaction_dmr_granges, annotationDatabase = mm_txdb, flankRange = 3000)
titanium_interaction_dmr_annots_ma <- methyAnalysis::annotateDMRInfo(titanium_interaction_dmr_granges, annotationDatabase = mm_txdb, flankRange = 3000)

talc_interaction_dmr_annots_df <- as.data.frame(talc_interaction_dmr_annots_ma$sigDMRInfo) %>% dplyr::rename(Gene = EntrezID)
titanium_interaction_dmr_annots_df <- as.data.frame(titanium_interaction_dmr_annots_ma$sigDMRInfo) %>% dplyr::rename(Gene = EntrezID)

#get other gene IDs..
talc_interaction_entrez_ids <- as.data.frame(AnnotationDbi::select(org.Mm.eg.db, 
                                                           key = talc_interaction_dmr_annots_df$Gene,
                                                           columns=c('ENTREZID','ENSEMBL','ENZYME','SYMBOL', 'UNIPROT'),
                                                           keytype = 'ENSEMBL', multiVals = 'list'))

titanium_interaction_entrez_ids <- as.data.frame(AnnotationDbi::select(org.Mm.eg.db, 
                                                           key = titanium_interaction_dmr_annots_df$Gene, 
                                                           columns=c('ENTREZID','ENSEMBL','ENZYME','SYMBOL', 'UNIPROT'),
                                                           keytype = 'ENSEMBL', multiVals = 'list'))


#merge annots and ids...
talc_interaction_dmr_anno_entrez <- merge(talc_interaction_dmr_annots_df, talc_interaction_entrez_ids, by.x = 'Gene', by.y = 'ENSEMBL')
titanium_interaction_dmr_anno_entrez <- merge(titanium_interaction_dmr_annots_df, titanium_interaction_entrez_ids, by.x = 'Gene', by.y = 'ENSEMBL')

#enrichment...
talc_interaction_dmr_enrich_kegg <- clusterProfiler::enrichKEGG(gene = c(talc_interaction_dmr_anno_entrez$UNIPROT), organism = 'mmu', keyType = 'uniprot', pvalueCutoff = 0.05)
titanium_interaction_dmr_enrich_kegg <- clusterProfiler::enrichKEGG(gene = c(titanium_interaction_dmr_anno_entrez$UNIPROT), organism = 'mmu', keyType = 'uniprot', pvalueCutoff = 0.05)

#plots
kegg_enrich_plot_talc_dot <- enrichplot::dotplot(talc_interaction_dmr_enrich_kegg, x = 'GeneRatio', color = 'p.adjust', showCategory = 10) + ggtitle('Talc KEGG enrichment')
kegg_enrich_plot_titanium_dot <- enrichplot::dotplot(titanium_interaction_dmr_enrich_kegg, x = 'GeneRatio', color = 'p.adjust', showCategory = 10) + ggtitle('Titanium KEGG enrichment')

```
```{r}

ggplot2::ggsave('./output_files/talc_uniprot_enrichment_dotplot.png', plot = kegg_enrich_plot_talc_dot, device = 'png')
ggplot2::ggsave('./output_files/titanium_uniprot_enrichment_dotplot.png', plot = kegg_enrich_plot_titanium_dot, device = 'png')

write.table(talc_interaction_dmr_anno_entrez, './output_files/talc_interaction_dmr_anno_entrez.txt')
write.table(as.data.frame(talc_interaction_dmr_enrich_kegg), './output_files/talc_interaction_dmr_enrich_kegg.txt')

write.table(titanium_interaction_dmr_anno_entrez, './output_files/titanium_interaction_dmr_anno_entrez.txt')
write.table(as.data.frame(titanium_interaction_dmr_enrich_kegg), './output_files/titanium_interaction_dmr_enrich_kegg.txt')
```

```{r}
sessionInfo()
```

