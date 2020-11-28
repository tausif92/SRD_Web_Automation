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
${CityEconomy_Header_Locator}    //h2[contains(text(),'Economy Of The City') or text()=' ECONOMY OF THE CITY']
${CityEconomy_Content_Locator}    //div[@class="wpb_text_column wpb_content_element "]/div[@class="wpb_wrapper"]

${Gujarat_Link_Locator}       //nav[@class='primary-menu']//span[text()='Gujarat']
${Gujarat_Header_Locator}           //h1[text()='Gujarat']
${Ahmedabad_Header_Locator}           //h1[text()='Ahmedabad']
${Bhavnagar_Header_Locator}           //h1[text()='Bhavnagar']
${Jamnagar_Header_Locator}           //h1[text()='Jamnagar']
${Rajkot_Header_Locator}           //h1[text()='Rajkot']

${Haryana_Link_Locator}       //nav[@class='primary-menu']//span[text()='Haryana']
${Haryana_Header_Locator}           //h1[text()='Haryana']

${Maharastra_Link_Locator}       //nav[@class='primary-menu']//span[text()='Maharastra']
${Maharastra_Header_Locator}           //h1[text()='Maharastra']
${Nagpur_Header_Locator}                //h1[text()='Nagpur']

${Mumbai_Link_Locator}       //nav[@class='primary-menu']//span[text()='Mumbai']
${Mumbai_Header_Locator}           //h1[text()='Mumbai']

${Punjab_Link_Locator}       //nav[@class='primary-menu']//span[text()='Punjab']
${Punjab_Header_Locator}           //h1[text()='Punjab']

${Rajasthan_Link_Locator}       //nav[@class='primary-menu']//span[text()='Rajasthan']
${Rajasthan_Header_Locator}           //h1[text()='Rajasthan']

${Uttar Pradesh_Link_Locator}       //nav[@class='primary-menu']//span[text()='Uttar Pradesh']
${Uttar Pradesh_Header_Locator}           //h1[text()='Uttar Pradesh']

${Karnataka_Link_Locator}       //nav[@class='primary-menu']//span[text()='Karnataka']
${Karnataka_Header_Locator}           //h1[text()='Karnataka']

${Kerala_Link_Locator}       //nav[@class='primary-menu']//span[text()='Kerala']
${Kerala_Header_Locator}           //h1[text()='Kerala']

${Tamilnadu_Link_Locator}       //nav[@class='primary-menu']//span[text()='Tamilnadu']
${Tamilnadu_Header_Locator}           //h1[text()='Tamilnadu']

## Be a Franchisee
${Franchisee_Link_Locator}                  //nav[@class='primary-menu']//span[text()='Be a Franchisee']
${Franchisee_Header_Locator}                //h1[text()='Be a Franchisee']
${Name_Textbox_Franchisee_Locator}          //input[@name='your-name']
${Email_Textbox_Franchisee_Locator}         //input[@name='your-email']
${Address_Textbox_Franchisee_Locator}       //input[@name='your-address']
${PhNo_Textbox_Franchisee_Locator}          //input[@name='your-phoneno']
${Area_Textbox_Franchisee_Locator}          //input[@name='your-area']
${City_Textbox_Franchisee_Locator}          //input[@name='your-city']
${Message_Textbox_Franchisee_Locator}       //textarea[@name='your-message']
${Submit_Button_Franchisee_Locator}         //span[text()='Submit']
${SentSuccess_Message_Franchisee_Locator}     //div[text()='Thank you for your message. It has been sent.' and @style='display: block;']

## Work at SRD
${WorkAtSRD_Link_Locator}                   //nav[@class='primary-menu']//span[text()='Work at SRD']
${WorkAtSRD_Header_Locator}                 //h1[text()='Work at SRD']
${FName_Textbox_WorkAtSRD_Locator}          //input[@name='your-firstname']
${LName_Textbox_WorkAtSRD_Locator}          //input[@name='your-lastname']
${Email_Textbox_WorkAtSRD_Locator}          //input[@name='your-email']
${PhNo_Textbox_WorkAtSRD_Locator}           //input[@name='your-contactno']
${Post_Textbox_WorkAtSRD_Locator}           //input[@name='your-post']
${ChooseFile_WorkAtSRD_Locator}             //input[@type='file']
${Message_Textbox_WorkAtSRD_Locator}        //textarea[@name='your-message']
${Submit_Button_WorkAtSRD_Locator}          //span[text()='Submit']
${SentSuccess_Message_WorkAtSRD_Locator}     //div[text()='Thank you for your message. It has been sent.' and @style='display: block;']

## Track consignment
${TrackConsignment_Header_Locator}          //h1[text()='Track Consignment']
${LrNo_Textbox_Locator}                     //input[@id='lrNumberSearch']
${Track_Button_Locator}                     //button[@id='trackBtn']
${Reset_Button_Locator}                     //button[@id='resetBtn']
#${Source_Map_Locator}                       //div[contains(@style,'z-index: 4')]//img[@src='img/source.gif']
${Source_Map_Locator}                       (//img[@src='img/source.gif'])[1]
${Destination_Map_Locator}                  //div[contains(@style,'z-index: 4')]//img[@src='img/Destination.gif']

## Write A Testimonial
${Testimonial_Link_Locator}                 //nav[@class='primary-menu']//span[text()='Write A Testimonial']
${WriteATestimonial_Header_Locator}                 //h1[text()='Write A Testimonial']
${Name_Textbox_Testimonial_Locator}          //input[@placeholder='Your name :']
${Email_Textbox_Testimonial_Locator}         //input[@placeholder='Email address']
${Company_Textbox_Testimonial_Locator}       //input[@placeholder='Company Name:']
${Designation_Textbox_Testimonial_Locator}       //input[@placeholder='Designation:']
${Message_Textbox_Testimonial_Locator}        //textarea[@name='your-message']
${Submit_Button_Testimonial_Locator}          //span[text()='Submit']
${SentSuccess_Message_Testimonial_Locator}     //div[text()='Thank you for your message. It has been sent.' and @style='display: block;']

## View Testimonial

## Give your feedback
${GiveFeedback_Link_Locator}                 //nav[@class='primary-menu']//span[text()='Give Your Feedback']
${GiveFeedback_Header_Locator}                 //h1[text()='Give Your Feedback']
${Name_Textbox_Feedback_Locator}          //input[@name='your-name']
${Email_Textbox_Feedback_Locator}         //input[@name='your-email']
${Message_Textbox_Feedback_Locator}        //textarea[@name='your-message']
${Submit_Button_Feedback_Locator}          //span[text()='Submit']
${SentSuccess_Message_Feedback_Locator}     //div[text()='Thank you for your message. It has been sent.' and @style='display: block;']

## Contact Us
${ContactUs_Header_Locator}                 //h1[text()='Contact us']


