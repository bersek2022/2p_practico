<%@taglib  prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Tarea"%>
<%@page import="com.emergentes.modelo.GestorTareas"%>
<%
    if (session.getAttribute("agenda") == null) {
        GestorTareas objeto1 = new GestorTareas();

        objeto1.insertarTarea(new Tarea(1, "Coca Cola", 100, 10, "Bebidas"));
        objeto1.insertarTarea(new Tarea(2, "Pepsi", 50, 11, "Bebidas"));
        objeto1.insertarTarea(new Tarea(3, "Frack", 100, 2.50, "Galletas"));
        objeto1.insertarTarea(new Tarea(4, "Serranitas", 80, 1.50, "Galletas"));
        session.setAttribute("agenda", objeto1);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segundo parcial Practico</title>
    </head>
    <body>
        <style>
            .cuadro{background-color:greenyellow;
            text-align:center }
        </style>
        <div class="cuadro">
             <h1>SEGUNDO PARCIAL TEM-742</h1>
              <h2>Nombre :  LUIS ALEJANDRO MAMANI ANDRADE</h2>
               <h2>Carnet : 6720388</h2>
        </div>
        <h1></h1>
        <h1> P R O D U C T O S</h1>
        <a href="Controller?op=nuevo" >Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th>Categoria</th>
                <th></th>
                <th></th>

            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td> <a href="Controller?op=modificar&id=${item.id}" >Modificar</a></td>
                    <td> <a href="Controller?op=eliminar&id=${item.id}" >Eliminar</a></td>

                </tr>
            </c:forEach>
        </table>

    </body>
</html>

