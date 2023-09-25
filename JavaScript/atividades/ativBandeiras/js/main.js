import flags from './model/flags.js';
import Flag from './components/Flag.js';

const bandeiras = flags
    .map((flag) => Flag (flag))
    .join('')

const flagsGrid = document.querySelector('.flags')
flagsGrid.innerHTML = bandeiras