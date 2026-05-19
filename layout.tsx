import './globals.css'

export const metadata = {
  title: 'Braga Imobiliária',
  description: 'Imóveis exclusivos para clientes extraordinários.',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="pt-BR">
      <body>{children}</body>
    </html>
  )
}