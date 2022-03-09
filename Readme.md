<>
<br />
<p align="center">
  <a href="">
    <img src="https://user-images.githubusercontent.com/49700354/114078715-a61b2f00-987f-11eb-8eef-6fd7cfc17d33.png" alt="" width="80" height="80">
  </a>

  <h3 align="center">Arquitetura e Organização de Computadores: Projeto Final</h3>
  
  <p align="center">
    Este repositório contempla um projeto software e um relatório em formato de artigo cujo objetivo é a aplicação de técnicas de projetos e arquitetura de computadores
    <br />
    <a href=""><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="">Relatório</a>
    ·
    <a href="">Slides</a>
    ·
    <a href="">Processador</a>
  </p>
</p>

<!-- ABOUT THE PROJECT -->
## Sobre o projeto Processador Split
É um processador de 8 bits denominado Split baseado no processador MIPS(Microprocessor without interlocked pipeline stages) capaz de realizar operações aritméticas básicas, operações de transferência de dados e operações de saltos.

## Ferramentas e Linguagens
Foi contruído na linguagem VHDL que é usada para facilitar o design de circuitos digitais e implementada no programa [Intel Quartus Prime Lite](https://fpgasoftware.intel.com/?edition=lite). A simulação (waveform) foi feita dentro do Quartus por meio do ambiente [ModelSIM](https://www.intel.com.br/content/www/br/pt/software/programmable/quartus-prime/model-sim.html) que é utilizado para simulação de linguagens de descrição de hardware.


## Esquema para implementação
<p align="center">
  <a href="">
    <img src=>
  </a>

  ## Componentes / Unidades funcionais do processador:
 * [Program Counter(PC)](), 
 * [Banco de Registradores](), 
 * [Memória de Instruções](), 
 * [Unidade Lógica Aritmética (ULA)]), 
 * [Unidade de Controle](),
 * [Memória de Dados]()  


  ## Registradores e Formato das instruções 
 Pelo fato do processaor de 8 bits possuir limitações quanto ao tamanho da palavra, O Split possui apenas quatro registradores possíveis de uso e eles são compostos por 2 bits cada. 

### Objetivos de aprendizagem da disciplina Arquitetura e Organização de Computadores
Apresentar a natureza e as características dos sistemas de computação modernos, conhecendo os paradigmas organizacionais que determinam as capacidades e o desempenho dos sistemas computacionais, transmitindo o conhecimento necessário para a utilização, gerenciamento e projetos dos sistemas computacionais para revitalizar os processos de organização e as arquiteturas de computadores existentes.

### Para executar o processador:
* Abra o programa [Intel Quartus]() e tenha instalado o simulador ModelSIM
* Clone este repositório e copie a pasta split/componentes para um local de sua preferência
* Abra o projeto da pasta split/componentes no Quartus
* Faca a análise e síntese
* Gere a waveform
  
## Conteúdos extras:
[Simulador MIPS32]()
[MIPS DataPath]()

