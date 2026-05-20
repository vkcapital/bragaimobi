page.js
import { motion } from 'framer-motion' import { Search, MapPin, BedDouble, Bath, Car, Building2, ArrowRight, Phone, Instagram, MessageCircle, Heart, ShieldCheck, Star, Crown } from 'lucide-react'

const properties = [ { id: 1, title: 'Casa Alto Padrão Damha', location: 'Campo Grande - MS', price: 'R$ 2.890.000', beds: 4, baths: 5, garage: 3, image: 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=1200&auto=format&fit=crop' }, { id: 2, title: 'Cobertura Exclusiva', location: 'Centro • Campo Grande', price: 'R$ 1.950.000', beds: 3, baths: 4, garage: 2, image: 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?q=80&w=1200&auto=format&fit=crop' }, { id: 3, title: 'Residência Condomínio Fechado', location: 'Campo Grande - MS', price: 'R$ 3.450.000', beds: 5, baths: 6, garage: 4, image: 'https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?q=80&w=1200&auto=format&fit=crop' } ]

export default function BragaImobiliaria() { return ( <div className="bg-black text-white min-h-screen overflow-x-hidden"> {/* HEADER */} <header className="fixed top-0 left-0 right-0 z-50 border-b border-yellow-500/10 bg-black/80 backdrop-blur-xl"> <div className="max-w-7xl mx-auto px-6 py-4 flex items-center justify-between"> <div className="flex items-center gap-4"> <img
src="/logo-braga.png"
alt="Braga Imobiliária"
className="h-14 w-auto"
/> </div>

<nav className="hidden lg:flex items-center gap-10 text-sm font-medium text-slate-300">
        <a href="#inicio" className="hover:text-yellow-400 transition-all">
          Início
        </a>
        <a href="#imoveis" className="hover:text-yellow-400 transition-all">
          Imóveis
        </a>
        <a href="#sobre" className="hover:text-yellow-400 transition-all">
          Sobre
        </a>
        <a href="#contato" className="hover:text-yellow-400 transition-all">
          Contato
        </a>
      </nav>

      <a
        href="https://wa.me/5567992511523"
        target="_blank"
        className="hidden lg:flex items-center gap-2 bg-yellow-500 hover:bg-yellow-400 transition-all text-black font-bold px-6 py-3 rounded-2xl"
      >
        <MessageCircle size={18} />
        WhatsApp
      </a>
    </div>
  </header>

  {/* HERO */}
  <section
    id="inicio"
    className="relative min-h-screen flex items-center overflow-hidden"
  >
    <div className="absolute inset-0">
      <img
        src="https://images.unsplash.com/photo-1600047509807-ba8f99d2cdde?q=80&w=1600&auto=format&fit=crop"
        className="w-full h-full object-cover opacity-40"
      />

      <div className="absolute inset-0 bg-gradient-to-r from-black via-black/80 to-black/30" />
    </div>

    <div className="relative z-10 max-w-7xl mx-auto px-6 py-32 grid lg:grid-cols-2 gap-16 items-center">
      <div>
        <div className="inline-flex items-center gap-2 px-5 py-2 rounded-full border border-yellow-500/20 bg-yellow-500/10 text-yellow-300 text-sm mb-8">
          <Crown size={16} />
          Imóveis de Alto Padrão em Campo Grande
        </div>

        <h1 className="text-5xl lg:text-7xl font-black leading-tight tracking-tight">
          O endereço do seu próximo patrimônio.
        </h1>

        <p className="mt-8 text-xl text-slate-300 leading-relaxed max-w-2xl">
          Imóveis exclusivos, atendimento premium e uma experiência sofisticada para quem busca excelência em cada detalhe.
        </p>

        <div className="mt-10 flex flex-col sm:flex-row gap-4">
          <a
            href="#imoveis"
            className="bg-yellow-500 hover:bg-yellow-400 text-black font-black px-8 py-5 rounded-2xl transition-all inline-flex items-center justify-center gap-2"
          >
            Ver Imóveis
            <ArrowRight size={18} />
          </a>

          <a
            href="https://wa.me/5567992511523"
            target="_blank"
            className="border border-white/10 hover:bg-white/10 transition-all px-8 py-5 rounded-2xl font-semibold inline-flex items-center justify-center gap-2"
          >
            <Phone size={18} />
            Atendimento Premium
          </a>
        </div>
      </div>

      {/* BUSCA */}
      <motion.div
        initial={{ opacity: 0, y: 40 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.7 }}
        className="bg-white/5 border border-white/10 backdrop-blur-2xl rounded-[32px] p-8 shadow-2xl"
      >
        <h2 className="text-3xl font-black text-white">
          Encontre o imóvel ideal.
        </h2>

        <div className="mt-8 space-y-5">
          <div className="bg-white/5 border border-white/10 rounded-2xl px-5 py-4 flex items-center gap-3">
            <Search className="text-yellow-400" size={20} />
            <input
              placeholder="Buscar imóveis"
              className="bg-transparent outline-none w-full text-white placeholder:text-slate-400"
            />
          </div>

          <div className="grid md:grid-cols-2 gap-5">
            <select className="bg-white/5 border border-white/10 rounded-2xl px-5 py-4 text-slate-300 outline-none">
              <option>Tipo do imóvel</option>
              <option>Casa</option>
              <option>Apartamento</option>
              <option>Cobertura</option>
            </select>

            <select className="bg-white/5 border border-white/10 rounded-2xl px-5 py-4 text-slate-300 outline-none">
              <option>Faixa de preço</option>
              <option>Até R$ 500 mil</option>
              <option>Até R$ 1 milhão</option>
              <option>Acima R$ 1 milhão</option>
            </select>
          </div>

          <button className="w-full bg-yellow-500 hover:bg-yellow-400 transition-all text-black py-5 rounded-2xl font-black text-lg">
            Buscar Imóveis
          </button>
        </div>
      </motion.div>
    </div>
  </section>

  {/* DIFERENCIAIS */}
  <section className="py-24 border-t border-white/5 bg-[#050505]">
    <div className="max-w-7xl mx-auto px-6">
      <div className="text-center max-w-3xl mx-auto">
        <span className="text-yellow-400 uppercase tracking-[0.3em] text-sm font-bold">
          Diferenciais
        </span>

        <h2 className="mt-4 text-4xl lg:text-5xl font-black leading-tight">
          Uma experiência imobiliária sofisticada.
        </h2>
      </div>

      <div className="mt-20 grid md:grid-cols-2 lg:grid-cols-4 gap-8">
        {[
          {
            icon: <ShieldCheck size={42} />,
            title: 'Segurança',
            desc: 'Processos transparentes e atendimento consultivo.'
          },
          {
            icon: <Star size={42} />,
            title: 'Imóveis Exclusivos',
            desc: 'Portfólio selecionado de imóveis premium.'
          },
          {
            icon: <Building2 size={42} />,
            title: 'Alto Padrão',
            desc: 'Experiência visual e atendimento diferenciados.'
          },
          {
            icon: <Heart size={42} />,
            title: 'Relacionamento',
            desc: 'Atendimento humano e personalizado.'
          }
        ].map((item) => (
          <motion.div
            whileHover={{ y: -8 }}
            key={item.title}
            className="bg-white/5 border border-white/10 rounded-[30px] p-8"
          >
            <div className="text-yellow-400">{item.icon}</div>

            <h3 className="mt-6 text-2xl font-black">
              {item.title}
            </h3>

            <p className="mt-4 text-slate-400 leading-relaxed">
              {item.desc}
            </p>
          </motion.div>
        ))}
      </div>
    </div>
  </section>

  {/* IMÓVEIS */}
  <section id="imoveis" className="py-24 bg-black">
    <div className="max-w-7xl mx-auto px-6">
      <div className="flex flex-col lg:flex-row justify-between items-start lg:items-end gap-8">
        <div>
          <span className="text-yellow-400 uppercase tracking-[0.3em] text-sm font-bold">
            Catálogo Premium
          </span>

          <h2 className="mt-4 text-4xl lg:text-5xl font-black leading-tight">
            Imóveis em destaque.
          </h2>
        </div>

        <a
          href="https://wa.me/5567992511523"
          target="_blank"
          className="text-yellow-400 font-bold hover:text-yellow-300 transition-all inline-flex items-center gap-2"
        >
          Falar com corretor
          <ArrowRight size={18} />
        </a>
      </div>

      <div className="mt-16 grid lg:grid-cols-3 gap-8">
        {properties.map((property) => (
          <motion.div
            whileHover={{ y: -10 }}
            key={property.id}
            className="bg-[#0c0c0c] border border-white/5 rounded-[32px] overflow-hidden shadow-2xl"
          >
            <div className="relative overflow-hidden h-[320px]">
              <img
                src={property.image}
                className="w-full h-full object-cover hover:scale-110 transition-all duration-700"
              />

              <div className="absolute top-5 left-5 bg-yellow-500 text-black px-4 py-2 rounded-full font-black text-sm">
                Destaque
              </div>
            </div>

            <div className="p-8">
              <div className="flex items-center gap-2 text-slate-400 text-sm">
                <MapPin size={16} />
                {property.location}
              </div>

              <h3 className="mt-4 text-3xl font-black leading-tight">
                {property.title}
              </h3>

              <div className="mt-5 text-yellow-400 text-3xl font-black">
                {property.price}
              </div>

              <div className="mt-8 grid grid-cols-3 gap-4 border-t border-white/5 pt-6 text-sm text-slate-300">
                <div className="flex items-center gap-2">
                  <BedDouble size={18} />
                  {property.beds} Quartos
                </div>

                <div className="flex items-center gap-2">
                  <Bath size={18} />
                  {property.baths} Banhos
                </div>

                <div className="flex items-center gap-2">
                  <Car size={18} />
                  {property.garage} Vagas
                </div>
              </div>

              <a
                href="https://wa.me/5567992511523"
                target="_blank"
                className="mt-8 bg-yellow-500 hover:bg-yellow-400 transition-all text-black rounded-2xl py-4 font-black flex items-center justify-center gap-2"
              >
                <MessageCircle size={18} />
                Solicitar Informações
              </a>
            </div>
          </motion.div>
        ))}
      </div>
    </div>
  </section>

  {/* SOBRE */}
  <section id="sobre" className="py-24 bg-[#050505] border-t border-white/5">
    <div className="max-w-7xl mx-auto px-6 grid lg:grid-cols-2 gap-20 items-center">
      <div>
        <span className="text-yellow-400 uppercase tracking-[0.3em] text-sm font-bold">
          Sobre nós
        </span>

        <h2 className="mt-4 text-4xl lg:text-6xl font-black leading-tight">
          Excelência imobiliária com atendimento premium.
        </h2>

        <p className="mt-8 text-lg text-slate-400 leading-relaxed">
          A Braga Imobiliária conecta clientes a imóveis exclusivos com uma experiência moderna, sofisticada e personalizada.
        </p>

        <p className="mt-6 text-lg text-slate-400 leading-relaxed">
          Nosso foco é entregar segurança, credibilidade e excelência em cada negociação.
        </p>
      </div>

      <div className="relative">
        <div className="absolute -inset-5 bg-yellow-500/20 blur-3xl rounded-full" />

        <div className="relative bg-gradient-to-br from-yellow-500/10 to-white/5 border border-yellow-500/10 rounded-[40px] p-12 backdrop-blur-xl shadow-2xl">
          <img
            src="/logo-braga.png"
            alt="Braga Imobiliária"
            className="w-full max-w-md mx-auto"
          />
        </div>
      </div>
    </div>
  </section>

  {/* CONTATO */}
  <section id="contato" className="py-24 bg-black border-t border-white/5">
    <div className="max-w-5xl mx-auto px-6 text-center">
      <span className="text-yellow-400 uppercase tracking-[0.3em] text-sm font-bold">
        Atendimento
      </span>

      <h2 className="mt-4 text-4xl lg:text-6xl font-black leading-tight">
        Vamos encontrar o imóvel ideal para você.
      </h2>

      <p className="mt-8 text-xl text-slate-400 leading-relaxed max-w-3xl mx-auto">
        Entre em contato com a Braga Imobiliária e receba um atendimento sofisticado e personalizado.
      </p>

      <div className="mt-12 flex flex-col sm:flex-row justify-center gap-5">
        <a
          href="https://wa.me/5567992511523"
          target="_blank"
          className="bg-yellow-500 hover:bg-yellow-400 transition-all text-black px-10 py-5 rounded-2xl font-black text-lg inline-flex items-center justify-center gap-2"
        >
          <MessageCircle size={20} />
          WhatsApp
        </a>

        <a
          href="https://instagram.com/bragaimobiliaria_"
          target="_blank"
          className="border border-white/10 hover:bg-white/10 transition-all px-10 py-5 rounded-2xl font-bold text-lg inline-flex items-center justify-center gap-2"
        >
          <Instagram size={20} />
          Instagram
        </a>
      </div>

      <div className="mt-16 grid md:grid-cols-3 gap-8 text-center">
        <div className="bg-white/5 border border-white/5 rounded-[30px] p-8">
          <div className="text-yellow-400 text-sm uppercase tracking-[0.2em] font-bold">
            WhatsApp
          </div>

          <div className="mt-4 text-2xl font-black">
            (67) 99251-1523
          </div>
        </div>

        <div className="bg-white/5 border border-white/5 rounded-[30px] p-8">
          <div className="text-yellow-400 text-sm uppercase tracking-[0.2em] font-bold">
            Instagram
          </div>

          <div className="mt-4 text-2xl font-black break-words">
            @bragaimobiliaria_
          </div>
        </div>

        <div className="bg-white/5 border border-white/5 rounded-[30px] p-8">
          <div className="text-yellow-400 text-sm uppercase tracking-[0.2em] font-bold">
            Localização
          </div>

          <div className="mt-4 text-2xl font-black">
            Campo Grande - MS
          </div>
        </div>
      </div>
    </div>
  </section>

  {/* FOOTER */}
  <footer className="border-t border-white/5 py-10 bg-black text-center text-slate-500 text-sm">
    © 2026 Braga Imobiliária — Todos os direitos reservados.
  </footer>

  {/* WHATSAPP FIXO */}
  <a
    href="https://wa.me/5567992511523"
    target="_blank"
    className="fixed bottom-6 right-6 bg-green-500 hover:bg-green-400 transition-all text-white rounded-full p-5 shadow-2xl z-50"
  >
    <MessageCircle size={30} />
  </a>
</div>

) }
