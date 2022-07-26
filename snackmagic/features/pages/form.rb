class Form
    include PageObject

     button(:login_button, :xpath => '//*[@id="root"]/div/div[2]/div/div/div/div/div[3]/header/div[2]/div[3]/div[2]/button')
     text_field(:email,xpath: '//*[@id="form-login"]/div[1]/input')
     text_field(:password,xpath: '//*[@id="password-login"]')
     text_field(:treat_name,xpath: '//*[@id="treatName"]')
     text_field(:company,xpath: '//*[@id="senderName"]')
     button(:submit,xpath: '//*[@id="form-login"]/div[3]/div/button')
     link(:start_order,xpath: '//*[@id="root"]/div/div[2]/div/div/div/div/div[3]/header/div[2]/div[3]/div[1]/div/a[2]')
     link(:new_order,xpath:'//*[@id="root"]/div/div[2]/div/div/div/div/div[2]/div/div/div/div[2]/div/a')
     div(:team,xpath: '//*[@id="send-a-treat"]/div[2]/div[2]/div[1]/div/label/div')
     div(:snacks_swags,xpath: '//*[@id="send-a-treat"]/div[3]/div[2]/div[3]/div/label/div[1]/div[1]')
     div(:build_your_own,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[2]/div/div[3]/div[1]/div')
     link(:nxt,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[3]/div/div[2]/a')
     link(:nxt2,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[3]/div/div/a')
     link(:nxt3,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[2]/div/div[2]/a')
     div(:budget,xpath: '//*[@id="budget-section"]/div[3]/div[1]/div/div/label/div')
     button(:create_order_button,xpath: '//*[@id="root"]/div/div[2]/div/div/div/div/div[2]/div/div/div/div[2]/div/button')
     link(:save,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[3]/div/div[2]/a')
     button(:save_continue,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[3]/div/div[2]/button')
     div(:open_link,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[2]/div[3]/div/div[2]/div/div/label/div')
     div(:collect_address,xpath: '//*[@id="recipient-information-modal-form"]/div/div/div[1]/div/div/label/div')
     div(:shipping,xpath: '//*[@id="shipping-modal-form"]/div/div[1]/div/div/label/div/div[1]')
     div(:customization,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[2]/div/div[9]/div')
     div(:checkout,xpath: '//*[@id="root"]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/div/div/div/div[2]')
     div(:payment,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[1]/div/div[1]/div[2]/div/div[5]/div[1]/label/div')
     div(:wallet,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[1]/div/div[1]/div[2]/div[3]/div[1]/label/div')
     link(:place_order,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[2]/div/div[2]/a')
     div(:send_email,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[2]/div[3]/div/div[2]/div/div[3]/div/div/div[3]/div/label/div')
     link(:confirm,xpath: '//*[@id="modal-root"]/div/div/div/div[1]/div/div[3]/div/div[2]/a')
     text_field(:total_recipient,xpath: '//*[@id="expectedCount"]')
     text_field(:non_us,xpath: '//*[@id="internationalCount"]')
     def visit
      url ='https://admin:admin@automation-frontend.snackmagic.com/'
      @browser.navigate.to url
      sleep 2
      login_button
      sleep 2
     end

     def login
       self.email = 'avneet+4444@vinsol.com'
       self.password = 'Vinsol1.'
       submit
       sleep 5
     end
     
     def start_an_order
      start_order
      #find_element(xpath: '//*[@id="onetrust-accept-btn-handler"]').click if find_element(xpath: '//*[@id="onetrust-accept-btn-handler"]').displayed?
      new_order
      sleep 5
     end

     def create_order
      self.treat_name = 'snacks_for_interns'
      self.company ='xyz'
      team_element.click
      snacks_swags_element.click
      create_order_button
      sleep 5
      build_your_own_element.click
      sleep 2
      nxt
      sleep 2
      budget_element.click
      save
      sleep 2
      open_link_element.click
      nxt
      sleep 2
      self.total_recipient = '10'
      self.non_us = '10'
      nxt
      sleep 2
      save
      sleep 1
      collect_address_element.click
      save_continue
      sleep 1
      save
      sleep 1
      shipping_element.click
      save_continue
      sleep 1
      save
      sleep 1
      customization_element.click
      nxt2
      sleep 1
      checkout_element.click
      sleep 1
      payment_element.click
      nxt3
      sleep 1
      wallet_element.click
      place_order
      sleep 25
      send_email_element.click
      sleep 5
      confirm
      sleep 5

     end



     def close
      sleep 10
       @browser.close
     end
   end