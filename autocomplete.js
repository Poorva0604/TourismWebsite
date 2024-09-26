document.addEventListener('DOMContentLoaded', function() {
let availablestates= [
    'Andhra Pradesh', 'Arunachal Pradesh', 'Assam', 'Bihar', 'Chhattisgarh', 'Goa', 'Gujarat', 'Haryana', 'Himachal Pradesh', 'Jharkhand', 'Karnataka', 'Kerala', 'Madhya Pradesh', 'Maharashtra', 'Manipur', 'Meghalaya', 'Mizoram', 'Nagaland', 'Odisha', 'Punjab', 'Rajasthan', 'Sikkim', 'Tamil Nadu', 'Telangana', 'Tripura', 'Uttar Pradesh', 'Uttarakhand', 'West Bengal'
];
let stateToCities = {
    'Karnataka': ['Bagalkot', 'Ballari (Bellary)', 'Belagavi', 'Bengaluru (Bangalore) Rural', 'Bengaluru (Bangalore) Urban', 'Bidar', 'Chamarajanagar', 'Chikballapur', 'Chikkamagaluru (Chikmagalur)', 'Chitradurga', 'Dakshina Kannada', 'Davangere','Dharwad', 'Gadag', 'Hassan', 'Haveri', 'Kalaburagi (Gulbarga)', 'Kodagu','Kolar', 'Koppal', 'Mandya', 'Mysuru (Mysore)', 'Raichur', 'Ramanagara','Shivamogga (Shimoga)', 'Tumakuru (Tumkur)', 'Udupi', 'Uttara Kannada (Karwar)','Vijayapura (Bijapur)', 'Yadgir'],
    'Maharashtra': ['Ahmednagar', 'Akola', 'Amravati', 'Aurangabad', 'Beed', 'Bhandara','Buldhana', 'Chandrapur', 'Dhule', 'Gadchiroli', 'Gondia', 'Hingoli','Jalgaon', 'Jalna', 'Kolhapur', 'Latur', 'Mumbai City', 'Mumbai Suburban','Nagpur', 'Nanded', 'Nandurbar', 'Nashik', 'Osmanabad', 'Palghar','Parbhani', 'Pune', 'Raigad', 'Ratnagiri', 'Sangli', 'Satara','Sindhudurg', 'Solapur', 'Thane', 'Wardha', 'Washim', 'Yavatmal'],
    'AndraPradesh': ['Anantapur', 'Chittoor', 'East Godavari', 'Guntur', 'Krishna','Kurnool', 'Prakasam', 'Srikakulam', 'Sri Potti Sriramulu Nellore','Visakhapatnam', 'Vizianagaram', 'West Godavari', 'YSR District, Kadapa (Cuddapah)'],
    'Jammu-Kashmir': ['Anantnag', 'Bandipore', 'Baramulla', 'Budgam', 'Doda', 'Ganderbal','Jammu', 'Kathua', 'Kishtwar', 'Kulgam', 'Kupwara', 'Poonch','Pulwama', 'Rajouri', 'Ramban', 'Reasi', 'Samba', 'Shopian','Srinagar', 'Udhampur'],
    'ArunachalPradesh': ['Anjaw', 'Changlang', 'Dibang Valley', 'East Kameng', 'East Siang','Kamle', 'Kra Daadi', 'Kurung Kumey', 'Lepa Rada', 'Lohit', 'Longding','Lower Dibang Valley', 'Lower Siang', 'Lower Subansiri', 'Namsai','Pakke Kessang', 'Papum Pare', 'Shi Yomi', 'Siang', 'Tawang','Tirap', 'Upper Siang', 'Upper Subansiri', 'West Kameng', 'West Siang'],
    'Assam':['Baksa', 'Barpeta', 'Biswanath', 'Bongaigaon', 'Cachar', 'Charaideo', 'Chirang', 'Darrang', 'Dhemaji', 'Dhubri', 'Dibrugarh', 'Dima Hasao (North Cachar Hills)', 'Goalpara', 'Golaghat', 'Hailakandi', 'Hojai', 'Jorhat', 'Kamrup', 'Kamrup Metropolitan', 'Karbi Anglong', 'Karimganj', 'Kokrajhar', 'Lakhimpur', 'Majuli', 'Morigaon', 'Nagaon', 'Nalbari', 'Sivasagar', 'Sonitpur','South Salamara-Mankachar', 'Tinsukia', 'Udalguri', 'West Karbi Anglong'],
    'Bihar':['Araria', 'Arwal', 'Aurangabad', 'Banka', 'Begusarai', 'Bhagalpur', 'Bhojpur', 'Buxar', 'Darbhanga', 'East Champaran (Motihari)', 'Gaya', 'Gopalganj', 'Jamui', 'Jehanabad', 'Kaimur (Bhabua)', 'Katihar','Khagaria', 'Kishanganj', 'Lakhisarai', 'Madhepura', 'Madhubani','Munger (Monghyr)', 'Muzaffarpur', 'Nalanda', 'Nawada', 'Patna','Purnia (Purnea)', 'Rohtas', 'Saharsa', 'Samastipur', 'Saran','Sheikhpura', 'Sheohar', 'Sitamarhi', 'Siwan', 'Supaul', 'Vaishali','West Champaran'],
    'Goa':['North Goa', 'South Goa'],
    'Gujarat':['Ahmedabad', 'Amreli', 'Anand', 'Aravalli', 'Banaskantha (Palanpur)','Bharuch', 'Bhavnagar', 'Botad', 'Chhota Udepur', 'Dahod','Dangs (Ahwa)', 'Devbhoomi Dwarka', 'Gandhinagar', 'Gir Somnath','Jamnagar', 'Junagadh', 'Kachchh', 'Kheda (Nadiad)', 'Mahisagar','Mehsana', 'Morbi', 'Narmada (Rajpipla)', 'Navsari', 'Panchmahal (Godhra)','Patan', 'Porbandar', 'Rajkot', 'Sabarkantha (Himmatnagar)', 'Surat','Surendranagar', 'Tapi (Vyara)', 'Vadodara', 'Valsad'],
    'Rajastan':['Ajmer', 'Alwar', 'Banswara', 'Baran', 'Barmer', 'Bharatpur','Bhilwara', 'Bikaner', 'Bundi', 'Chittorgarh', 'Churu', 'Dausa','Dholpur', 'Dungarpur', 'Hanumangarh', 'Jaipur', 'Jaisalmer','Jalore', 'Jhalawar', 'Jhunjhunu', 'Jodhpur', 'Karauli', 'Kota','Nagaur', 'Pali', 'Pratapgarh', 'Rajsamand', 'Sawai Madhopur','Sikar', 'Sirohi', 'Sri Ganganagar', 'Tonk', 'Udaipur'],
    'Himachal Pradesh':['Bilaspur', 'Chamba', 'Hamirpur', 'Kangra', 'Kinnaur', 'Kullu','Lahaul & Spiti', 'Mandi', 'Shimla', 'Sirmaur (Sirmour)','Solan', 'Una'],
    'Tamil Nadu':['Ariyalur', 'Chengalpattu', 'Chennai', 'Coimbatore', 'Cuddalore','Dharmapuri', 'Dindigul', 'Erode', 'Kallakurichi', 'Kanchipuram','Kanyakumari', 'Karur', 'Krishnagiri', 'Madurai', 'Nagapattinam','Namakkal', 'Nilgiris', 'Perambalur', 'Pudukkottai', 'Ramanathapuram','Ranipet', 'Salem', 'Sivaganga', 'Tenkasi', 'Thanjavur', 'Theni','Thoothukudi (Tuticorin)', 'Tiruchirappalli', 'Tirunelveli','Tirupathur', 'Tiruppur', 'Tiruvallur', 'Tiruvannamalai', 'Tiruvarur','Vellore', 'Viluppuram', 'Virudhunagar'],
    'Meghalaya':['East Garo Hills', 'East Jaintia Hills', 'East Khasi Hills','North Garo Hills', 'Ri Bhoi', 'South Garo Hills','South West Garo Hills', 'South West Khasi Hills','West Garo Hills', 'West Jaintia Hills', 'West Khasi Hills'],
    'Mizoram':['Aizawl', 'Champhai', 'Kolasib', 'Lawngtlai', 'Lunglei','Mamit', 'Saiha', 'Serchhip'],
    'Nagaland':['Dimapur', 'Kiphire', 'Kohima', 'Longleng', 'Mokokchung','Mon', 'Peren', 'Phek', 'Tuensang', 'Wokha', 'Zunheboto'],
    'Manipur':['Bishnupur', 'Chandel', 'Churachandpur', 'Imphal East','Imphal West', 'Jiribam', 'Kakching', 'Kamjong', 'Kangpokpi','Noney', 'Pherzawl', 'Senapati', 'Tamenglong', 'Tengnoupal','Thoubal', 'Ukhrul'],
    'Kerala':['Alappuzha', 'Ernakulam', 'Idukki', 'Kannur', 'Kasaragod','Kollam', 'Kottayam', 'Kozhikode', 'Malappuram', 'Palakkad','Pathanamthitta', 'Thiruvananthapuram', 'Thrissur', 'Wayanad'],
    'Uttarakhand':['Almora', 'Bageshwar', 'Chamoli', 'Champawat', 'Dehradun', 'Haridwar', 'Nainital', 'Pauri Garhwal', 'Pithoragarh','Rudraprayag', 'Tehri Garhwal', 'Udham Singh Nagar', 'Uttarkashi'],
    'Uttar Pradesh':['Agra', 'Aligarh', 'Allahabad', 'Ambedkar Nagar', 'Amethi (Chatrapati Sahuji Mahraj Nagar)','Amroha (J.P. Nagar)', 'Auraiya', 'Azamgarh', 'Baghpat', 'Bahraich','Ballia', 'Balrampur', 'Banda', 'Barabanki', 'Bareilly', 'Basti','Bhadohi', 'Bijnor', 'Budaun', 'Bulandshahr', 'Chandauli', 'Chitrakoot','Deoria', 'Etah', 'Etawah', 'Faizabad', 'Farrukhabad', 'Fatehpur','Firozabad', 'Gautam Buddha Nagar', 'Ghaziabad', 'Ghazipur', 'Gonda', 
        'Gorakhpur', 'Hamirpur', 'Hapur (Panchsheel Nagar)', 'Hardoi', 'Hathras','Jalaun', 'Jaunpur', 'Jhansi', 'Kannauj', 'Kanpur Dehat', 'Kanpur Nagar','Kanshiram Nagar (Kasganj)', 'Kaushambi', 'Kushinagar (Padrauna)','Lakhimpur - Kheri', 'Lalitpur', 'Lucknow', 'Maharajganj', 'Mahoba','Mainpuri', 'Mathura', 'Mau', 'Meerut', 'Mirzapur', 'Moradabad','Muzaffarnagar', 'Pilibhit', 'Pratapgarh', 'RaeBareli', 'Rampur', 
        'Saharanpur', 'Sambhal (Bhim Nagar)', 'Sant Kabir Nagar', 'Shahjahanpur','Shamali (Prabuddh Nagar)', 'Shravasti', 'Siddharth Nagar', 'Sitapur','Sonbhadra', 'Sultanpur', 'Unnao', 'Varanasi']
};
const resultBox=document.querySelector('.result-box');
const inputBox=document.getElementById('input-box');
const cityDropdown=document.querySelector('.city-dropdown');
const citySelect=document.getElementById('city-select');
const citySel=document.getElementById('citysel');
const proceedButton=document.getElementById('proceed-button');
const searchButton=document.getElementById('search-button');
inputBox.onkeyup =function(){
    let result=[];
    let input=inputBox.value;
    if(input.length){
        result=availablestates.filter((keywords)=>{
            return keywords.toLowerCase().includes(input.toLowerCase());
        });
        console.log(result);
    }
    display(result);

    if(!result.length){
        resultBox.innerHTML='';
    }
};
function display(result){
    const content=result.map((list)=>{
        return "<li onclick=selectInput(this)>"+list+"</li>";
    });
    resultBox.innerHTML="<ul>"+content.join('')+"</ul>";
}
window.selectInput=function(list){
    const selectedstate = list.innerHTML;
    inputBox.value = list.innerHTML;
    resultBox.innerHTML = '';
    //populatedcities(selectedstate);
}
console.log(citySelect.value);
function populatedcities(state){
    if(stateToCities[state]){
        citySelect.innerHTML='<option value="">Select a city</option>';
        stateToCities[state].forEach(city => {
            citySelect.innerHTML += `<option value=${city}>`+city+`</option>`;
            console.log(citySelect);
        });
        cityDropdown.style.display = 'block';
        // proceedButton.style.display='block';
    }
    else {
        cityDropdown.style.display = 'none';
        // proceedButton.style.display = 'none'; 
    }
}
citySelect.onchange=function(){
    console.log(citySelect.value);
    console.log(citySel.value);
    if(citySelect.value){
        proceedButton.style.display='block';
        proceedButton.disabled = false;
    }
    else{
        proceedButton.style.display = 'none';
        proceedButton.disabled = true;
    }
}

searchButton.onclick = function() {
    let input = inputBox.value;
    if (availablestates.includes(input)) {
        populatedcities(input);
    }
};
// console.log(citySelect.value+"hswjh");
// proceedButton.onclick=function(){
//     console.log(citySelect.value+"hswjh");
//     const city=citySelect.value;
//     console.log(citySelect.value);
//     console.log("autoconplete_outside");
//     if(city){
//         console.log("autoconplete");
//         window.location.href = '/public/index2.html';
//     }
// }
proceedButton.onclick = function() {
    const city = citySelect.value;
    if (city) {
        // Navigate to the second page with the selected city as a query parameter
        window.location.href = `/public/index2.html?city=${encodeURIComponent(city)}`;
    }
}

});