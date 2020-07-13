*** Variables ***
#Common
${Logo_Locator}         //div[@class='logo-header']//img[@alt='SRD-srdlogistics']
${Home_Link_Locator}    //ul[@id='main-menu']//span[text()='Home']
${AboutUs_Link_Locator}    //ul[@id='main-menu']//span[text()='About Us']
${Services_Link_Locator}    //ul[@id='main-menu']//span[text()='Services']
${Network_Link_Locator}    //ul[@id='main-menu']//span[text()='Network']
${JoinUs_Link_Locator}    //ul[@id='main-menu']//span[text()='Join Us']
${TrackConsignment_Link_Locator}    //ul[@id='main-menu']//span[text()='Track consignment']
${Feedback_Link_Locator}    //ul[@id='main-menu']//span[text()='Feedback']
${ContactUs_Link_Locator}    //ul[@id='main-menu']//span[text()='Contact us']


#Home page

#About Us Page
${AboutUs_Header_Locator}    //h1[text()='About Us']
${FundamentalValues_Diagram_Locator}    //figure//img

#Services
${FullTruckLoad_Link_Locator}   //nav[@class='primary-menu']//span[text()='Full Truck Load']
${FTLServiceInclusion_Locator}   //h3[text()='Our Full Truck Load Services Include']/following-sibling::p
${PartLoad_Link_Locator}   //nav[@class='primary-menu']//span[text()='Part Load Transportation']
${PLTServiceInclusion_Locator}   //i[@class="fa fa-caret-right"][1]/parent::p
${ODCCargo_Link_Locator}   //nav[@class='primary-menu']//span[text()='ODC Cargo']
${PLT_Header_Locator}       //h1[text()='Part Load Transportation']
${ODCCargo_Header_Locator}       //h1[text()='ODC Cargo']
${Warehousing_Link_Locator}   //nav[@class='primary-menu']//span[text()='Warehousing']
${Warehousing_Header_Locator}       //h1[text()='Warehousing']
${VAS_Warehousing_Locator}    //h3[text()='Value added Services']/following-sibling::p
${Distribution_Link_Locator}   //nav[@class='primary-menu']//span[text()='Distribution']
${Distribution_Header_Locator}       //h1[text()='Distribution']
${Benefits_Distribution_Locator}    //h3[text()='Benefits & Features']/following-sibling::p

#Network
${Delhi_Link_Locator}       //nav[@class='primary-menu']//span[text()='Delhi']
${Delhi_Header_Locator}       //h1[text()='Delhi']

#Individual Locations in cities/states
${CityEconomy_Header_Locator}    //h2[text()='Economy Of The City' or text()=' ECONOMY OF THE CITY']
${CityEconomy_Content_Locator}    //div[@class="wpb_text_column wpb_content_element "]/div[@class="wpb_wrapper"]

${Gujarat_Link_Locator}       //nav[@class='primary-menu']//span[text()='Gujarat']
${Gujarat_Header_Locator}           //h1[text()='Gujarat']
${Ahmedabad_Header_Locator}           //h1[text()='Ahmedabad']
${Bhavnagar_Header_Locator}           //h1[text()='Bhavnagar']
${Jamnagar_Header_Locator}           //h1[text()='Jamnagar']
${Rajkot_Header_Locator}           //h1[text()='Rajkot']
${Haryana_Link_Locator}       //nav[@class='primary-menu']//span[text()='Haryana']
${Haryana_Header_Locator}           //h1[text()='Haryana']