const BACKEND_CLOUD_URL = 'https://seu-backend.onrender.com/api/mulheres';

const API_URL = window.location.hostname.includes('github.io')
  ? BACKEND_CLOUD_URL
  : '/api/mulheres';

// Dados estáticos de fallback para funcionamento autônomo no GitHub Pages
const DADOS_FALLBACK = [
  { id: 1, nome: "Bárbara de Alencar", peri: "1760 - 1832", categoria: "politica", cor: "#b22222", bio: "Líder política cearense nascida no Crato...", feitos: "Primeira presa política do Brasil." },
  { id: 2, nome: "Maria Tomásia Figueira Lima", peri: "1826 - 1902", categoria: "ativismo", cor: "#4b2c20", bio: "Líder abolicionista cearense...", feitos: "Fundadora da Sociedade Cearense Libertadora." },
  { id: 3, nome: "Maria da Penha", peri: "1945 - Presente", categoria: "ativismo", cor: "#ff1493", bio: "Biofarmacêutica e ativista pelos direitos das mulheres...", feitos: "Inspirou a criação da Lei Maria da Penha." },
  { id: 4, nome: "Maria Luiza Fontenele", peri: "1942 - Presente", categoria: "politica", cor: "#4b0082", bio: "Socióloga e militante política...", feitos: "Primeira prefeita de uma capital brasileira (Fortaleza)." },
  { id: 5, nome: "Izolda Cela", peri: "1960 - Presente", categoria: "educacao", cor: "#0056b3", bio: "Educadora e gestora pública...", feitos: "Primeira mulher governadora do Ceará." },
  { id: 6, nome: "Cacique Pequena", peri: "1945 - Presente", categoria: "indigena", cor: "#228b22", bio: "Liderança do povo Jenipapo-Kanindé...", feitos: "Uma das primeiras mulheres cacique do Ceará." },
  { id: 7, nome: "Jovita Feitosa", peri: "1848 - 1867", categoria: "politica", cor: "#daa520", bio: "Lutou pelo alistamento militar feminino...", feitos: "Símbolo do patriotismo feminino cearense." },
  { id: 8, nome: "Patrícia Saboya", peri: "1962 - Presente", categoria: "politica", cor: "#8a2be2", bio: "Atuante em defesa da infância e juventude...", feitos: "Primeira mulher eleita senadora pelo Ceará." },
  { id: 9, nome: "Luizianne Lins", peri: "1968 - Presente", categoria: "politica", cor: "#e31a1c", bio: "Jornalista e ex-prefeita de Fortaleza...", feitos: "Criadora dos CUCAs em Fortaleza." },
  { id: 10, nome: "Jade Romero", peri: "1985 - Presente", categoria: "politica", cor: "#00ced1", bio: "Vice-governadora do Ceará...", feitos: "Atuação na expansão da Casa da Mulher Cearense." },
  { id: 11, nome: "Augusta Brito", peri: "1976 - Presente", categoria: "politica", cor: "#ff4500", bio: "Enfermeira e política cearense...", feitos: "Atuação em melhorias na saúde pública." },
  { id: 12, nome: "Zélia Correia Lima", peri: "1924 - 2008", categoria: "educacao", cor: "#4682b4", bio: "Médica e professora em Fortaleza...", feitos: "Estruturação de postos de saúde na periferia." },
  { id: 13, nome: "Rachel de Queiroz", peri: "1910 - 2003", categoria: "literatura", cor: "#2c3e50", bio: "Escritora cearense de renome nacional...", feitos: "Primeira mulher a entrar na Academia Brasileira de Letras." },
  { id: 14, nome: "Almerinda Farias Gama", peri: "1899 - 1999", categoria: "ativismo", cor: "#c71585", bio: "Ativista sufragista e jornalista...", feitos: "Luta pelo direito ao voto feminino no Brasil." },
  { id: 15, nome: "Onélia Santana", peri: "1971 - Presente", categoria: "educacao", cor: "#ff6347", bio: "Psicopedagoga e gestora pública...", feitos: "Criadora do programa Mais Infância Ceará." },
  { id: 16, nome: "Benedita de Oliveira", peri: "1930 - 2015", categoria: "ativismo", cor: "#8b4513", bio: "Liderança camponesa cearense...", feitos: "Organização de trabalhadores rurais no interior." },
  { id: 17, nome: "Kessya Hanna", peri: "1995 - Presente", categoria: "politica", cor: "#ff69b4", bio: "Vereadora do município de Caucaia...", feitos: "Defesa da participação jovem e feminina na política." },
  { id: 18, nome: "Francisca Clotilde", peri: "1862 - 1935", categoria: "literatura", cor: "#9932cc", bio: "Professora e escritora cearense...", feitos: "Pioneira na imprensa e educação feminina no Ceará." },
  { id: 19, nome: "Ariana Aquino", peri: "1983 - Presente", categoria: "politica", cor: "#20b2aa", bio: "Prefeita do município de Paraipaba...", feitos: "Gestão voltada a infraestrutura e desenvolvimento social." },
  { id: 20, nome: "Maria Emília Pessoa", peri: "1977 - Presente", categoria: "politica", cor: "#800080", bio: "Advogada, ex-vereadora e deputada...", feitos: "Defesa dos direitos da mulher e assistência em Caucaia." },
  { id: 21, nome: "Patrícia Aguiar", peri: "1963 - Presente", categoria: "politica", cor: "#ff8c00", bio: "Gestora pública com mandatos em Tauá...", feitos: "Liderança em desenvolvimento municipal no interior." },
  { id: 22, nome: "Adísia Sá", peri: "1929 - 2024", categoria: "literatura", cor: "#708090", bio: "Jornalista e professora universitária...", feitos: "Pioneira no jornalismo e ombudsman no Ceará." }
];

