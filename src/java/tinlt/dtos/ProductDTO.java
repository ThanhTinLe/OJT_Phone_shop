/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tinlt.dtos;

import java.io.Serializable;

/**
 *
 * @author Ray Khum
 */
public class ProductDTO implements Serializable {

    int id;
    String name;
    float unitPrice;
    float unitInStock;
    String description;
    String manufacturer;
    String category;
    String condition;
    String image;

    public ProductDTO() {
    }

    public ProductDTO(int id, String name, float unitPrice, float unitInStock, String description, String manufacturer, String category, String condition, String image) {
        this.id = id;
        this.name = name;
        this.unitPrice = unitPrice;
        this.unitInStock = unitInStock;
        this.description = description;
        this.manufacturer = manufacturer;
        this.category = category;
        this.condition = condition;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(float unitPrice) {
        this.unitPrice = unitPrice;
    }

    public float getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(float unitInStock) {
        this.unitInStock = unitInStock;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "ProductDTO{" + "id=" + id + ", name=" + name + ", unitPrice=" + unitPrice + ", unitInStock=" + unitInStock + ", description=" + description + ", manufacturer=" + manufacturer + ", category=" + category + ", condition=" + condition + ", image=" + image + '}';
    }

    
}