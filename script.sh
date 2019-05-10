# Escriba su código aquí
# Cambiar / por -
sed 's/\//-/g' data.csv > data2.csv
# Añadir 20 al año
sed 's/-\([0-9][0-9]\);/-20\1;/' data2.csv > data3.csv
#Mover el año al inicio YYYY
sed 's/\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9][0-9][0-9]\)/\3-\2-\1/'  data3.csv > data4.csv
#Remplazar N por \N
sed 's/;\(N\)/;\\N/' data4.csv > data5.csv
#Remplazar campos vacios a \N
sed 's/\(;;\)/;\\N;/' data5.csv > data6.csv
sed 's/;''$/;\\N/' data6.csv > data7.csv
#Remplazar , por .
sed 's/,/./g' data7.csv > data8.csv
#Remplazar ; por ,
sed 's/;/,/g' data8.csv > data9.csv
cat data9.csv