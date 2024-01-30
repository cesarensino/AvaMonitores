#!/bin/bash

echo "--------------SCRIPT DE AVALIAÇÃO DE NOVOS MONITORES---------------"
echo ""
echo ""

echo "Abaixo são os chats que você participa"

echo "--------------------------------------"
echo ""
cpub=$(cat /tmp/freechains/user/cpub.txt)
freechains chains list > listah.txt
sleep 1
tr ' ' '\n' < listah.txt > lista.txt
echo ""
cat lista.txt
echo ""
#
sleep 1
# Carrega o arquivo de texto lista.txt
lineslista=$(cat lista.txt)
linescpublicas=$(cat cpublicas.txt)

valor=0
ref=0
chavemaior=0
while read -r chave; do
    while read -r lista; do
        echo -n "$lista $chave "
        valor=$[$(freechains --host=localhost:8330 chain $lista reps $chave) + $valor]
        
        echo ""
    done < lista.txt
    echo "a chave $chave tem o valor total de $valor"
    echo "------------------------------------------"
    echo ""
    if [ "$ref" -le "$valor" ]
     then 
        ref=$valor
        chavemaior=$chave
     else
       echo ""
     fi  
    valor=0
    
done < cpublicas.txt
echo "a chave $chavemaior tem a reputação $ref, sendo esta Chave Buscada a de maior reputação entre os chats pesquisados"

echo ""
echo "-----------------------------------------------------------------"

echo "Você deseja executar a criação do novo fórum agora? (sim/não)"
read resposta


if [ $resposta == "sim" ]; then
	echo "Informe um nome pro fórum"
	read nome
	freechains chains join '#'$nome "$cpub" "$chavemaior"
    echo "Ação executada!"
else
    echo "Fim do Programa"
fi




