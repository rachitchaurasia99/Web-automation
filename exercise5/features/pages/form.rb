class Form
    include PageObject
    include DataMagic
     text_field(:name, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input')
     text_field(:age, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div[1]/div/div[1]/input')
     text_field(:city, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input')
     text_field(:college, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[5]/div/div/div[2]/div/div[1]/div/div[1]/input')
     text_field(:branch, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[6]/div/div/div[2]/div/div[1]/div/div[1]/input')
     div(:submit, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[3]/div[1]/div[1]/div')
     div(:male, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div[1]/div/span/div/div[1]')
     div(:female, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div[1]/div/span/div/div[2]')
     def visit
       @browser.navigate.to 'https://docs.google.com/forms/d/e/1FAIpQLSfdg-NUR1v3kJ52LL0FdcNFE85W9f8siF-MecDBQZqyGRTAkA/viewform'
     end
    
     def populate(user)
       user_data = data_for "example/#{user}"
       populate_page_with user_data
        if user_data['gender'] == 'male'
          self.male_element.click
        else
          self.female_element.click
        end
     
      
      end
    def submit
      submit_element.click
    end
     def close
       @browser.close
     end
   end
