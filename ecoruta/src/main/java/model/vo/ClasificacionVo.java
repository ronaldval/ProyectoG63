/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.vo;

/**
 *
 * @author Alex
 */
public class ClasificacionVo {
    
    private Integer id_clasificacion;
    private String descripcion;

    public Integer getId_clasificacion() {
        return id_clasificacion;
    }

    public void setId_clasificacion(Integer id_clasificacion) {
        this.id_clasificacion = id_clasificacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }    
}
