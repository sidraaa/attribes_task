<?php
class Providers extends CI_Model{
    public function search_criteria($cityid,$state,$speciality_type){
        $array=array('city_id'=>$cityid,'state'=>$state,'speciality_type'=>$speciality_type );
        $get_from_searchtable= $this->db->where($array)->get('search_table');
        if($get_from_searchtable->num_rows()){
            $doctors_info=$this->db->where($array)->get('providers_table');
            return $doctors_info->result();
        }
        else{
            return FALSE;
        }
    }
    
    public function insertion($result){
            $array=array('city_id'=>$result->Providers[0]->city_id,'state'=>$result->Providers[0]->state,'speciality_type'=>$result->Providers[0]->speciality_type);
            foreach ($result->Providers as $key => $value) {
                $this->db->insert('providers_table',(array)$value);
            }
            if($this->db->insert('search_table',$array))
                return TRUE;
            
        }
}
