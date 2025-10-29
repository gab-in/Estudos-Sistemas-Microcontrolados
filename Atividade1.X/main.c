//
// Protótipo da função. Isso é necessário porque ela é
// definida em outro arquivo (assembly.S)
void progAssembly();
//
// Função principal MAIN. Dentro dela está a chamada
// à função progAssembly, que é o código assembly
// que está no arquivo assembly.S
int main()
{
progAssembly(); 
return 0;
}