<%-- 
    Document   : editar
    Created on : 8 nov. 2022, 19:39:24
    Author     : ASUS-FX
--%>

<%@taglib  prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segundo parcial Practico 01</title>
    </head>
    <body>
        <h1>
            <c:if test="${requestScope.op =='nuevo'}" var="res" scope="request">
                REGISTRO DE
            </c:if>
                <c:if test="${requestScope.op =='modificar'}" var="res" scope="request">
                MODIFICAR
            </c:if>
                PRODUCTOS
                
        </h1>
        <jsp:useBean id="miTarea" scope="request" class="com.emergentes.modelo.Tarea"/>
        <form action="Controller" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td>
                <input type="text" name="id" 
                       value="<jsp:getProperty name="miTarea" property="id"/>"/>
                    </td>
                    
                </tr>
                <tr>
                     <td>descripcion</td>
                    <td>
                <input type="text" name="descripcion" 
                       value="<jsp:getProperty name="miTarea" property="descripcion"/>"/>
                    </td>
                </tr>
                 <tr>
                    <td>Cantidad</td>
                    <td>
                <input type="text" name="cantidad" 
                       value="<jsp:getProperty name="miTarea" property="cantidad"/>"/>
                    </td>
                    
                </tr>
                 <tr>
                    <td>Precio</td>
                    <td>
                <input type="text" name="precio" 
                       value="<jsp:getProperty name="miTarea" property="precio"/>"/>
                    </td>
                    
                </tr>
                <tr>
                     <td>Categoria</td>
                     <td>
                         <select name="categoria">
                             <option value="Bedidas"
                                 <c:if test="${miTarea.categoria =='Bebidas'}" var="res" scope="request">
                selected
            </c:if> 
                >Bebidas
                        </option>
                          <option value="Galletas"
                                 <c:if test="${miTarea.categoria =='Galletas'}" var="res" scope="request">
                selected
            </c:if> 
                >Galletas
                        </option>
                          <option value="Frutas"
                                 <c:if test="${miTarea.categoria =='Frutas'}" var="res" scope="request">
                selected
            </c:if> 
                >Frutas
                        </option>
                          <option value="Lacteos"
                                 <c:if test="${miTarea.categoria =='Lacteos'}" var="res" scope="request">
                selected
            </c:if> 
                >Lacteos
                        </option>
                          <option value="Verduras"
                                 <c:if test="${miTarea.categoria =='Verduras'}" var="res" scope="request">
                selected
            </c:if> 
                >Verduras
                        </option>
                          <option value="Carnes"
                                 <c:if test="${miTarea.categoria =='Carnes'}" var="res" scope="request">
                selected
            </c:if> 
                >Carnes
                        </option>
                        <option value="Cereales-Granos"
                                 <c:if test="${miTarea.categoria =='Cereales-Granos'}" var="res" scope="request">
                selected
            </c:if> 
                >Cereales-Granos
                        </option>
                         </select>
                     </td>
                </tr>
                  
                <tr>
                    <td>
                <input type="hidden" name="opg" value="${requestScope.op}"/>
                <input type="hidden" name="op" value="grabar"/>
                    </td>
                                       <td> <input type="submit"  value="Enviar"/> </td>
                </tr>
            </table>
            
        </form>
    </body>
</html>

