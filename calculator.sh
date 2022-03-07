#!bin/bash
echo "Masukan Angka 1 : "
read a
echo "Masukan Angka 2 :"
read b

# Tipe Inputan (Menu utama)
echo "Pilih salah satu : "
echo "1. Penjumlahan"
echo "2. Pengurangan"
echo "3. Perkalian"
echo "4. Pembagian"
read ch

# Logika Switch case untuk pemilihan menu
case $ch in
 1)res=`echo $a + $b | bc`
 ;;
 2)res=`echo $a - $b | bc`
 ;;
 3)res=`echo $a \* $b | bc`
 ;;
 4)res=`echo "scale=2; $a / $b" | bc`
 ;;
esac
echo "Hasil : $res"
