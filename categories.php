<?php
include_once "operations.php";
include_once "database.php";

class categories extends database implements operation{

    private $id,$name,$image,$status;

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


    public function updateData(){

    }
    public function addData(){

    }
    public function selectData(){

    }
    public function deleteData(){

    }

    public function getAllCategories(){
        $query = "SELECT `categories`.* FROM `categories` LIMIT 10";
        return $this->runDQL($query);
    }
}
?>