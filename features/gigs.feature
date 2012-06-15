# language: pt

Funcionalidade: Gigs
  @javascript
  Cenário: Anunciando minha gig
  Dado que estou na página crear una nova gig
  E preencho "Name" com "D-Edge"
  E preencho "Place" com "São Paulo, Brasil."
  E pressiono "Create Gig"
  Então eu deveria ver "Gig saved successfully"
  E eu deveria ver "D-Edge"

  Cenário: Feeds
  Dado que os seguintes gigs existem:
    | name    | place      |
    | D-Edge  | Sao Paulo  |
    | Bizarro | Miraflores |
    Dado que estou na página inicial
    Quando eu clico "RSS"
    Então o rss deveria ser:
    """
    <rss version="2.0">
      <channel>
        <title>Paul Sutcliffe's Gigs</title>
        <link>http://localhost:3000
        <description>Dj Paul Sutcliffe's Gigs</description>
        <language>pt-br</language>
        <item>
          <title>D-Edge</title>
          <description>Sao Paulo</description>
        </item>
        <item>
          <title>Bizarro</title>
          <description>Miraflores</description>
        </item>
      </channel>
    </rss>
    """