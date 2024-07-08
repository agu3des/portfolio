const cepInput = document.getElementById('cep');
const streetInput = document.getElementById('street');
const numberInput = document.getElementById('number');
const neighborhoodInput = document.getElementById('neighborhood');
const stateInput = document.getElementById('state');
const cityInput = document.getElementById('city');

cepInput.addEventListener('blur', async () => {
    const cep = cepInput.value.replace('-', '');
    const url = `https://viacep.com.br/ws/${cep}/json/`;

    try {
        const response = await fetch(url);
        const data = await response.json();
        if (data.erro) {
            document.getElementById('cepError').classList.remove('hidden');
        } else {
            document.getElementById('cepError').classList.add('hidden');
            streetInput.value = data.logradouro;
            neighborhoodInput.value = data.bairro;
            cityInput.value = data.localidade;
            stateInput.value = data.uf;
            numberInput.focus();
        }
    } catch (error) {
        document.getElementById('cepError').classList.remove('hidden')
        console.error(error);
    }
});