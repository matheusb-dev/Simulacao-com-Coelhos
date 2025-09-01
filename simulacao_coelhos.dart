void main() {
  /*coelhos jovens, adultos e o mês atual.
   * Fim do Mês 1: População de coelhos: 4, Jovens 2,      Adultos 2
   * 
   * */

  //Atribuindo as variaveis
  int coelhos_jovens = 2;
  int coelhos_adultos = 2;
  int mes_atual = 0;

  //mes atual
  int mes = 0;

  //for para o 12 mes sem o predador
  for (mes = 1; mes <= 12; mes++) {
    
    mes_atual = coelhos_jovens + coelhos_adultos;
    
    print(
      "Fim do Mês $mes: População de coelhos: $mes_atual, Jovens $coelhos_jovens, Adultos $coelhos_adultos"
    );

    coelhos_adultos = coelhos_adultos + coelhos_jovens;
    coelhos_jovens = coelhos_adultos;
  }
  
  print("\n");
  print("------------------------------------------");
  print("\n");
  
  //com o predador
  for(mes = 13; mes <= 24; mes++){
    
    
    coelhos_jovens = (coelhos_jovens * 0.25).toInt();
    coelhos_adultos = (coelhos_adultos * 0.25).toInt();
    
    coelhos_adultos = coelhos_adultos + coelhos_jovens;
    coelhos_jovens = coelhos_adultos;
    
    mes_atual = coelhos_jovens + coelhos_adultos;
    
    
    //Resultado final da nossa população
     print(
      "Fim do Mês $mes: População de coelhos: $mes_atual, Jovens $coelhos_jovens, Adultos $coelhos_adultos",
    );
       
  }
}
