*** Settings ***
Library             Selenium2Library
Library             String
Resource            TestData.robot
Resource            Keywords.robot
Resource            Locators.robot
Resource            PageContents/HomePageContents.robot
Resource            PageContents/CommonContents.robot
Resource            PageContents/AboutUsPageContents.robot
Resource            PageContents/Services/FTLPageContents.robot
Resource            PageContents/Services/PLTPageContents.robot
Resource            PageContents/Services/ODCCargoPageContents.robot
Resource            PageContents/Services/WarehousingPageContents.robot
Resource            PageContents/Services/DistributionPageContents.robot
Resource            PageContents/Network/Network.robot
Resource            PageContents/Network/Delhi/NANGLI POONA.robot
Resource            PageContents/Network/Delhi/BUDHPUR.robot
Resource            PageContents/Network/Delhi/BABARPUR.robot
Resource            PageContents/Network/Delhi/BAWANA.robot
Resource            PageContents/Network/Delhi/DAYA BASTI.robot
Resource            PageContents/Network/Delhi/HAMILTON ROAD.robot
Resource            PageContents/Network/Delhi/JAMUNA BAZAAR.robot
Resource            PageContents/Network/Delhi/KAILASH NAGAR.robot
Resource            PageContents/Network/Delhi/KAMLA MARKET.robot
Resource            PageContents/Network/Delhi/KAROL BAGH.robot
Resource            PageContents/Network/Delhi/KASHMERE GATE.robot
Resource            PageContents/Network/Delhi/MANGOL PURI.robot
Resource            PageContents/Network/Delhi/MAYAPURI.robot
Resource            PageContents/Network/Delhi/MUNDKA.robot
Resource            PageContents/Network/Delhi/NARAINA.robot
Resource            PageContents/Network/Delhi/NARELA.robot
Resource            PageContents/Network/Delhi/New Lajpat Rai Market.robot
Resource            PageContents/Network/Delhi/SADAR BAZAAR.robot
Resource            PageContents/Network/Delhi/SAMAIPUR BADLI.robot
Resource            PageContents/Network/Delhi/SHAHADARA.robot
Resource            PageContents/Network/Delhi/WAZIRPUR.robot
Resource            PageContents/Network/Gujarat/Ahmedabad.robot
Resource            PageContents/Network/Gujarat/Bhavnagar.robot
Resource            PageContents/Network/Gujarat/Jamnagar.robot
Resource            PageContents/Network/Gujarat/Rajkot.robot
Resource            PageContents/Network/Gujarat/Daman.robot
Resource            PageContents/Network/Gujarat/Vapi.robot
Resource            PageContents/Network/Gujarat/CHATRAL.robot
Resource            PageContents/Network/Haryana/FARIDABAD.robot
Resource            PageContents/Network/Haryana/GURGAON.robot
Resource            PageContents/Network/Haryana/KARNAL.robot
Resource            PageContents/Network/Haryana/PANIPAT.robot
Resource            PageContents/Network/Haryana/Jagadhri.robot
Resource            PageContents/Network/Maharastra/Nagpur.robot
Resource            PageContents/Network/Mumbai/Bhiwandi.robot
Resource            PageContents/Network/Mumbai/DONGRI.robot
Resource            PageContents/Network/Mumbai/OPERA HOUSE.robot
Resource            PageContents/Network/Mumbai/SAKINAKA.robot
Resource            PageContents/Network/Mumbai/VASAI (E ).robot
Resource            PageContents/Network/Mumbai/Vashi.robot
Resource            PageContents/Network/Punjab/AMRITSAR.robot
Resource            PageContents/Network/Punjab/DINANAGAR.robot
Resource            PageContents/Network/Punjab/JALANDHAR.robot
Resource            PageContents/Network/Punjab/Malerkotla.robot
Resource            PageContents/Network/Rajasthan/BALOTRA.robot
Resource            PageContents/Network/Rajasthan/BHILWARA.robot
Resource            PageContents/Network/Rajasthan/PALI.robot
Resource            PageContents/Network/UttarPradesh/AGRA.robot
Resource            PageContents/Network/UttarPradesh/ALIGARH.robot
Resource            PageContents/Network/UttarPradesh/GHAZIABAD.robot
Resource            PageContents/Network/UttarPradesh/MEERUT.robot
Resource            PageContents/Network/UttarPradesh/NOIDA.robot
Resource            PageContents/Network/UttarPradesh/PILKHUWA.robot
Resource            PageContents/Network/Karnataka/Bangalore.robot
Resource            PageContents/Network/Karnataka/Mangalore.robot
Resource            PageContents/Network/Kerala/Alleppey.robot
Resource            PageContents/Network/Kerala/ALWAYE.robot
Resource            PageContents/Network/Kerala/ANGAMALI.robot
Resource            PageContents/Network/Kerala/CALICUT.robot
Resource            PageContents/Network/Kerala/CHANGANACHERRY.robot
Resource            PageContents/Network/Kerala/ERNAKULAM.robot
Resource            PageContents/Network/Kerala/KANNUR.robot
Resource            PageContents/Network/Kerala/KOLLAM.robot
Resource            PageContents/Network/Kerala/KOTTAKAL.robot
Resource            PageContents/Network/Kerala/KOTTAYAM.robot
Resource            PageContents/Network/Kerala/KUNNAMKULAM.robot
Resource            PageContents/Network/Kerala/MANJERI.robot
Resource            PageContents/Network/Kerala/PALAKKAD.robot
Resource            PageContents/Network/Kerala/SULTAN BATHERY.robot
Resource            PageContents/Network/Kerala/THODUPUZHA.robot
Resource            PageContents/Network/Kerala/THRISSUR.robot
Resource            PageContents/Network/Kerala/TIRUR.robot
Resource            PageContents/Network/Kerala/Trivandrum.robot
Resource            PageContents/Network/TamilNadu/CHENNAI.robot
Resource            PageContents/Network/TamilNadu/COIMBATORE.robot
Resource            PageContents/Network/TamilNadu/ERODE.robot
Resource            PageContents/Network/TamilNadu/KARUR.robot
Resource            PageContents/Network/TamilNadu/MADURAI.robot
Resource            PageContents/Network/TamilNadu/PONDICHERRY.robot
Resource            PageContents/Network/TamilNadu/SALEM.robot
Resource            PageContents/Network/TamilNadu/TIRUNELVELI.robot
Resource            PageContents/Network/TamilNadu/TIRUPUR.robot
Resource            PageContents/Network/TamilNadu/TRICHY.robot
Resource            PageContents/Network/TamilNadu/VELLORE.robot
Resource            PageContents/Network/TamilNadu/DHALAVAIPURAM.robot
Resource            PageContents/JoinUs/BeFranchisee.robot
Resource            PageContents/JoinUs/WorkAtSRD.robot
Resource            PageContents/TrackConsignment.robot