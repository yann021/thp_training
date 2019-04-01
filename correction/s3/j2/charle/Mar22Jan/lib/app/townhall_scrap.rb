class TownhallScrap
attr_accessor :town_and_mail

  def perform
    create_hash_townhall
    #create an array and put inside the result from create_hash_townhall
    @town_and_mail = []
    @town_and_mail = @global_list
    # return @town_and_mail
  end

  def open_page
    #open the webpage to scrap
    page_val_oise = "http://annuaire-des-mairies.com/val-d-oise.html"
    page = Nokogiri::HTML(open(page_val_oise))
  end
  
  def get_url_all_townhall
    list_townhall = []
    #scrappe le nom des mairies
    page = open_page
    page.xpath('//*[@class="lientxt"]').each do |el|
      list_townhall << el.values[1]
    end
    list_townhall.map! {|lien| "http://annuaire-des-mairies.com" + lien[1..-1]}
  return list_townhall
  end
  
  
  def get_townhall_email(townhall_url)
    #scrap the townhall urls
    mail_townhall = []
    townhall_url.each do |lien|
      page = Nokogiri::HTML(open(lien))
      page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |el|
        mail_townhall << el.text
      end
    end
  return mail_townhall
  end
  
  
  def name_townhall
    #scrappe the townhall names
    page = open_page
    city_name = []
    page.xpath('//*[@class="lientxt"]').each do |el|
      city_name << el.text
    end
  return city_name
  end
  
  
  def create_hash_townhall
    list_url_townhall = get_url_all_townhall
    city_name = name_townhall
    mail_townhall = get_townhall_email(list_url_townhall)
    #create a hash from the 2 arrays
    @global_list = Hash.new
    @global_list = Hash[city_name.zip(mail_townhall)]
    return @global_list
  end


end

