import Navbar from '@/components/Navbar'
import Hero from '@/components/Hero'

export default function Home() {
  return (
    <main>
      <Navbar />
      <Hero />

      <section style={{
        maxWidth:'1200px',
        margin:'0 auto',
        padding:'100px 20px'
      }}>

        <p style={{
          color:'#d4af37',
          letterSpacing:'5px'
        }}>
          EXCLUSIVIDADE
        </p>

        <h2 style={{
          fontSize:'50px'
        }}>
          Imóveis em Destaque
        </h2>

        <div style={{
          display:'grid',
          gridTemplateColumns:'repeat(auto-fit,minmax(300px,1fr))',
          gap:'30px',
          marginTop:'50px'
        }}>

          <div className="glass" style={{
            borderRadius:'20px',
            overflow:'hidden'
          }}>

            <img
              src="/properties/1.jpg"
              style={{
                width:'100%',
                height:'300px',
                objectFit:'cover'
              }}
            />

            <div style={{padding:'25px'}}>
              <h3>Casa Alto Padrão</h3>

              <p className="gold">
                R$ 2.500.000
              </p>
            </div>
          </div>

        </div>
      </section>
    </main>
  )
}