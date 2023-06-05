#!/usr/bin/perl 

use strict;

my ( $file1 ,  $file2  ,  $file3  ,  $file4  ,  $file5  ,  $file6  ) = @ARGV;

my %region1;
my %region2;
my %region3;

my $counter=0;


open( sample1 , "<$file1") or die("cannot open $file1");

while (<sample1>) {
    chomp;
    
  
    my @w = split(/\t/,$_); 
 #for constitutives: and exon1 2
 #   /home/eneritz/Tools/DATABASE/ENSG75_hg19_exons_exon12.bed
#/home/eneritz/KIshared_dir/Molekylär\ Neurobiologi/Castelo-Branco/Eneritz/ASCHRM/ASCHROM19/ASCHROM0818/Constituve_exons/H1hesc_ENCODE_constitutive_EXON.bed SACS1_celllines.table.tab 	
    
#$region1{$w[0]}{$w[1]}{$w[2]}=$_;
    
 # for expressed ones: /media/eneritz/B4109EBA109E8352/ASCHROM_paper/all_celltypes_events/GM12878_rep1.ALL_SJ_all_triplets.Expressed.genes.filtered
$region1{$w[8]}{$w[9]}{$w[10]}=$_;
   
    
}






open( sample2 , "<$file2") or die("cannot open $file2");

