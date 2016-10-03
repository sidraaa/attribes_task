<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {
	public function index()
	{
            $this->load->helper('html');
            $this->load->helper('url');
            $this->load->view('my_view');
        }
        
        public function res(){
//            $data['speciality_data']= json_decode(file_get_contents('https://dochelpauth.azure-mobile.net/api/ProviderSpecialities'));
//            $data['state_data']=  json_decode(file_get_contents('https://dochelpauth.azure-mobile.net/api/Cities?state=WA'));
//            $this->load->view('welcome_message',$data);
            $i=0;
            $response=array();
            $url_array=array(
                'url1'=>'https://dochelpauth.azure-mobile.net/api/ProviderSpecialities',
                'url2'=>'https://dochelpauth.azure-mobile.net/api/Cities?state=WA'
            );        
            foreach ($url_array as $value) {
            $options = array(
                CURLOPT_RETURNTRANSFER => 1,   // return web page
                CURLOPT_SSL_VERIFYPEER => 0,
                CURLOPT_HEADER         => 0,  // don't return headers
                CURLOPT_URL            => $value,
                CURLOPT_FOLLOWLOCATION => true,   // follow redirects
                CURLOPT_MAXREDIRS      => 10,     // stop after 10 redirects
                CURLOPT_ENCODING       => "",     // handle compressed
                CURLOPT_AUTOREFERER    => true,   // set referrer on redirect
                CURLOPT_CONNECTTIMEOUT => 120,    // time-out on connect
                CURLOPT_TIMEOUT        => 120,    // time-out on response
            ); 
            $ch = curl_init();
            curl_setopt_array($ch, $options);

            $response[$i]  = curl_exec($ch);
            $i++;
//            $info= curl_getinfo($ch);
//            $errors = curl_error($ch);
            curl_close($ch);         
            }
//        echo var_dump($info);
//        echo var_dump($errors);
          echo json_encode($response);           
        }
        
        public function search(){
            $this->load->model('providers');

            $cityid=$this->input->post('cityid');
            $state=$this->input->post('state');
            $specialityid=$this->input->post('specialityid');
            $fname=$this->input->post('fname');
            $lname=$this->input->post('lname');
//            $fname='';
//            $lname='';
//            $cityid=42094;
//            $state='WA';
//            $specialityid=1;  
            $modelresponse=$this->providers->search_criteria($cityid,$state,$specialityid);
            if($modelresponse){
                $db_response='{"Providers":'.json_encode($modelresponse).'}';
                if($fname||$lname){
                    $decoded_db_response=  json_decode($db_response);
                    foreach ($decoded_db_response as $value) {
                        foreach ($value as $obj) {
                            if($fname==$obj->firstName&& $lname==$obj->lastName){
                                $tosend='{"Providers":['.json_encode($obj).']}';
                                break;
                            }
                            else $tosend=FALSE;
                        }
                    }
                    if($tosend) echo $tosend;
                    else {
                        $no_result='{"Providers":[]}';
                        echo $no_result;   
                    }
                }
                else{
                    echo $db_response;
                }
            }
            else{
                $options = array(
                    CURLOPT_RETURNTRANSFER => 1,   // return web page
                    CURLOPT_SSL_VERIFYPEER => 0,
                    CURLOPT_HEADER         => 0,  // don't return headers
                    CURLOPT_URL            => "https://dochelpauth.azure-mobile.net/api/Providers?CityId=".$cityid."&State=".$state."&Zipcode=&SpecialityId=".$specialityid."&InsuranceId=&Gender=&BusinessID=",
                    CURLOPT_FOLLOWLOCATION => true,   // follow redirects
                    CURLOPT_MAXREDIRS      => 10,     // stop after 10 redirects
                    CURLOPT_ENCODING       => "",     // handle compressed
                    CURLOPT_AUTOREFERER    => true,   // set referrer on redirect
                    CURLOPT_CONNECTTIMEOUT => 120,    // time-out on connect
                    CURLOPT_TIMEOUT        => 120,    // time-out on response
                );
                $ch = curl_init();
                curl_setopt_array($ch, $options);

                $response  = curl_exec($ch);
                curl_close($ch);
                $result=json_decode($response);
                if(!empty($result->Providers)){
                    $this->providers->insertion($result);
                }
                if($fname && $lname){
                    foreach ($result as $value) {
                        foreach ($value as $obj) {
                            if($fname==$obj->firstName&& $lname==$obj->lastName){
                                $tosend='{"Providers":['.json_encode($obj).']}';
                                break;
                            }
                            else $tosend= FALSE;
                        }
                    }
                    if($tosend) echo $tosend;
                    else {
                        $no_result='{"Providers":[]}';
                        echo $no_result;   
                    }        
                }
                echo $response;
            }
        }   
	}
        

