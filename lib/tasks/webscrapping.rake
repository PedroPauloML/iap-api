namespace :webscrapping do
  desc 'Create news from web scrapping script'
  task add_news: :environment do
    puts 'Creating news [...]'

    NEWS = [
      {
        "url":
          'https://portaliap.org/noticias/dia-da-inclusao-promessista-e-acoes-para-publico-com-necessidades-especiais-e-destaque-em-live/',
        "metadata": {
          "published_at": ' 11/12/2020',
        },
        "tags": ['Notícias'],
        "image":
          'https://portaliap.org/wp-content/uploads/2020/12/live-site-801x570.png',
        "title":
          'Dia da Inclusão Promessista e ações para público com necessidades especiais, é destaque em live',
        "content":
          "<p>Todo o primeiro sábado de dezembro fica establecido como o Dia Da Inclusão promessista, ele foi lançado durante a “Live Inclusão” no último sábado (05/12), realizada pela Secretaria de Inclusão da Convenção Geral das igrejas Adventista da Promessa. A transmissão contou com a participação da Diretoria Geral, ministérios gerais e líderes regionais.</p><p>A live também teve, entre outras atrações, o depoimento de uma família promessista, de São Paulo-SP. Os pais: Zilma Marques de Oliveria Costa e Osmar Pereira da Costa, falaram do desafio de criar seu filho, Bruno Marques Costa (21 anos), portador de uma doença degenerativa, e de como a igreja lidou com isso. Ao decorrer da programação, pastores regionais falaram sobre a importância de uma secretaria voltada para pessoas com deficiência e síndromes e demonstraram apoio a iniciativa. Toda a transmissão teve a tradução na Língua Brasileira de Sinais (LIBRAS).</p><p>Durante a transmissão foi exibida uma entrevista com o presidente geral, Pr. Adelmilson Júlio Pereira, e a diretora da Secretaria de Inclusão, Juliana Menezes Duque José, que falou dos objetivos do ministério e das ações que pretende lançar nos próximos meses. Juliana afirmou que, “a inclusão na igreja, não resulta de uma motivação social, mas é uma manifestação que vêm da Cruz, e isso nos impulsiona a comunicar à todas as pessoas o Evangelho, e a cuidar da pessoa com deficiência.”, pontuou na live. A Secretaria conta também, além da coordenação geral de Juliana, com a seguinte equipe: Natália Cristian (secretária); Lílian Pimenta (coordenadora pedagógica e produtora de conteúdo); e Ana Cláudia Almeida (líder do ministério de Surdos/LIBRAS).</p><p>O pr. Adelmilson contou como surgiu a ideia de criar a secretaria e qual a intenção da Convenção Geral na sua criação: “Nosso foco é alcançar todas as pessoas com o Evangelho, e ter uma secretaria que pudesse dialogar, compartilhar e encontrar políticas na denominação para que essas pessoas tivessem acesso a igreja e ao evangelho”, afirmou o presidente. Ele disse que foi impactado através de um aluno surdo, no Centro de Estudos Teológicos Adventista da Promessa (CETAP), em Santana, na Capital Paulista. Através dele, o pastor na época diretor da instituição, viu como esse público precisava de atenção específica dentro do contexto promessista.</p><p>A pregação na transmissão ficou por conta do aluno que o pr. Adelmilson ouviu em sala de aula, agora o presbítero Daniel Pereira Cruz, da IAP de Vila Medeiros (São Paulo-SP), que falou da palavra em Filipenses 2.1-5, por meio de LIBRAS, com a tradução da intérprete Ana Claudia Almeida, enfatizando que se deve seguir o exemplo de amor e serviço do Cristo encarnado. “Jesus ajuda todas as pessoas, Ele conhece cada um. Paulo nos ensinou sobre este amor, e nós devemos aprender sobre ele.”, disse Daniel na mensagem.</p><p>Durante toda a live os internautas foram incentivados pelas apresentadoras, Juliana Duque e Lílian Pimenta, a utilizar nas redes sociais a hashtag #UmaIgrejaParaTodos, e no final, o presidente geral, pr. Adelmilson convocou a igreja à amar e servir as pessoas com necessidades especiais, e orou por elas.</p><p><strong>\"Vakinha\" pelo tratamento de Gael</strong></p><p>Durante o final da Live, o presidente geral lançou uma “vakinha” para ajudar o pequeno Gael, de um ano de idade. Ele precisa fazer um tratamento, com a realização de vários exames e fisioterapia neurológicos, para não perder a visão. Este problema ocorreu, porque a criança passou da hora de nascer, não recebendo oxigenação no cérebro. Ele é de uma família promessista, de Itaituba (PA).</p><p>A meta de arrecadação é de R$ 20 mil reais, e chegou até agora, a R$ 2.845,00. Você pode contribuir e compartilhar o seguinte link da doação: <a href=\"https://www.vakinha.com.br/vaquinha/tratamento-do-gael-jose-barbosa-pereira\">https://www.vakinha.com.br/vaquinha/tratamento-do-gael-jose-barbosa-pereira</a>;</p><p>Para conferir a “Live Inclusão” e rever todos os outros momentos, basta acessar a transmissão no canal promessista no YouTube:<a href=\"https://www.youtube.com/watch?v=qigaWQPim1g\"> https://www.youtube.com/watch?v=qigaWQPim1g</a>.</p><p>&nbsp;</p><p>&nbsp;</p>",
      },
      {
        "url":
          'https://portaliap.org/noticias/nota-de-falecimento-pb-paulo-sergio-dias-de-freitas/',
        "metadata": {
          "published_at": ' 05/10/2020',
        },
        "tags": ['IAP no Brasil', 'Notícias'],
        "image":
          'https://portaliap.org/wp-content/uploads/2020/10/PauloSergio-800x570.png',
        "title": 'NOTA DE FALECIMENTO – Pb. Paulo Sérgio Dias de Freitas.',
        "content":
          '<p>Oremos pela família e amigos do Pb. Paulo Sérgio Dias de Freitas (Igreja Adventista da Promessa de Lages, Convenção Rio de Janeiro e Espírito Santo).</p><p>Hoje dormiu no Senhor, um homem de Deus.</p><p>Nos solidarizamos com a família do valoroso Pb. Paulo Sérgio Dias de Freitas. Ele foi recolhido pelo Senhor nesta noite deste domingo (04/10/20), aos 56 anos.</p><p>Pb. Paulo era presbítero na IAP de Lages e membro do Conselho Fiscal da Convenção Rio de Janeiro e Espírito Santo. Homem de muita fé, convicção,dedicacão,companheiro, íntegro , discipulador, paciente ao ensinar, gostava de ministrar estudos bíblicos, estudioso da palavra, e por isso tinha muito conhecimento bíblico. Sem dúvidas deixou uma linda história de muito amor por Jesus, pela palavra de Deus e pela igreja de Cristo. O Pb. Paulo era um exemplo de servo de Cristo na humildade, alegria, servindo à obra de Cristo com todo o coração, Grande homem que foi, trabalhador honesto, desde cedo batalhando por um futuro, pai zeloso, esposo amoroso, amigo para todas as horas.</p><p>Casado com Luzia Fernandes Afonso de Freitas, teve 2 filhas. Oremos por todos eles, especialmente pela esposa, filhas e genros.</p><p>Na sua vida, é muito sugestivo e cabem adequadamente as palavras do apóstolo Paulo: “Combati o bom combate, acabei a carreira, guardei a fé. Desde agora, a coroa da justiça me está guardada, a qual o Senhor, justo juiz, me dará naquele Dia; e não somente a mim, mas também a todos os que amarem a sua vinda.” (2 Tm 4: 7-8).</p><p>Diretoria da Convenção Rio de Janeiro/ES</p>',
      },
      {
        "url":
          'https://portaliap.org/noticias/nota-de-falecimento-pastor-ozias-vaux-braga/',
        "metadata": {
          "published_at": ' 24/09/2020',
        },
        "tags": ['IAP no Brasil', 'Notícias'],
        "image":
          'https://portaliap.org/wp-content/uploads/2020/09/falecimento3-800x570.png',
        "title": 'Nota de Falecimento – Pastor Ozias Vaux Braga',
        "content":
          '<p>É com imenso pesar que informamos o falecimento do pastor Pastor Ozias Vaux Braga, vice-superintende da Convenção Norte e pastor das igrejas do Marco e da Sacramenta no norte do país.</p><p>O pastor dormiu no Senhor na manhã desta quinta-feira (24/9) por complicações de Leucemia aguda. Ele foi diagnosticado no Pronto Socorro Municipal sendo transferido para o Hospital Ofir Loyola onde ficou sob cuidados intensivos da equipe médica e em estado grave, evoluindo à óbito.</p><p>Pastor Ozias era casado com a Dsa. Vanessa Dias e pai da irmã Clarice Dias.</p><p>A Igreja Adventista da Promessa se solidariza com os familiares e com os irmãos das igrejas que o nosso querido irmão pastoreava. A dor da perda é inexplicável, mas cremos na ressurreição desse servo de Deus que dedicou sua vida a Cristo e esperamos encontrá-lo na Segunda Vinda de Cristo quando o nosso Salvador virá buscar seu povo (1 Ts 3:13-18).</p>',
      },
      {
        "url":
          'https://portaliap.org/noticias/nota-de-falecimento-pb-eduardo-alves-vian/',
        "metadata": {
          "published_at": ' 19/09/2020',
        },
        "tags": ['Brasil / Mundo', 'Notícias'],
        "image":
          'https://portaliap.org/wp-content/uploads/2020/09/falecimento2-800x570.png',
        "title": 'Nota de falecimento – Pb. Eduardo Alves Vian',
        "content":
          '<p>Descansou no Senhor o presbítero Eduardo Alves Viana da nossa igreja em Tomar do Geru, sendo um dos pioneiros na referida igreja e também na igreja do Povoado Lagoa do Sandes, do mesmo município. Casado com a Dsa Maria Severina Viana, tendo 3 filhos, 6 netos e 1 bisneto, deixa enlutada uma linda família, bem como uma cidade na qual foi abençoado e abençoador. A Região Seal da Igreja Adventista da Promessa, na qual atuou por muito tempo, chora com o descanso desse guerreiro, porém, com a certeza de que ele será despertado do sono pré Parousia com som de trombeta de Deus.</p>',
      },
      {
        "url":
          'https://portaliap.org/noticias/nota-de-falecimento-pr-edson-andrade/',
        "metadata": {
          "published_at": ' 12/09/2020',
        },
        "tags": ['IAP no Brasil', 'Notícias'],
        "image":
          'https://portaliap.org/wp-content/uploads/2020/09/falecimento-800x570.png',
        "title": 'Nota de falecimento – Pr. Edson Andrade',
        "content":
          '<p>Na madrugada deste sábado (12), dormiu no Senhor o Pr. Edson Andrade. (Superintendente da Convenção Paulistana Leste – SP). O pastor Edson lutava contra um câncer muito agressivo e cremos que o Senhor lhe deu descanso dessa luta. Pastor Edson era um importante lider promessista na cidade de São Paulo. Pastoreou por mais de 19 anos seguidos a Igreja em Jd das Oliveiras, uma grande igreja na zona leste da cidade. Cremos que o querido pastor descansa o sono dos justos e em breve, por ocasião da volta de Jesus o veremos novamente. Enquanto esse dia não chega, supliquemos o consolo de Deus sobre nossos irmãos da Convenção Paulistana Leste, especialmente por sua esposa, filhos, netos, bem como por sua mãe, irmãos e todos os familiares.</p>',
      },
      {
        "url":
          'https://portaliap.org/noticias/nota-de-falecimento-pr-tito-recalde-caballero/',
        "metadata": {
          "published_at": ' 27/08/2020',
        },
        "tags": ['IAP no Mundo', 'Notícias'],
        "image":
          'https://portaliap.org/wp-content/uploads/2020/08/pr-tito-800x570.png',
        "title": 'Nota de Falecimento – Pr. Tito Recalde Caballero',
        "content":
          "<p>A Junta de Missões lamenta o falecimento pela COVID 19 do Pr. Tito Recalde Caballero, Vice Superintendente da Convenção Paraguai. Não foi apenas uma perda para a igreja no Paraguai, mas para a igreja de Cristo.<br>\nConhecido por ser um homem de grande empenho e amável diante de todos, descansou de suas obras.<br>\nOramos para que Deus console a família e amigos. E ficamos na expectativa de rever o nosso querido pastor conforme diz a palavra de Deus em 1Coríntios 15.20–21 (NTLH):<br>\nMas a verdade é que Cristo foi ressuscitado, e isso é a garantia de que os que estão mortos também serão ressuscitados. Porque, assim como por meio de um homem veio a morte, assim também por meio de um homem veio a ressurreição.</p>",
      },
      {
        "url":
          'https://portaliap.org/noticias/luana-e-anderson-da-igreja-adventista-da-promessa-em-vila-falchi-maua-sp-foram-surpreendidos-com-o-desabamento-estrutural-de-sua-casa/',
        "metadata": {
          "published_at": ' 24/08/2020',
        },
        "tags": ['Brasil / Mundo', 'Notícias'],
        "image":
          'https://portaliap.org/wp-content/uploads/2020/08/casa-800x570.png',
        "title":
          'Luana e Anderson, da Igreja Adventista da Promessa em Vila Falchi – Mauá/SP foram surpreendidos com o desabamento estrutural de sua casa',
        "content":
          "<p>Prezados irmãos, no último sábado (22) nossos irmãos Luana e Anderson, da Igreja Adventista da Promessa em Vila Falchi – Mauá/SP foram surpreendidos com o desabamento estrutural de sua casa. Louvamos a Deus pelo grande livramento, pois, aos primeiros sinais de rachadura, nossos irmãos e seus vizinhos tiveram tempo de saírem das casas, sem que qualquer pessoa se ferisse. Pedimos a oração dos irmãos para que esse casal possa reerguer de forma segura seu lar e ajudar nos reparos dos imóveis vizinhos que também foram atingidos. Abaixo está o registro do exato momento em que houve o desabamento. Foi também mobilizada uma vaquinha virtual para que eles possam ser abençoados nesse momento tão delicado. Contamos com sua participação seja em oração, seja em contribuição! Deus os abençoe! Graça e paz!</p><p>Imagem do desabamento:<br>\n<a href=\"https://www.facebook.com/143371292411222/posts/3420006134747705/\">https://www.facebook.com/143371292411222/posts/3420006134747705/</a></p><p>Contribua:<br>\n<a href=\"http://vaka.me/1317229\">http://vaka.me/1317229</a></p>",
      },
      {
        "url":
          'https://portaliap.org/noticias/nota-de-falecimento-pr-raimundo-da-silva-muniz/',
        "metadata": {
          "published_at": ' 19/08/2020',
        },
        "tags": ['Brasil / Mundo', 'Notícias'],
        "image":
          'https://portaliap.org/wp-content/uploads/2020/08/pastor-800x570.png',
        "title": 'NOTA DE FALECIMENTO – Pr. Raimundo da Silva Muniz',
        "content":
          "<p>Oremos pela família e amigos do Pr. Raimundo da Silva Muniz (Igreja Adventista da Promessa, Convenção Rio de Janeiro e Espírito Santo).</p><p>Hoje dormiu no Senhor, um homem de Deus.</p><p>Nos solidarizamos com a família do valoroso Pr. Raimundo da Silva Muniz. Ele foi recolhido pelo Senhor nesta noite de terça-feira (18/08/20), aos 80 anos.<br>\nPastor Raimundo foi Pastor de algumas IAPs na Convenção RJ/ES e foi vice Superintendente da Região. Homem de muita fé, convicção, discipulador, paciente ao ensinar, gostava de ministrar estudos bíblicos, estudioso da palavra, e por isso tinha muito conhecimento bíblico. Sem dúvidas deixou uma linda história de muito amor por Jesus, pela palavra de Deus e pela igreja de Cristo. O Pr. Muniz era um exemplo de servo de Cristo na humildade, alegria, servindo à obra de Cristo com todo o coração, sem apego a posição, títulos ou cargos.<br>\nCasado com Marizete de Almeida Muniz, teve 3 filhos. Oremos por todos eles, especialmente pela esposa, além de noras, genro e netos.<br>\nNa sua vida, é muito sugestivo e cabem adequadamente as palavras do apóstolo Paulo: “Combati o bom combate, acabei a carreira, guardei a fé. Desde agora, a coroa da justiça me está guardada, a qual o Senhor, justo juiz, me dará naquele Dia; e não somente a mim, mas também a todos os que amarem a sua vinda.” (2 Tm 4: 7-8).</p><p>Diretoria da Convenção Rio de Janeiro/ES</p>",
      },
      {
        "url":
          'https://portaliap.org/noticias/nota-de-falecimento-diaconisa-dulcila-maria/',
        "metadata": {
          "published_at": ' 22/07/2020',
        },
        "tags": ['Brasil / Mundo', 'Notícias'],
        "image":
          'https://portaliap.org/wp-content/uploads/2020/07/luto-800x570.png',
        "title": 'Nota de Falecimento – Diaconisa Dulcila Maria',
        "content":
          "<p><a href=\"https://portaliap.org/wp-content/uploads/2020/07/5bf04d7b-e826-481c-b918-a3a16b614a4a.jpg\"><img class=\"alignnone size-medium wp-image-41335\" src=\"https://portaliap.org/wp-content/uploads/2020/07/5bf04d7b-e826-481c-b918-a3a16b614a4a-227x300.jpg\" alt=\"\" width=\"227\" height=\"300\" srcset=\"https://portaliap.org/wp-content/uploads/2020/07/5bf04d7b-e826-481c-b918-a3a16b614a4a-227x300.jpg 227w, https://portaliap.org/wp-content/uploads/2020/07/5bf04d7b-e826-481c-b918-a3a16b614a4a-768x1015.jpg 768w, https://portaliap.org/wp-content/uploads/2020/07/5bf04d7b-e826-481c-b918-a3a16b614a4a-775x1024.jpg 775w, https://portaliap.org/wp-content/uploads/2020/07/5bf04d7b-e826-481c-b918-a3a16b614a4a-750x991.jpg 750w, https://portaliap.org/wp-content/uploads/2020/07/5bf04d7b-e826-481c-b918-a3a16b614a4a.jpg 942w\" sizes=\"(max-width: 227px) 100vw, 227px\"></a></p><p>“Então ouvi uma voz do céu, que dizia: Escreve: Bem-aventurados os mortos que desde agora morrem no Senhor. Sim, diz o Espírito, para que descansem dos seus trabalhos, pois as suas obras os acompanham”. Apocalipse 14:13</p><p>É com profunda tristeza que noticiamos o falecimento da Diaconisa Dulcila Maria de Santana aos 72 anos de idade. Seu falecimento ocorreu no fim desta tarde. A Diaconisa Dulcila, foi casada com o pastor Paulo Manoel de Santana, já falecido. A Diaconisa Dulcila era uma promessista nata. Foi batizada nas águas em 1963 e desempenhou ao longo de sua vida, grande ajuda para igreja de Cristo Jesus. Oremos pela família enlutada e nutramos a esperança da ressurreição da vida eterna.</p><p>&nbsp;</p><p>Convenção Nordeste Oriental.</p>",
      },
      {
        "url":
          'https://portaliap.org/noticias/uma-linda-iniciativa-da-igreja-adventista-da-promessa-em-vila-maria/',
        "metadata": {
          "published_at": ' 07/06/2020',
        },
        "tags": ['IAP no Brasil', 'Notícias'],
        "image":
          'https://portaliap.org/wp-content/uploads/2020/06/VM-OK-800x570.png',
        "title":
          'Uma linda iniciativa da Igreja Adventista da Promessa em Vila Maria',
        "content":
          "<p>Um grupo de cerca de 200 colombianos está acampado no aeroporto de Guarulhos (SP), desde o início da pandemia, aguardando um vôo para repatria-los, ainda sem previsão. A situação é crítica, pois eles não tinham nem como se alimentarem. Sabendo disso, os ministérios de Casais, de Jovens e Infantil da Igreja Adventista da Promessa em Vila Maria, além de outros voluntários, decidiram ajudar. Eles estão fazendo e entregando diariamente 200 marmitas para as pessoas acampadas. Levaram também brinquedos para as crianças, livros infantis e outros materiais. Não estão oferecendo apenas o alimento, mas sim carinho e atenção, mesmo em tempos de isolamento.</p><p>Oremos por essa linda iniciativa. Peçamos que Deus de as condições necessárias para que o projeto se mantenha até que todas as pessoas assistidas retornem para seu pais de origem.</p><p>Ao Senhor toda a glória. Amém.</p><p><a href=\"https://portaliap.org/wp-content/uploads/2020/06/VM1.jpg\"><img class=\"alignnone size-medium wp-image-41109\" src=\"https://portaliap.org/wp-content/uploads/2020/06/VM1-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" srcset=\"https://portaliap.org/wp-content/uploads/2020/06/VM1-300x169.jpg 300w, https://portaliap.org/wp-content/uploads/2020/06/VM1-768x432.jpg 768w, https://portaliap.org/wp-content/uploads/2020/06/VM1-1024x576.jpg 1024w, https://portaliap.org/wp-content/uploads/2020/06/VM1-750x422.jpg 750w, https://portaliap.org/wp-content/uploads/2020/06/VM1-1140x641.jpg 1140w, https://portaliap.org/wp-content/uploads/2020/06/VM1.jpg 1600w\" sizes=\"(max-width: 300px) 100vw, 300px\"></a></p><p><a href=\"https://portaliap.org/wp-content/uploads/2020/06/VM2.jpg\"><img onload=\"Wpfcll.r(this,true);\" src=\"https://portaliap.org/wp-content/plugins/wp-fastest-cache-premium/pro/images/blank.gif\" class=\"alignnone size-medium wp-image-41110\" data-wpfc-original-src=\"https://portaliap.org/wp-content/uploads/2020/06/VM2-169x300.jpg\" alt=\"\" width=\"169\" height=\"300\" data-wpfc-original-srcset=\"https://portaliap.org/wp-content/uploads/2020/06/VM2-169x300.jpg 169w, https://portaliap.org/wp-content/uploads/2020/06/VM2.jpg 540w\" sizes=\"(max-width: 169px) 100vw, 169px\"></a></p><p><a href=\"https://portaliap.org/wp-content/uploads/2020/06/VM3.jpg\"><img onload=\"Wpfcll.r(this,true);\" src=\"https://portaliap.org/wp-content/plugins/wp-fastest-cache-premium/pro/images/blank.gif\" class=\"alignnone size-medium wp-image-41111\" data-wpfc-original-src=\"https://portaliap.org/wp-content/uploads/2020/06/VM3-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" data-wpfc-original-srcset=\"https://portaliap.org/wp-content/uploads/2020/06/VM3-300x169.jpg 300w, https://portaliap.org/wp-content/uploads/2020/06/VM3-768x432.jpg 768w, https://portaliap.org/wp-content/uploads/2020/06/VM3-1024x576.jpg 1024w, https://portaliap.org/wp-content/uploads/2020/06/VM3-750x422.jpg 750w, https://portaliap.org/wp-content/uploads/2020/06/VM3-1140x641.jpg 1140w, https://portaliap.org/wp-content/uploads/2020/06/VM3.jpg 1600w\" sizes=\"(max-width: 300px) 100vw, 300px\"></a></p>",
      },
    ]

    user = User.last
    News.transaction do
      NEWS.each do |data|
        news =
          News.new(
            title: data[:title],
            caption: data[:title],
            content_html: data[:content],
            content_text: data[:content],
            tags_attributes: [*data[:tags].collect { |tag| { name: tag } }],
            church_id: user.church_id,
            author_id: user.id,
          )
        news.remote_cover_url = data[:image]
        news.save!
      end
    end

    puts 'Creating news [OK]'
  end
end
