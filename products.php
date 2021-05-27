<?php
include_once "operations.php";
include_once "database.php";

class products extends database implements operation{

    private $id,$name,$image,$price,$code,$stock,$subCatId,$details;

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
    public function setPrice($price)
    {
       $this->price = $price;
    }
    public function setCode($code)
    {
       $this->code = $code;
    }
    public function setStock($stock)
    {
       $this->stock = $stock;
    }
    public function setSubCatId($subCatId)
    {
       $this->subCatId = $subCatId;
    }
    public function setDetails($details)
    {
       $this->details = $details;
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
    public function getPrice()
    {
       return $this->price;
    }
    public function getCode()
    {
       return $this->code;
    }
    public function getStock()
    {
       return $this->stock;
    }
    public function getsubCatId()
    {
       return $this->subCatId;
    }
    public function getDetails()
    {
       return $this->details;
    }

    
    public function updateData(){

    }
    public function addData(){

    }
    public function selectData(){

    }
    public function deleteData(){

    }
    public function getAllProducts()
    {

        $query = "SELECT `products`.`id`,`products`.`name`,`products`.`price`,`products`.`image` FROM `products` ";
        if($this->subCatId){
         $query .= " WHERE `products`.`sub_cat_id` = $this->subCatId";
        }
        $query .= " LIMIT 10";
        return $this->runDQL($query);
    }
    public function searchId()
    {
      $query = "SELECT 
      `products`.*,
      `new_table`.`rating_avg`,
      `new_table`.`rating_count`
      
      FROM `products`
      
      LEFT JOIN
         (
           SELECT `rating`.`products_id`,
           COUNT(`rating`.`products_id`) as `rating_count`,
           ROUND(avg(`rating`.`value`),0) as `rating_avg`  
           FROM `rating` 
           GROUP BY  `rating`.`products_id`
          )
           AS `new_table`
      ON `products`.`id` = `new_table`.`products_id`
      WHERE `products`.id = $this->id
      ORDER BY `rating_avg` DESC , `rating_count` DESC";
      return $this->runDQL($query);
    }

}
?>