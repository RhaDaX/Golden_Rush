module SearchPlayerUrl
  require 'mechanize'
  def find(player)
    mechanize = Mechanize.new
    mech_player = Mechanize.new
    page = mechanize.get("http://nfl.com/players/search?category=name")
    form = page.form('nameQuickSearchForm')
    form['filter'] = player  
    player_page = form.submit
    link = player_page.parser.xpath('//td[3]/a/@href').to_s
    url = "www.nfl.com" + link
    player_url = mech_player.get("http://nfl.com" + link)
    player_url.uri
  end
end