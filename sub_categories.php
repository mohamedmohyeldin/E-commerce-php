<?php
include_once "operations.php";
include_once "database.php";

class sub_categories extends database implements operation{

    private $id,$name,$image,$status,$catagoriesId;

    //seters
    public function setID($id)
    {
       $this->id = $id;
    }
    public function setName($name)
    {
       $this->name = $name;
    }
    public function setImage($image)
    {
       $this->image = $image;
    }
    public function setStatus($status)
    {
       $this->status = $status;
    }
    public function setCateID($catagoriesId)
    {
       $this->catagoriesId = $catagoriesId;
    }


    //getters
    public function getID()
    {
       return $this->id;
    }
    public function getName()
    {
       return $this->name;
    }
    public function getImage()
    {
       return $this->image;
    }
    public function getStatus()
    {
       return $this->status;
    }
    public function getCatID()
    {
       return $this->catagoriesId;
    }


    public function updateData(){

    }
    public function addData(){

    }
    public function selectData(){

    }
    public function deleteData(){

    }

    public function getSubCat()
    {
       $query = "SELECT `sub_cat`.* FROM `sub_cat` WHERE `sub_cat`.`catagories_id` = $this->catagoriesId";
         return $this->runDQL($query);
   }
}
?>