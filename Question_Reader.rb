#Versão 1.2 - 08/12/2017
#Este Script lê um arquivo .txt formatado no padrão especificado para armazenamento de questões e os armazena na memória.

class Question_Reader

	def ler_questao_txt(addr_arq) #O argumento é o endereço do arquivo .txt , que poderá conter, no máximo 90 questões. O método retorna um array de 90 questões.

		count = 0;
		num_questoes = 0;
		questoes = Array.new(90) #Cria o array que conterá todas as questoes. 

		File.open(addr_arq, "r").each_line do |line|
			if line.starts_with?("{") #Encontrou uma nova questão.
				count = 0; #Reseta o contador

				area = line #Guarda o conteudo da primeira linha numa variavel 'area'
				area = area[1..-1] '{' #Deleta a chave para limpar a string

				count = count + 1
			elsif count==1 #O próximo elemento é o enunciado
				en_temp = line
				#en_temp = en_temp.split("#p") #Separa o enunciado por parágrafo e guarda na variável enunciado, que é um array de N posições.
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
				if(alternativa_correta.starts_with?("A"))
					coluna_correta = 2
				elsif(alternativa_correta.starts_with?("B"))
					coluna correta = 3
				elsif(alternativa_correta.starts_with?("C"))
					coluna correta = 4
				elsif(alternativa_correta.starts_with?("D"))
					coluna correta = 5
				elsif(alternativa_correta.starts_with?("E"))
					coluna correta = 6
				end					
				count = count + 1
			elsif count==9 #Todas as imagens estão contidas aqui.	
				im_temp = line
				#im_temp = im_temp.split("#")
				count = count + 1
			elsif count==10 #Todas as referências estão contidas aqui.
				ref_temp = line
				#ref_temp = ref_temp.split("#")
				count = count + 1			
			elsif line.starts_with?("}") #Verifica se chegou ao fim da questão
				questao = Array.new(10) #Cria o array de questao armazenando os dados colhidos 
				questao[0] = area
				questao[1] = en_temp
				questao[2] = a
				questao[3] = b
				questao[4] = c
				questao[5] = d
				questao[6] = e
				questao[7] = coluna_correta
				questao[8] = im_temp
				questao[9] = ref_temp

				questoes[num_questoes] = questao #Adiciona a questão atual no array de questoes

				num_questoes = num_questoes + 1 #Incrementa o numero de questoes				
			end
		end

		while(num_questoes < 90) #Caso hajam menos questões que 90 no arquivo, o restante das posições será nulo.
			questoes[num_questoes] = nil
			num_questoes = num_questoes + 1
		end	
		
		return questoes		
	end	
end	#Fim da classe	
	

#DEPRECATED CODE
#Esta sessão possui código que era antes utilizado, mas que está desatualizado. Caso ele venha a ser útil novamente, está aqui guardado para que possa ser
#reimplementado com mais agilidade.

#001

#if ARGV.empty?
	#puts "Passe os seguintes argumentos e tente novamente: 'Endereço do arquivo' 'Dia da prova (1 ou 2) 'Ano da prova'" 
	#return
#end	
