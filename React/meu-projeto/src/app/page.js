import Image from "next/image";

export default function Home() {
  const name = "Ananda"
  const newName = name.toLocaleUpperCase()


  function sum(a,b){
    return a + b
  }  
  const url = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcanaltech.com.br%2Fapps%2Fcomo-melhorar-a-qualidade-de-uma-imagem-no-photoshop%2F&psig=AOvVaw0rHhJYWY4NraIdrQKHhA4p&ust=1713922381111000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIj_066Z14UDFQAAAAAdAAAAABAE'
  return (
    <div className="Home">
      <h1>Alterando o JSX</h1>
      <p>Olá, {newName}</p>
      <p>Soma: {sum(2,2)}</p>
      <img src={url} alt="Minha imagem"/>
    </div>
  );
}
