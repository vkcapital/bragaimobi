export default function Hero() {
  return (
    <section style={{
      height:'100vh',
      display:'flex',
      alignItems:'center',
      justifyContent:'center',
      textAlign:'center',
      background:'#111'
    }}>
      <div>
        <p style={{
          color:'#d4af37',
          letterSpacing:'5px'
        }}>
          BRAGA IMOBILIÁRIA
        </p>

        <h1 style={{
          fontSize:'70px',
          marginTop:'20px'
        }}>
          Imóveis Exclusivos
        </h1>

        <p style={{
          color:'#ccc',
          maxWidth:'700px'
        }}>
          Luxo, sofisticação e oportunidades únicas em Campo Grande/MS.
        </p>

        <a
          href="https://wa.me/5567992511523"
          style={{
            display:'inline-block',
            marginTop:'30px',
            background:'#d4af37',
            color:'#000',
            padding:'18px 35px',
            borderRadius:'999px',
            textDecoration:'none',
            fontWeight:'bold'
          }}
        >
          Falar no WhatsApp
        </a>
      </div>
    </section>
  )
}