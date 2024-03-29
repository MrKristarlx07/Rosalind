#######
  #Autor: @MrKristarlx07 (GitHub) | @marbasz (Twitter)
  #Script: Dada una secuencua de DNA (A, C, G, T) de a m�s 1000 nt, cuente cada nucle�tido
  #Lenguaje: R

  #Notas:
    #El script le devuelve de pantalla la cuenta, se puede modificar para que haga la impresi�n en txt
#######

input <- readline() #Se hace lectura de toda la l�nea �nica de la cadena de caracteres
sub_dna <- substr(input, 0, nchar(input)) #Se extrae todo el input para guardarlo en la cadena de modificaci�n
bis_dna <- strsplit(sub_dna, "")[[1]] #Divide elementos de la cadena de caracteres de uno en uno para poder leerles adecuadamente de forma individual
cont <- c(0, 0, 0, 0) #Vector de almacenamiento de aparici�n de cada nucle�tido

for(letra in bis_dna) #Se recorre la cadena ya dividida de forma individual & se hace el conteo respectivo
{
  if(letra=="G")
    cont[3] <- cont[3]+1
  else
  {
    if(letra=="C")
      cont[2] <- cont[2]+1
    else
    {
      if(letra=="T")
        cont[4] <- cont[4]+1
      else
      {
        if(letra=="A")
          cont[1] <- cont[1]+1 
        else
          stop("error") #Si encuentra alguna letra extra�a, bota programa
      }
    }
  }
}
print(cont) #Imprime el arreglo de contadores
