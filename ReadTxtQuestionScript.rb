#Versão 1.1 - 06/12/2017
#Este Script lê um arquivo .txt formatado no padrão especificado para armazenamento de questões e os armazena na memória
#Para executar este script, passe os seguintes argumentos:
#1 - Endereço do arquivo || 2 - Dia da prova: (1 ou 2) || 3 - Ano da prova (ex: 2016)

if ARGV.empty?
	puts "Passe os seguintes argumentos e tente novamente: 'Endereço do arquivo' 'Dia da prova (1 ou 2) 'Ano da prova'" 
	return
end

count = 0;

File.open(ARGV[0], "r").each_line do |line|
	if line.starts_with?("{") #Encontrou uma nova questão.
		count = 0; #Reseta o contador

		area = line #Guarda o conteudo da primeira linha numa variavel 'area'
		area = area[1..-1] '{' #Deleta a chave para limpar a string

		count = count + 1
	elsif count==1 #O próximo elemento é o enunciado
		en_temp = line
		enunciado = en_temp.split("#p") #Separa o enunciado por parágrafo e guarda na variável enunciado, que é um array de N posições.
		count = count + 1
	elsif count==2 #O próximo elemento é a letra A
		a = line
		a = a[1..-1]
		count = count + 1
	elsif count==3 #O próximo elemento é a letra B
		b = line
		b = b[1..-1]
		count = count + 1
	elsif count==4 #O próximo elemento é a letra C
		c = line
		c = c[1..-1]
		count = count + 1
	elsif count==6 #O próximo elemento é a letra D
		d = line
		d = d[1..-1]
		count = count + 1
	elsif count==7 #O próximo elemento é a letra E
		e = line
		e = e[1..-1]
		count = count + 1		
	elsif count==8 #O próximo elemento é a letra correta
		alternativa_correta = line		
		count = count + 1
	elsif count==9 #Todas as imagens estão contidas aqui.	
		im_temp = line
		im_split = im_temp.split("#")
		count = count + 1;
	elsif count==10 #Todas as referências estão contidas aqui.
		ref_temp = line
		ref_split = ref_temp.split("#")
		count = count + 1;			
	elsif line.starts_with?("}") #Verifica se chegou ao fim da questão
		#Lógica para guardar todas as variáveis obtidas numa tabela do BD
	end	
end	
