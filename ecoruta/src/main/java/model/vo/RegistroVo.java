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
public class RegistroVo {
    private Integer id;
    private String nombre;
    private String apellido;
    private Integer tipo_documento;
    private Integer numero_documento;
    private String email;
    private Integer tipo_usuario;
    private String contrasena;

    public RegistroVo() {
    }

    public RegistroVo(Integer id, String nombre, String apellido, Integer tipo_documento, Integer numero_documento, String email, Integer tipo_usuario, String contrasena) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.tipo_documento = tipo_documento;
        this.numero_documento = numero_documento;
        this.email = email;
        this.tipo_usuario = tipo_usuario;
        this.contrasena = contrasena;
    }

    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Integer getTipo_documento() {
        return tipo_documento;
    }

    public void setTipo_documento(Integer tipo_documento) {
        this.tipo_documento = tipo_documento;
    }

    public Integer getNumero_documento() {
        return numero_documento;
    }

    public void setNumero_documento(Integer numero_documento) {
        this.numero_documento = numero_documento;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(Integer tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    } 
}
