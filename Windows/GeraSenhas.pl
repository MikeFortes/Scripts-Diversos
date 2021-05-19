#!/usr/bin/perl
#Programa: RØD GSA
#Versão: 1.2
#SO's: Linux e Windows.
#Descrição: Gerador de senhas aleatórias
#Coded By: Ø Rodrigo Ø - [New Generation Crew]

$ver="v. 1.2";

print "\n+---------------[RØD GSA]---------------+\n"; 
print "|-------------------------------$ver--|\n"; 
print "|                                       |\n"; 
print "| Gerador de Senhas Aleatórias          |\n"; 
print "|                                       |\n"; 
print "| Coded By Ø Rodrigo Ø                  |\n"; 
print "+---------------------------------------+\n\n"; 
sleep 3;
system("clear");

@caracteres=("a","b","c","d","e","f","g",
"h","i","j","k","l","m","n","o","p","q",
"r","s","t","u","v","x","y","w","z",
"A","B","C","D","E","F","G","H","I","J",
"K","L","M","N","O","P","Q","R","S","T",
"U","V","X","Y","W","Z","1","2","3","4",
"5","6","7","8","9","0","!","#","_");

print "\nQuantas senhas você deseja criar? ";
$vezes=<STDIN>;
chomp($vezes);
system("clear");

for ($conta2=1, $max2=$vezes; $conta2 <= $max2; $conta2++) { 
print "\nRecomendado: de 8 a 12\n";
print "\nQuantos carácteres você deseja para a senha $conta2? ";
$carac=<STDIN>;
chomp($carac);
$p2="";

for ($conta=1, $max=$carac; $conta <= $max; $conta++) { 
$num = rand(@caracteres);
$p1 = $caracteres[$num];
$p2 = "$p1$p2";
}
push(@senhas,$p2);
print "\nSua nova senha é $p2\n"; 
}

if ($vezes >= 1) {
print "\n-----------------------------------------------\n";
print "Você deseja salvar a(s) senha(s) em um arquivo?\n";
print "-----------------------------------------------\n\n";
print "[s] Sim, desejo salvar a(s) senha(s) em um arquivo.\n";
print "[n] Não, não quero salvar a(s) senha(s).\n";
print "\nDigite o opção desejada: ";
$salvar=<STDIN>;
chomp($salvar);
}

if ($salvar eq "s") { 
system("clear");
print "\nDigite o nome para o arquivo: ";
$arq=<STDIN>;
chomp($arq);

if ($arq =~ /[\.][t][x][t]$/) { 
$arq =~ s/[\.][t][x][t]$//gi;
}

open(ARQ,">$arq\.txt");
foreach $senha(@senhas) {
print ARQ "$senha\n";
}
print ARQ "\n\nPassword created by RØD GSA $ver\n";
close(ARQ);

if (-e "$arq\.txt") {
print "\nArquivo salvo com sucesso!\n\n";
}
else
{
print "\nO arquivo não foi salvo.\n\n";
}
}