Program Contar_Aleatorios;

USES CRT;

Const
  tamanho = 10; // Numero de valores presente no vetor
  vMinimo = 0;  // Valor minimo presente na sequência do vetor
  vMaximo = 90; // Valor máximo presente na sequência do vetor

Type
  dominio = 1..tamanho;
  faixa   = vMinimo..vMaximo;
  vetor   = array[dominio] of faixa;

Procedure criarVetor (var V:vetor; min,max:integer);
 var
     i : integer;
 begin
     for i := 1 to tamanho do
     V[i] := random(max-min+1)+min; // Pega um número N aleatório e acrescenta ao Vetor V
 end;

Procedure mostraVetor (var V:vetor);
 var
      i : integer;
 begin
      for i := 1 to tamanho do
      begin
           write (output, V[i]:3,' ');   // Escreve os valores aleatórios espaçadamente
      end;
 end;

Procedure contarVetor (var V:vetor);
 var
      i, maior, menor, soma, media : integer;
 begin
   maior := V[1];
   menor := V[1];
   soma  := V[1];
   for i := 2 to tamanho do
     begin
        if maior < V[i] then maior := V[i];
        if menor > V[i] then menor := V[i];
        soma := soma + V[i];
     end;
   media := soma div tamanho;   //Tira a média (Soma/Quantidade) de todos os números
   writeln ( );
   writeln ('============================');
   writeln ( );
   writeln ( 'O maior valor do vetor : ', maior);
   writeln ( 'O menor valor do vetor: ', menor);
   writeln ( 'A media dos valores     : ', media);
   writeln ( );
   writeln ('============================');
   writeln ( );
 end;

Var
    V:vetor;

Begin
  randomize;
  criarVetor (V, vMinimo, vMaximo);
  writeln ( );    //Pular linha, para separar os conteúdos (Opcional)
  mostraVetor(V);
  contarVetor(V);
  readkey;
End.
