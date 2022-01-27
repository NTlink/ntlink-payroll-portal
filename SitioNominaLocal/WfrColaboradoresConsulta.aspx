<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WfrColaboradoresConsulta.aspx.cs" Inherits="GafLookPaid.WfrColaboradoresConsulta" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Consulta de EMPLEADOS</h1>
   <table class="table-bordered">
       <tr>
<td>Empresa: </td>
     <td>
        <asp:DropDownList runat="server" ID="ddlEmpresa" AppendDataBoundItems="True" DataTextField="RazonSocial"
         DataValueField="IdEmpresa" CssClass="form-control2" Enabled="False" />
    </td>
           <td> Nombre: </td>
    <td>
       <asp:TextBox runat="server" ID="txtBusqueda" Width="400px" CssClass="form-control2" />&nbsp;
        
    </td>
       </tr>
       <tr>
           <td><asp:Button runat="server" ID="btnBuscar" class="btn btn-primary" Text="Buscar" onclick="btnBuscar_Click"/></td>
     
            <td><asp:Button ID="Button1" runat="server" Text="Nuevo Empleado" class="btn btn-primary"
            OnClick="btnNuevoCliente_Click"/> </td>
     <td>
        <asp:Label runat="server" ID="lblError" ForeColor="Red" />
    </td>
             </tr>
       </table>
    <br />
    <asp:GridView runat="server" ID="gvClientes" CssClass="style124" AutoGenerateColumns="False" onrowcommand="gvClientes_RowCommand"
     DataKeyNames="idCliente" AllowPaging="True"  
        onpageindexchanging="gvClientes_PageIndexChanging" 
        onselectedindexchanged="gvClientes_SelectedIndexChanged" >
        <EmptyDataTemplate>
            No se encontraron registros.
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField HeaderText="RFC" DataField="RFC" />
            <asp:BoundField HeaderText="Nombre" DataField="RazonSocial" />
            <asp:BoundField HeaderText="Apellido Paterno" DataField="ApellidoPaterno" />
            <asp:BoundField HeaderText="Apellido Materno" DataField="ApellidoMaterno" />
            <asp:ButtonField Text="Editar" ButtonType="Link" CommandName="EditarCliente"/>
            <asp:TemplateField>
             <ItemTemplate>
                <asp:LinkButton Text="Eliminar" runat="server" ID="btnEliminarCliente" CommandArgument='<%# Eval("idCliente") %>' CommandName="Eliminar"/>
                <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="btnEliminarCliente" ConfirmText="Confirma que deseas eliminar el registro"/>
             </ItemTemplate>
            </asp:TemplateField>
            </Columns>
    </asp:GridView><br />
    
   
</asp:Content>