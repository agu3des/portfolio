export default function Flag (flag) {
    return `
    <div class="flag col-2 my-2 text-center">
        <img src="https://cdn.jsdelivr.net/gh/hampusborgos/country-flags@main/svg/${flag.id}.svg" alt=${flag.image}>
        <p>${flag.name}</p>
    </div>
    `;
}
