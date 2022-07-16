class SearchPage < SitePrism::Page   
    set_url "https://store.steampowered.com/"
    element :search_box, "input[id='store_nav_search_term']"
    element :full_screen, "div[class='fullscreen_button']"
   def choose_link(text)
    find_link(text, match: :first).click
    full_screen.click
    sleep 30
    full_screen.click
    sleep 10
   end
   
    def enter_search_keyword(search_key)
      search_box.set search_key
    end
   
    def click_search_button
      search_box.native.send_keys(:return)
    end
  end