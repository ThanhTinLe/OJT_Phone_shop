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
public class ProductErrorDTO implements Serializable{

    String IDError;
    String NameError;
    String UnitPriceError;
    String UnitInStockError;
    String DescriptionError;
    String ManufacturerError;
    String CategoryError;
    String ConditionError;
    String ImageError;

    public ProductErrorDTO() {
    }

    public ProductErrorDTO(String IDError, String NameError, String UnitPriceError, String UnitInStockError, String DescriptionError, String ManufacturerError, String CategoryError, String ConditionError, String ImageError) {
        this.IDError = IDError;
        this.NameError = NameError;
        this.UnitPriceError = UnitPriceError;
        this.UnitInStockError = UnitInStockError;
        this.DescriptionError = DescriptionError;
        this.ManufacturerError = ManufacturerError;
        this.CategoryError = CategoryError;
        this.ConditionError = ConditionError;
        this.ImageError = ImageError;
    }

    public String getIDError() {
        return IDError;
    }

    public void setIDError(String IDError) {
        this.IDError = IDError;
    }

    public String getNameError() {
        return NameError;
    }

    public void setNameError(String NameError) {
        this.NameError = NameError;
    }

    public String getUnitPriceError() {
        return UnitPriceError;
    }

    public void setUnitPriceError(String UnitPriceError) {
        this.UnitPriceError = UnitPriceError;
    }

    public String getUnitInStockError() {
        return UnitInStockError;
    }

    public void setUnitInStockError(String UnitInStockError) {
        this.UnitInStockError = UnitInStockError;
    }

    public String getDescriptionError() {
        return DescriptionError;
    }

    public void setDescriptionError(String DescriptionError) {
        this.DescriptionError = DescriptionError;
    }

    public String getManufacturerError() {
        return ManufacturerError;
    }

    public void setManufacturerError(String ManufacturerError) {
        this.ManufacturerError = ManufacturerError;
    }

    public String getCategoryError() {
        return CategoryError;
    }

    public void setCategoryError(String CategoryError) {
        this.CategoryError = CategoryError;
    }

    public String getConditionError() {
        return ConditionError;
    }

    public void setConditionError(String ConditionError) {
        this.ConditionError = ConditionError;
    }

    public String getImageError() {
        return ImageError;
    }

    public void setImageError(String ImageError) {
        this.ImageError = ImageError;
    }

    
}