while (<sample2>) {
    chomp;
    
    #my @w = split(/\s+/,$_);
    my @w = split(/\t/,$_); 
    my @counts = split(/:/,$w[2]);
    my @counts2 = split(/-/,$counts[1]);
    my @counts3 = split(/cns/,$w[0]);
    my @counts4 = split(/j/,$counts3[0]); 
 
    my $result1=$region1{$w[1]}{$w[2]}{$w[3]};
    
    my $Hepg2_PSI;
    my $K562_PSI;
    my $MCF7_PSI;
    my $HeLas3_PSI;
    my $GM19878_PSI;
    my $IMR90_PSI;
    
   # if ( $w[5]  <=  0.2 &&  $w[5]  >  0 ) {  $Hepg2_PSI="NONE"; }
   # if ( $w[5]  <=  0.8 && $w[5]  >   0.4 ) {  $Hepg2_PSI="MIDINC"; }
   # if ( $w[5]  <=  0.4 && $w[5]  >   0.2   ) {  $Hepg2_PSI="MIDEXC"; }
   # if ( $w[5]  >  0.8 && $w[5]   <  1 ) {  $Hepg2_PSI="TOTAL"; }	

   # if ( $w[6]  <  0.2 &&  $w[6]  >  0 ) {  $K562_PSI="NONE"; }
   # if ( $w[6]  <=  0.8 && $w[6]  >   0.4 ) {  $K562_PSI="MIDINC"; }
   # if ( $w[6]  <=  0.4 && $w[6]  >   0.2   ) {  $K562_PSI="MIDEXC"; }
   # if ( $w[6]  >  0.8 && $w[6]   <  1) {  $K562_PSI="TOTAL"; }	
      
   # if ( $w[7]  <  0.2 &&  $w[7]  >  0 ) {  $MCF7_PSI="NONE"; }
   # if ( $w[7]  <=  0.8 && $w[7]  >   0.4 ) {  $MCF7_PSI="MIDINC"; }
   # if ( $w[7]  <=  0.4 && $w[7]  >   0.2   ) {  $MCF7_PSI="MIDEXC"; }
   # if ( $w[7]  >  0.8 && $w[7]   <  1) {  $MCF7_PSI="TOTAL"; }	
   
   # if ( $w[8]  <  0.2 &&  $w[8]  >  0 ) {  $HeLas3_PSI="NONE"; }
   # if ( $w[8]  <=  0.8 && $w[8]  >   0.4 ) {  $HeLas3_PSI="MIDINC"; }
   # if ( $w[8]  <=  0.4 && $w[8]  >   0.2   ) {  $HeLas3_PSI="MIDEXC"; }
   # if ( $w[8]  >  0.8 && $w[8]   <  1) {  $HeLas3_PSI="TOTAL"; }	
   
 #if ( $w[9]  <  0.2 &&  $w[9]  >  0 ) {  $GM19878_PSI="NONE"; }
 #   if ( $w[9]  <=  0.8 && $w[9]  >   0.4 ) {  $GM19878_PSI="MIDINC"; }
 #   if ( $w[9]  <=  0.4 && $w[9]  >   0.2   ) {  $GM19878_PSI="MIDEXC"; }
 #   if ( $w[9]  >  0.8 && $w[9]   <  1) {  $GM19878_PSI="TOTAL"; }	

# if ( $w[10]  <  0.2 &&  $w[10]  >  0 ) {  $IMR90_PSI="NONE"; }
 #   if ( $w[10]  <=  0.8 && $w[10]  >   0.4 ) {  $IMR90_PSI="MIDINC"; }
  #  if ( $w[10]  <=  0.4 && $w[10]  >   0.2   ) {  $IMR90_PSI="MIDEXC"; }
  #  if ( $w[10]  >  0.8 && $w[10]   <  1) {  $IMR90_PSI="TOTAL"; }	

    ###################################################333
      
    if ( $w[5]  <=  0.2 &&  $w[5]  >  0 ) {  $Hepg2_PSI="NONE"; }
    if ( $w[5]  <=  0.8 && $w[5]  >   0.4 ) {  $Hepg2_PSI="NONE"; }
    if ( $w[5]  <=  0.4 && $w[5]  >   0.2   ) {  $Hepg2_PSI="NONE"; }
    if ( $w[5]  >  0.8 && $w[5]   <  1 ) {  $Hepg2_PSI="TOTAL"; }	

    if ( $w[6]  <  0.2 &&  $w[6]  >  0 ) {  $K562_PSI="NONE"; }
    if ( $w[6]  <=  0.8 && $w[6]  >   0.4 ) {  $K562_PSI="NONE"; }
    if ( $w[6]  <=  0.4 && $w[6]  >   0.2   ) {  $K562_PSI="NONE"; }
    if ( $w[6]  >  0.8 && $w[6]   <  1) {  $K562_PSI="TOTAL"; }	
      
    if ( $w[7]  <  0.2 &&  $w[7]  >  0 ) {  $MCF7_PSI="NONE"; }
    if ( $w[7]  <=  0.8 && $w[7]  >   0.4 ) {  $MCF7_PSI="NONE"; }
    if ( $w[7]  <=  0.4 && $w[7]  >   0.2   ) {  $MCF7_PSI="NONE"; }
    if ( $w[7]  >  0.8 && $w[7]   <  1) {  $MCF7_PSI="TOTAL"; }	
   
    if ( $w[8]  <  0.2 &&  $w[8]  >  0 ) {  $HeLas3_PSI="NONE"; }
    if ( $w[8]  <=  0.8 && $w[8]  >   0.4 ) {  $HeLas3_PSI="NONE"; }
    if ( $w[8]  <=  0.4 && $w[8]  >   0.2   ) {  $HeLas3_PSI="NONE"; }
    if ( $w[8]  >  0.8 && $w[8]   <  1) {  $HeLas3_PSI="TOTAL"; }	
   
 if ( $w[9]  <  0.2 &&  $w[9]  >  0 ) {  $GM19878_PSI="NONE"; }
    if ( $w[9]  <=  0.8 && $w[9]  >   0.4 ) {  $GM19878_PSI="NONE"; }
    if ( $w[9]  <=  0.4 && $w[9]  >   0.2   ) {  $GM19878_PSI="NONE"; }
    if ( $w[9]  >  0.8 && $w[9]   <  1) {  $GM19878_PSI="TOTAL"; }	

 if ( $w[10]  <  0.2 &&  $w[10]  >  0 ) {  $IMR90_PSI="NONE"; }
    if ( $w[10]  <=  0.8 && $w[10]  >   0.4 ) {  $IMR90_PSI="NONE"; }
    if ( $w[10]  <=  0.4 && $w[10]  >   0.2   ) {  $IMR90_PSI="NONE"; }
    if ( $w[10]  >  0.8 && $w[10]   <  1) {  $IMR90_PSI="TOTAL"; }	


    

###############################################################
  my $Hepg2_COV;
    my $K562_COV;
    my $MCF7_COV;
    my $HeLas3_COV;
    my $GM_COV;
    my $IMR90_COV;

    my $Hepg2_COV1;
    my $K562_COV1;
    my $MCF7_COV1;
    my $HeLas3_COV1;
    my $GM_COV1;
    my $IMR90_COV1;

     my $Hepg2_COV2;
    my $K562_COV2;
    my $MCF7_COV2;
    my $HeLas3_COV2;
    my $GM_COV2;
    my $IMR90_COV2;
    
 #   if ( $w[47]  <  -0.2 && $w[53]  <  -0.2 ) {  $Hepg2_COV="MARKED"; }
 #   if ( $w[47]  <  -0.2 && $w[53]   >  0 ) {  $Hepg2_COV1="MARK1"; }
 #   if ( $w[53]  <  -0.2 && $w[47]   >  0 ) {  $Hepg2_COV2="MARK2"; }

  #  if ( $w[48]  <  -0.2 && $w[54]  <  -0.2 ) {  $K562_COV="MARKED"; }
  #  if ( $w[48]  <  -0.2 && $w[54]   >  0 ) {  $K562_COV1="MARK1"; }
  #  if ( $w[60]  <  -0.2 && $w[48]   >  0 ) {  $K562_COV2="MARK2"; }

  #  if ( $w[49]  <  -0.2 && $w[55]  <  -0.2 ) {  $MCF7_COV="MARKED"; }
  #  if ( $w[49]  <  -0.2 && $w[55]   >  0 ) {  $MCF7_COV1="MARK1"; }
  #  if ( $w[55]  <  -0.2 && $w[49]   >  0 ) {  $MCF7_COV2="MARK2"; }

  # if ( $w[50]  <  -0.2 && $w[56]  <  -0.2 ) {  $HeLas3_COV="MARKED"; }
  #  if ( $w[50]  <  -0.2 && $w[56]   >  0 ) {  $HeLas3_COV1="MARK1"; }
  #  if ( $w[56]  <  -0.2 && $w[50]   >  0 ) {  $HeLas3_COV2="MARK2"; }

 #if ( $w[51]  <  -0.2 && $w[57]  <  -0.2 ) {  $GM_COV="MARKED"; }
 #   if ( $w[51]  <  -0.2 && $w[57]   >  0 ) {  $GM_COV1="MARK1"; }
 #   if ( $w[57]  <  -0.2 && $w[51]   >  0 ) {  $GM_COV2="MARK2"; }

#if ( $w[52]  <  -0.2 && $w[58]  <  -0.2 ) {  $IMR90_COV="MARKED"; }
#    if ( $w[52]  <  -0.2 && $w[58]   >  0 ) {  $IMR90_COV1="MARK1"; }
#    if ( $w[58]  <  -0.2 && $w[52]   >  0 ) {  $IMR90_COV2="MARK2"; }



     if ( $w[47]  <  -0.2 && $w[53]  <  -0.2 ) {  $Hepg2_COV="MARKED"; }
    if ( $w[29]  >   0.5 && $w[23]   ==  0 ) {  $Hepg2_COV1="MARK1"; }
    if ( $w[23]   >  0.5 && $w[29]   ==  0 ) {  $Hepg2_COV2="MARK2"; }

    if ( $w[48]  <  -0.2 && $w[54]  <  -0.2 ) {  $K562_COV="MARKED"; }
    if ( $w[30]   >  0.5 && $w[24]   ==  0 ) {  $K562_COV1="MARK1"; }
    if ( $w[24]   >  0.5 && $w[30]   ==  0 ) {  $K562_COV2="MARK2"; }

    if ( $w[49]  <  -0.2 && $w[55]  <  -0.2 ) {  $MCF7_COV="MARKED"; }
    if ( $w[31]   >  0.5 && $w[25]   ==  0 ) {  $MCF7_COV1="MARK1"; }
    if ( $w[25]   >  0.5 && $w[31]   ==  0 ) {  $MCF7_COV2="MARK2"; }

   if ( $w[50]  <  -0.2 && $w[56]  <  -0.2 ) {  $HeLas3_COV="MARKED"; }
    if ( $w[32]   >  0.5 && $w[26]   ==  0 ) {  $HeLas3_COV1="MARK1"; }
    if ( $w[26]   > 0.5 && $w[32]  ==  0 ) {  $HeLas3_COV2="MARK2"; }

 if ( $w[51]  <  -0.2 && $w[57]  <  -0.2 ) {  $GM_COV="MARKED"; }
    if ( $w[33]   >  0.5 && $w[27]   ==  0 ) {  $GM_COV1="MARK1"; }
    if ( $w[27]   > 0.5 && $w[33]   ==  0 ) {  $GM_COV2="MARK2"; }

if ( $w[52]  <  -0.2 && $w[58]  <  -0.2 ) {  $IMR90_COV="MARKED"; }
    if ( $w[34]   >  0.5 && $w[28]   ==  0 ) {  $IMR90_COV1="MARK1"; }
    if ( $w[28]   >  0.5 && $w[34]   ==  0 ) {  $IMR90_COV2="MARK2"; }


    
###############################################################


    
     my @gene = split(/\t/,$result1);
   
#for exon1 exon2 const
 #next if ($gene[0] =~/(\w+.*)/  );
   
 #expressed
 next if ($gene[0] !~/(\w+.*)/  );
   
    
    print "$w[1]\t$w[2]\t$w[3]\t$w[4]\t$Hepg2_PSI\t$K562_PSI\t$MCF7_PSI\t$HeLas3_PSI\t$GM19878_PSI\t$IMR90_PSI\t$Hepg2_COV\t$Hepg2_COV1\t$Hepg2_COV2\t$K562_COV\t$K562_COV1\t$K562_COV2\t$MCF7_COV\t$MCF7_COV1\t$MCF7_COV2\t$HeLas3_COV\t$HeLas3_COV1\t$HeLas3_COV2\t$GM_COV\t$GM_COV1\t$GM_COV2\t$IMR90_COV\t$IMR90_COV1\t$IMR90_COV2\t$w[71]\n";
 




}




