<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrEditaCentro.aspx.cs" Inherits="GafLookPaid.wfrEditaCentro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
        .auto-style1 {
            color: #000000;
        }
        .auto-style2 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Empresa</h1>
    <asp:UpdatePanel ID="upd1" runat="server">
    <ContentTemplate>
     <asp:Label runat="server" ID="lblError" ForeColor="Red" />
    <asp:HiddenField runat="server" ID="hfEmpresa"/>
    <table class="table-bordered">
        <tr>
            <td>*<span class="auto-style2"> Campos obligatorios</span></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                * Nombre:</td>
            <td>
                <asp:TextBox ID="txtRazonSocial" runat="server" Width="200px" CssClass="form-control2"/>
            </td>
             <td class="style1">Registro Patronal:</td>
            <td class="style1"><asp:TextBox runat="server" ID="txtRegistroPatronal" Width="200px" CssClass="form-control2"/></td>
            
        </tr>
        <tr>
          <td></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtRazonSocial" ErrorMessage="Campo Requerido" style="color: #FF0000; text-align: center"></asp:RequiredFieldValidator>
            </td>
             <td class="style1">&nbsp;</td>
        </tr>
     
        
        <tr>
            <td colspan="3">
                <asp:CheckBox ID="chkDireccionEmpresa" runat="server" AutoPostBack="True"
                    Text="El Domicilio es el mismo que la empresa" OnCheckedChanged="CheckBox1_OnCheckedChanged" style="color: #0000FF; text-align: left;"
                    />
            </td>
        </tr>
        <tr>
            <td>* Calle:</td>
            <td><asp:TextBox runat="server" ID="txtCalle" Width="200px" CssClass="form-control2" ClientIDMode="Static" /></td>
          <td class="auto-style1">CP:</td>
            <td>
                <asp:TextBox ID="txtCP" runat="server" Width="200px" CssClass="form-control2" MaxLength="5" ></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="filterInt" runat="server" FilterType="Numbers"
              TargetControlID="txtCP" ></asp:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
              <td></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCP" ErrorMessage="Campo Requerido" style="color: #FF0000; text-align: center"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>* Numero Exterior:</td>
            <td><asp:TextBox runat="server" ID="txtNoExt" Width="200px" CssClass="form-control2" ClientIDMode="Static" /></td>
         
            <td>Numero Interior:</td>
            <td><asp:TextBox runat="server" ID="txtNoInt" Width="200px" CssClass="form-control2" ClientIDMode="Static" /></td>
            <td></td>
        </tr>
        <tr>
            <td>Colonia:</td>
            <td><asp:TextBox runat="server" ID="txtColonia" Width="200px" CssClass="form-control2"
                    ClientIDMode="Static" /></td>
             <td>Alcaldia:</td>
            <td><asp:TextBox runat="server" ID="txtMunicipio" Width="200px" CssClass="form-control2"
                    ClientIDMode="Static" /></td>
            <td></td>
        </tr>
        <tr>
            <td>Estado:</td>
            <td><asp:TextBox runat="server" ID="txtEstado" Width="200px" CssClass="form-control2"
                    ClientIDMode="Static" /></td>
         
            <td>*País:</td>
            <td><asp:TextBox runat="server" ID="txtPais" Width="200px" CssClass="form-control2"  ClientIDMode="Static" /></td>
            <td>&nbsp;</td>
        </tr>


        <tr>
            <td>* Riesgo de trabajo:</td>
            <td>
            <asp:DropDownList runat="server" ID="ddlRiesgoPuesto" style="margin-left: 0px" Width="200px" CssClass="form-control2">
                 <asp:ListItem Text="Seleccione" Value="0"></asp:ListItem>
                <asp:ListItem Text="Clase I" Value="1"></asp:ListItem>
                <asp:ListItem Text="Clase II" Value="2"></asp:ListItem>
                <asp:ListItem Text="Clase III" Value="3"></asp:ListItem>
                <asp:ListItem Text="Clase IV" Value="4"></asp:ListItem>
                <asp:ListItem Text="Clase V" Value="5"></asp:ListItem>
            </asp:DropDownList>


                            </td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ddlRiesgoPuesto" ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator></td>
        </tr>
        

    </table>

    <br />
    </ContentTemplate>
    </asp:UpdatePanel>
   
    
    
    <div align="right">
        <asp:Button runat="server" ID="btnSave" Text="Guardar" class="btn btn-primary"  onclick="btnSave_Click" />&nbsp;&nbsp;
        <asp:Button runat="server" ID="btnCancel" Text="Cancelar" class="btn btn-primary"
            onclick="btnCancel_Click" CausesValidation="False" />
    </div>

</asp:Content>
