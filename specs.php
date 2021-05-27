<?php
include_once "operations.php";
include_once "database.php";

class specs extends database implements operation{

    private $id,$name,$value,$products_id;

    //seters
    public function setID($id)
    {
       $this->id = $id;
    }
    public function setName($name)
    {
       $this->name = $name;
    }
    public function setValue($value)
    {
       $this->value = $value;
    }
    public function setProductId($products_id)
    {
       $this->products_id = $products_id;
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
    public function getValue()
    {
       return $this->value;
    }
    public function getProductId()
    {
       return $this->products_id;
    }


    public function updateData(){

    }
    public function addData(){

    }
    public function selectData(){

    }
    public function deleteData(){

    }

    public function getProuctSpecs(){
        $query = "SELECT `specs`.* FROM `specs` WHERE `specs`.`products_id` = $this->products_id LIMIT 3";
        return $this->runDQL($query);
    }
}
?>