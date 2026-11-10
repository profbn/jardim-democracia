from app.database import SessionLocal, engine, Base
from app import models

MULHERES_INICIAIS = [
    {
        "nome": "Bárbara de Alencar",
        "peri": "11/02/1760 - 18/08/1832",
        "categoria": "politica",
        "cor": "#b22222",
        "bio": "Líder política cearense nascida no Crato, Bárbara de Alencar participou ativamente dos movimentos republicanos do Nordeste no início do século XIX. Em uma sociedade dominada por homens e marcada pelo poder monárquico português, ela apoiou financeiramente e politicamente a Revolução Pernambucana de 1817 e posteriormente a Confederação do Equador. Sua atuação foi considerada extremamente ousada para a época, tornando-se símbolo da resistência feminina e da luta por liberdade política no Brasil colonial.",
        "feitos": "É considerada uma das primeiras presas políticas do Brasil. Foi perseguida, presa e violentamente reprimida por defender ideias republicanas e separatistas contra o império português. Sua trajetória marcou profundamente a história política do Ceará e do Brasil como exemplo de coragem, liderança e participação feminina em movimentos revolucionários."
    },
    {
        "nome": "Maria Tomásia Figueira Lima",
        "peri": "1826 - 1902",
        "categoria": "ativismo",
        "cor": "#4b2c20",
        "bio": "Maria Tomásia foi uma importante líder abolicionista cearense do século XIX. Atuou em um período em que a escravidão ainda sustentava grande parte da economia brasileira, organizando campanhas públicas, arrecadações e movimentos sociais voltados para a libertação de pessoas escravizadas no Ceará. Seu trabalho envolvia mobilização social, articulação política e incentivo ao movimento abolicionista.",
        "feitos": "Fundadora da Sociedade Cearense Libertadora, teve papel central na campanha que tornou o Ceará o primeiro estado brasileiro a abolir oficialmente a escravidão, em 1884, antes da Lei Áurea. Sua atuação fortaleceu o movimento abolicionista nacional e contribuiu para ampliar o debate sobre liberdade e direitos humanos."
    },
    {
        "nome": "Maria da Penha",
        "peri": "01/02/1945 - Presente",
        "categoria": "ativismo",
        "cor": "#ff1493",
        "bio": "Biofarmacêutica cearense e ativista internacional pelos direitos das mulheres, Maria da Penha transformou sua própria história de violência doméstica em símbolo mundial de resistência e luta por justiça. Após sobreviver a duas tentativas de feminicídio, iniciou uma longa batalha judicial que chamou atenção internacional para a violência contra a mulher no Brasil.",
        "feitos": "Inspirou a criação da Lei Maria da Penha, considerada uma das legislações mais importantes do mundo no combate à violência doméstica. Sua luta levou o Brasil a ser responsabilizado internacionalmente por negligência em casos de violência contra mulheres e contribuiu para mudanças profundas nas políticas públicas de proteção feminina."
    },
    {
        "nome": "Maria Luiza Fontenele",
        "peri": "27/11/1942 - Presente",
        "categoria": "politica",
        "cor": "#4b0082",
        "bio": "Socióloga, professora e militante política, Maria Luiza Fontenele teve forte atuação nos movimentos sociais e na redemocratização do Brasil após o período militar. Sua trajetória política foi marcada pela defesa da participação popular, democracia direta e fortalecimento das políticas sociais.",
        "feitos": "Foi a primeira mulher eleita prefeita de uma capital brasileira, governando Fortaleza entre 1986 e 1989. Sua gestão ficou marcada por propostas inovadoras de participação popular, reorganização administrativa e valorização de políticas sociais voltadas à população mais vulnerável."
    },
    {
        "nome": "Izolda Cela",
        "peri": "09/05/1960 - Presente",
        "categoria": "educacao",
        "cor": "#0056b3",
        "bio": "Educadora, psicóloga e gestora pública cearense, Izolda Cela construiu uma carreira voltada principalmente para políticas educacionais. Sua atuação ganhou destaque nacional por priorizar alfabetização, ensino integral e melhoria da educação pública.",
        "feitos": "Foi a primeira mulher governadora do Ceará e participou da implementação de políticas educacionais que colocaram o estado entre os melhores índices de ensino público do Brasil. Também teve papel importante na expansão da educação em tempo integral."
    },
    {
        "nome": "Cacique Pequena",
        "peri": "1945 - Presente",
        "categoria": "indigena",
        "cor": "#228b22",
        "bio": "Liderança indígena do povo Jenipapo-Kanindé, Cacique Pequena tornou-se uma das principais vozes na defesa dos direitos indígenas no Ceará. Sua atuação envolve preservação cultural, defesa territorial, valorização da ancestralidade e fortalecimento da identidade de seu povo.",
        "feitos": "Reconhecida como uma das primeiras mulheres cacique do Ceará, tornou-se símbolo da resistência indígena contemporânea. Sua liderança contribuiu para processos de demarcação de terras e fortalecimento das tradições culturais indígenas."
    },
    {
        "nome": "Jovita Feitosa",
        "peri": "08/03/1848 - 09/10/1867",
        "categoria": "politica",
        "cor": "#daa520",
        "bio": "Cearense que ganhou notoriedade durante a Guerra do Paraguai ao tentar se alistar no exército brasileiro. Sua atitude desafiou diretamente os padrões sociais da época, que proibiam a participação feminina em conflitos militares.",
        "feitos": "Tornou-se símbolo do patriotismo feminino no século XIX. Sua tentativa de integrar o exército gerou repercussão nacional e expôs as restrições impostas às mulheres na sociedade imperial brasileira."
    },
    {
        "nome": "Patrícia Saboya",
        "peri": "04/04/1962 - Presente",
        "categoria": "politica",
        "cor": "#8a2be2",
        "bio": "Política cearense com forte atuação em defesa da infância, juventude e direitos sociais. Sua trajetória parlamentar é marcada pela defesa de políticas públicas voltadas à proteção de populações vulneráveis.",
        "feitos": "Foi a primeira mulher eleita senadora pelo Ceará e destacou-se em CPIs e projetos ligados à proteção da infância e juventude, fortalecendo políticas públicas de assistência social."
    },
    {
        "nome": "Luizianne Lins",
        "peri": "18/11/1968 - Presente",
        "categoria": "politica",
        "cor": "#e31a1c",
        "bio": "Jornalista e política cearense, iniciou sua trajetória nos movimentos estudantis e sociais, defendendo pautas urbanas, culturais e de juventude. Sua atuação sempre esteve ligada à ampliação de direitos sociais.",
        "feitos": "Criou os Centros Urbanos de Cultura, Arte, Ciência e Esporte (CUCA) em Fortaleza, que se tornaram referência nacional em políticas públicas para juventude, cultura e inclusão social."
    },
    {
        "nome": "Jade Romero",
        "peri": "19/08/1985 - Presente",
        "categoria": "politica",
        "cor": "#00ced1",
        "bio": "Vice-governadora do Ceará e gestora pública, Jade Romero atua em políticas de proteção social, direitos humanos e enfrentamento à violência contra mulheres.",
        "feitos": "Participou da expansão da Casa da Mulher Cearense e de políticas voltadas à interiorização da rede de proteção às mulheres em situação de violência."
    },
    {
        "nome": "Augusta Brito",
        "peri": "27/05/1976 - Presente",
        "categoria": "politica",
        "cor": "#ff4500",
        "bio": "Enfermeira e política cearense, Augusta Brito construiu sua carreira voltada à saúde pública, fortalecimento dos municípios e desenvolvimento regional. Sua atuação política está ligada à defesa do acesso à saúde e melhoria da qualidade de vida da população.",
        "feitos": "Atuou no Senado Federal e em mandatos estaduais defendendo melhorias para a saúde pública, fortalecimento das políticas municipais e investimentos em desenvolvimento regional no Ceará."
    },
    {
        "nome": "Zélia Correia Lima",
        "peri": "1924 - 2008",
        "categoria": "educacao",
        "cor": "#4682b4",
        "bio": "Médica e política atuante em Fortaleza, Zélia Correia Lima teve papel importante na estruturação de políticas de saúde voltadas para populações de baixa renda e periferias urbanas.",
        "feitos": "Defendeu a criação e ampliação de postos de saúde em áreas periféricas, contribuindo para ampliar o acesso ao atendimento médico em Fortaleza."
    },
    {
        "nome": "Rachel de Queiroz",
        "peri": "17/11/1910 - 04/11/2003",
        "categoria": "literatura",
        "cor": "#2c3e50",
        "bio": "Escritora, jornalista e intelectual cearense, Rachel de Queiroz foi uma das maiores referências da literatura brasileira do século XX. Sua obra retrata profundamente a realidade social do Nordeste brasileiro.",
        "feitos": "Foi a primeira mulher a ingressar na Academia Brasileira de Letras e autora de 'O Quinze', obra considerada um marco da literatura regionalista brasileira."
    },
    {
        "nome": "Almerinda Farias Gama",
        "peri": "16/05/1899 - 1999",
        "categoria": "ativismo",
        "cor": "#c71585",
        "bio": "Professora, jornalista e ativista política, participou ativamente do movimento sufragista brasileiro na luta pelos direitos civis e políticos das mulheres.",
        "feitos": "Teve papel importante na conquista do direito ao voto feminino no Brasil e contribuiu para ampliar a participação política das mulheres brasileiras."
    },
    {
        "nome": "Onélia Santana",
        "peri": "21/02/1971 - Presente",
        "categoria": "educacao",
        "cor": "#ff6347",
        "bio": "Psicopedagoga e gestora pública, dedica sua trajetória a políticas de proteção à infância e fortalecimento de famílias em situação de vulnerabilidade social.",
        "feitos": "Criou o programa Mais Infância Ceará, referência nacional em políticas públicas voltadas ao desenvolvimento infantil e proteção social."
    },
    {
        "nome": "Benedita de Oliveira",
        "peri": "1930 - 2015",
        "categoria": "ativismo",
        "cor": "#8b4513",
        "bio": "Liderança camponesa cearense, Benedita de Oliveira atuou na defesa dos direitos dos trabalhadores rurais e na luta por reforma agrária no interior do estado.",
        "feitos": "Foi referência em movimentos rurais e contribuiu para a organização de trabalhadores agrícolas na luta por terra, dignidade e melhores condições de vida."
    },
    {
        "nome": "Kessya Hanna Monteiro de Alencar",
        "peri": "21/06/1995 - Presente",
        "categoria": "politica",
        "cor": "#ff69b4",
        "bio": "Vereadora do município de Caucaia, Kessya Hanna Monteiro de Alencar representa uma nova geração de mulheres na política cearense. Sua atuação é voltada ao fortalecimento das políticas públicas municipais, à participação popular e ao desenvolvimento social da população caucaiense.",
        "feitos": "Como vereadora de Caucaia, atua na elaboração de leis, na fiscalização da administração pública e na defesa de projetos voltados ao desenvolvimento do município, fortalecendo a representatividade feminina na política local."
    },
    {
        "nome": "Francisca Clotilde",
        "peri": "1862 - 1935",
        "categoria": "literatura",
        "cor": "#9932cc",
        "bio": "Professora, escritora e educadora cearense, destacou-se como defensora da educação feminina e da formação intelectual das mulheres em um período de forte desigualdade social.",
        "feitos": "Foi uma das pioneiras da literatura feminina no Ceará e incentivou o acesso das mulheres à educação formal e à produção intelectual."
    },
    {
        "nome": "Ariana Aquino",
        "peri": "05/02/1983 - Presente",
        "categoria": "politica",
        "cor": "#20b2aa",
        "bio": "Política cearense e prefeita de Paraipaba, Ariana Aquino tem sua trajetória marcada pela atuação na administração pública municipal, buscando promover melhorias para a população por meio de investimentos em serviços essenciais e no desenvolvimento do município.",
        "feitos": "À frente da Prefeitura de Paraipaba, atua na implementação de políticas públicas voltadas à educação, saúde, infraestrutura e desenvolvimento social, contribuindo para o crescimento do município e para o fortalecimento da participação feminina na gestão pública."
    },
    {
        "nome": "Maria Emília Pessoa de Lima Carneiro",
        "peri": "1977 - Presente",
        "categoria": "politica",
        "cor": "#800080",
        "bio": "Advogada, professora e política cearense, Maria Emília Pessoa de Lima Carneiro iniciou sua trajetória pública em Caucaia, onde exerceu mandato como vereadora antes de se tornar deputada estadual. Sua atuação é voltada ao fortalecimento das políticas públicas, à defesa dos direitos das mulheres, da educação e da assistência social, destacando-se também pelo incentivo à participação feminina na política.",
        "feitos": "Foi vereadora de Caucaia e deputada estadual do Ceará, desenvolvendo projetos voltados ao fortalecimento da educação, da proteção social e dos direitos das mulheres, além de representar o município de Caucaia na Assembleia Legislativa do Ceará."
    },
    {
        "nome": "Patrícia Aguiar",
        "peri": "1963 - Presente",
        "categoria": "politica",
        "cor": "#ff8c00",
        "bio": "Política cearense com longa trajetória na administração pública, Patrícia Aguiar destacou-se como prefeita de Tauá e por sua atuação em defesa do desenvolvimento regional, da educação, da saúde e da melhoria da qualidade de vida da população do interior do Ceará.",
        "feitos": "Exerceu diversos mandatos como prefeita de Tauá, consolidando-se como uma das principais lideranças municipais do Ceará e contribuindo para a ampliação da participação das mulheres em cargos de liderança política."
    },
    {
        "nome": "Adísia Sá",
        "peri": "07/11/1929 - 2024",
        "categoria": "literatura",
        "cor": "#708090",
        "bio": "Jornalista, professora universitária e intelectual cearense, Adísia Sá teve longa trajetória na comunicação e na formação de novos profissionais da imprensa.",
        "feitos": "Tornou-se referência no jornalismo brasileiro e contribuiu para ampliar a presença feminina na imprensa e na educação superior."
    }
]

def seed_db():
    Base.metadata.create_all(bind=engine)
    db = SessionLocal()
    try:
        if db.query(models.Mulher).count() == 0:
            for item in MULHERES_INICIAIS:
                mulher = models.Mulher(**item)
                db.add(mulher)
            db.commit()
            print("🌱 Base de dados inicializada com 22 registos!")
        else:
            print("ℹ️ Base de dados já contém dados cadastrados.")
    except Exception as e:
        db.rollback()
        print(f"❌ Erro ao popular base de dados: {e}")
    finally:
        db.close()

if __name__ == "__main__":
    seed_db()