const jardim = document.getElementById('jardim');
const modal = document.getElementById('modal');
const overlay = document.getElementById('overlay');
const pesquisa = document.getElementById('pesquisa');
const filtroCategoria = document.getElementById('filtro-categoria');
const fecharModalBtn = document.getElementById('fecharModalBtn');

async function carregarMulheres() {
  const termo = pesquisa.value.trim().toLowerCase();
  const categoria = filtroCategoria.value;

  try {
    const params = new URLSearchParams();
    if (termo) params.append('pesquisa', termo);
    if (categoria !== 'todas') params.append('categoria', categoria);

    const response = await fetch(`${API_URL}?${params.toString()}`);
    if (!response.ok) throw new Error('API indisponível');
    
    const mulheres = await response.json();
    renderizarFlores(mulheres);
  } catch (error) {
    // Fallback: Filtragem local caso a API não esteja acessível (ex: GitHub Pages)
    let filtradas = DADOS_FALLBACK;

    if (categoria !== 'todas') {
      filtradas = filtradas.filter(m => m.categoria === categoria);
    }
    if (termo) {
      filtradas = filtradas.filter(m => 
        m.nome.toLowerCase().includes(termo) || 
        m.bio.toLowerCase().includes(termo) || 
        m.feitos.toLowerCase().includes(termo)
      );
    }

    renderizarFlores(filtradas);
  }
}

function renderizarFlores(lista) {
  jardim.innerHTML = '';

  if (lista.length === 0) {
    jardim.innerHTML = '<p style="grid-column: 1/-1; text-align: center;">Nenhuma mulher encontrada com os filtros selecionados.</p>';
    return;
  }

  lista.forEach(m => {
    const botao = document.createElement('button');
    botao.className = 'flor-box';
    botao.setAttribute('aria-label', `Abrir informações sobre ${m.nome}`);

    const flor = document.createElement('div');
    flor.className = 'flor';
    flor.style.backgroundColor = m.cor;

    for (let i = 0; i < 6; i++) {
      const petala = document.createElement('div');
      petala.className = 'petala';
      petala.style.transform = `rotate(${i * 60}deg)`;
      flor.appendChild(petala);
    }

    const caule = document.createElement('div');
    caule.className = 'caule';

    const nome = document.createElement('div');
    nome.className = 'nome-flor';
    nome.innerText = m.nome;

    botao.addEventListener('click', () => abrirModal(m));

    botao.appendChild(flor);
    botao.appendChild(caule);
    botao.appendChild(nome);

    jardim.appendChild(botao);
  });
}

function abrirModal(mulher) {
  document.getElementById('modal-nome').innerText = mulher.nome;
  document.getElementById('modal-peri').innerText = mulher.peri;
  document.getElementById('modal-bio').innerText = mulher.bio;
  document.getElementById('modal-feitos').innerText = mulher.feitos;

  modal.style.display = 'block';
  overlay.style.display = 'block';
}

function fecharModal() {
  modal.style.display = 'none';
  overlay.style.display = 'none';
}

let timeout = null;
pesquisa.addEventListener('input', () => {
  clearTimeout(timeout);
  timeout = setTimeout(carregarMulheres, 300);
});

filtroCategoria.addEventListener('change', carregarMulheres);
overlay.addEventListener('click', fecharModal);
fecharModalBtn.addEventListener('click', fecharModal);

document.addEventListener('keydown', (e) => {
  if (e.key === 'Escape') fecharModal();
});

document.addEventListener('DOMContentLoaded', carregarMulheres);