const API_URL = '/api/mulheres';

const jardim = document.getElementById('jardim');
const modal = document.getElementById('modal');
const overlay = document.getElementById('overlay');
const pesquisa = document.getElementById('pesquisa');
const filtroCategoria = document.getElementById('filtro-categoria');
const fecharModalBtn = document.getElementById('fecharModalBtn');

async function carregarMulheres() {
  const termo = pesquisa.value.trim();
  const categoria = filtroCategoria.value;

  const params = new URLSearchParams();
  if (termo) params.append('pesquisa', termo);
  if (categoria !== 'todas') params.append('categoria', categoria);

  try {
    const response = await fetch(`${API_URL}?${params.toString()}`);
    if (!response.ok) throw new Error('Falha no carregamento dos dados');
    const mulheres = await response.json();
    renderizarFlores(mulheres);
  } catch (error) {
    console.error('Erro na requisição API:', error);
    jardim.innerHTML = '<p style="grid-column: 1/-1; text-align: center; color: #630d0d;">Não foi possível carregar as informações do servidor.</p>';
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
