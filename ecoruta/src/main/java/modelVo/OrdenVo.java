/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelVo;

import java.util.Date;
/**
 *
 * @author Alex
 */
public class OrdenVo {
    private Integer Id_orden;
    private Integer numero_orden;
    private Integer identificacion_usuario;
    private Integer identificacion_recolector;
    private Integer estado;
    private Date fecha_orden_creacion;
    private Date fecha_orden_recogida;
    private String descripcion;
    private String dimensiones;

    public OrdenVo() {
    }

    public OrdenVo(Integer Id_orden, Integer numero_orden, Integer identificacion_usuario, Integer identificacion_recolector, Integer estado, Date fecha_orden_creacion, Date fecha_orden_recogida, String descripcion, String dimensiones) {
        this.Id_orden = Id_orden;
        this.numero_orden = numero_orden;
        this.identificacion_usuario = identificacion_usuario;
        this.identificacion_recolector = identificacion_recolector;
        this.estado = estado;
        this.fecha_orden_creacion = fecha_orden_creacion;
        this.fecha_orden_recogida = fecha_orden_recogida;
        this.descripcion = descripcion;
        this.dimensiones = dimensiones;
    }

    public Integer getId_orden() {
        return Id_orden;
    }

    public void setId_orden(Integer Id_orden) {
        this.Id_orden = Id_orden;
    }

    public Date getFecha_orden_creacion() {
        return fecha_orden_creacion;
    }

    public void setFecha_orden_creacion(Date fecha_orden_creacion) {
        this.fecha_orden_creacion = fecha_orden_creacion;
    }

    public Date getFecha_orden_recogida() {
        return fecha_orden_recogida;
    }

    public void setFecha_orden_recogida(Date fecha_orden_recogida) {
        this.fecha_orden_recogida = fecha_orden_recogida;
    }

    
    public Integer getNumero_orden() {
        return numero_orden;
    }

    public void setNumero_orden(Integer numero_orden) {
        this.numero_orden = numero_orden;
    }

    public Integer getIdentificacion_usuario() {
        return identificacion_usuario;
    }

    public void setIdentificacion_usuario(Integer identificacion_usuario) {
        this.identificacion_usuario = identificacion_usuario;
    }

    public Integer getIdentificacion_recolector() {
        return identificacion_recolector;
    }

    public void setIdentificacion_recolector(Integer identificacion_recolector) {
        this.identificacion_recolector = identificacion_recolector;
    }

    public Integer getEstado() {
        return estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getDimensiones() {
        return dimensiones;
    }

    public void setDimensiones(String dimensiones) {
        this.dimensiones = dimensiones;
    }
}
