input_file=$1
peaks_prefix=$2
for i in $(seq 1 22)
do
    cat $input_file | grep "chr${i}_" > ${peaks_prefix}_chr${i}.tsv
done
cat $input_file | grep "chrX_" > ${peaks_prefix}_chrX.tsv

# cat $input_file | grep "chrY_" > ${peaks_prefix}_chrY.tsv
