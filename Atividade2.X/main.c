//
// Prot�tipo da fun��o. Isso � necess�rio porque ela �
// definida em outro arquivo (assembly.S)
void progAssembly();
//
// Fun��o principal MAIN. Dentro dela est� a chamada
// � fun��o progAssembly, que � o c�digo assembly
// que est� no arquivo assembly.S
int main()
{
progAssembly(); 
return 0;
}