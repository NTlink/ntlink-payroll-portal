<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WfrNomina.aspx.cs" Inherits="GafLookPaid.WfrNomina" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register Src="~/controles/JubilacionPensionRetiro.ascx" TagPrefix="uc" TagName="UCJubilacionPensionRetiro" %>
<%@ Register Src="~/controles/SeparacionIndemnizacion.ascx" TagPrefix="uc" TagName="UCSeparacionIndemnizacion" %>
<%@ Register Src="~/controles/AccionesOTitulos.ascx" TagPrefix="uc" TagName="UCAccionesOTitulos" %>
<%@ Register Src="~/controles/PercepcionesTotales.ascx" TagPrefix="uc" TagName="UCPercepcionesTotales" %>
<%@ Register Src="~/controles/OtrosPagos.ascx" TagPrefix="uc" TagName="UCOtrosPagos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />
    <style type="text/css">


      .mpeBack
	{
		background-color: Gray;
		filter: alpha(opacity=70);
		opacity: 0.7;
	}

    .modalBackground {
        background-color: #666;
        filter: alpha(opacity=70);
        opacity: 0 ;
    }
    .modalPopup
    {
      background-color: #AACE48;
      border-width: 2px;
      border-style: solid;
      border-color: #000;
      padding: 8px;
      width: 300px;
      text-align: center;
      
    }
	


        #Background
{
position:fixed;
top:0px;
bottom:0px;
left:0px;
right:0px;
overflow:hidden;
paddin:0;
margin:0;
background-color:transparent;
filter:alpha(opacity=80);
opacity:0.8;
z-index:10000;

}
        #Progress {
            position:fixed;
            top:40%;
            left:40%;
            height:20%;
            width:20%;
            z-index: 100001;
            background-color:transparent;
            border:0px;
            background-image:url("images/ajax-loader.gif");
            background-repeat:no-repeat;
            background-position:center;   
            text-align:center;         
        }

	.mpeBack
	{
		background-color: Gray;
		filter: alpha(opacity=70);
		opacity: 0.7;
	}		
		.auto-style149 {
            text-align: left;
            width: 127px;
            color: #000000;
        }
        .auto-style153 {
            height: 24px;
            width: 107px;
        }
		.auto-style155 {
            width: 126px;
            height: 41px;
            text-align: right;
        }
		.auto-style161 {
            width: 51%;
        }
		.auto-style162 {
            color: #666666;
        }
		.auto-style164 {
            width: 107px;
        }
        .auto-style165 {
            width: 145px;
        }
        .auto-style166 {
            width: 114px;
        }
        .auto-style167 {
            width: 165px;
        }
		.auto-style158 {
            text-align: right;
            height: 54px;
        }
        .auto-style169 {
            width: 164px;
        }
		.auto-style170 {
            width: 74px;
        }
        .auto-style172 {
            width: 127px;
        }
		.auto-style177 {
            text-align: right;
        }
		.auto-style179 {
            width: 201px;
        }
        .auto-style181 {
            display: block;
            padding: 6px 16px;
            font-size: 12px;
            line-height: 1.42857143;
            color: #000;
            background-color: #fff;
            background-image: none;
            border: 1px solid #A7CF39;
            border-radius: 10px 10px 10px 10px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-left: 0px;
        }
        .auto-style183 {
            width: 196px;
        }
		.auto-style159 {            text-align: left;
        }
		.auto-style184 {
            width: 126px;
        }
		.auto-style185 {
            width: 42px;
        }
        .auto-style186 {
            text-align: right;
            width: 42px;
        }
		.auto-style187 {
            text-align: left;
            width: 204px;
        }
        .auto-style188 {
            width: 204px;
        }
        .auto-style189 {
            width: 155px;
        }
		.auto-style190 {
            width: 98px;
        }
		</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Generar Recibo de Nómina</h1>
	
       <asp:UpdatePanel ID="up1" runat="server" CssClass="page7" BorderStyle="Double" UpdateMode="Conditional">
        <ContentTemplate>
    <table>
               <tr><td style="text-align: left"><asp:Label ID="lblVencimiento" runat="server" style="text-align:center; color: #800000;" ></asp:Label></td></tr>
           
        </table> 
            <table class="table-hover">
            <tr>
                <td class="auto-style155">* Empresa:</td>
                <td class="auto-style159">
                    <asp:DropDownList ID="ddlEmpresa" runat="server"  CssClass="form-control2"
                        AutoPostBack="True" DataTextField="RazonSocial" DataValueField="idEmpresa"
                        Enabled="False"  onselectedindexchanged="ddlEmpresa_SelectedIndexChanged" 
                        Width="240px" />
                </td>
                <td class="auto-style185">Serie:</td>
                <td class="auto-style160" style="text-align: left">
                    <asp:TextBox ID="txtSerie" runat="server" CssClass="form-control2" Height="15px" Width="144px" />
                </td>
                <td class="auto-style158">Folio:</td>
                <td class="auto-style34">
                    <asp:TextBox ID="txtFolio" runat="server" CssClass="form-control2" Enabled="False" Width="72px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style155">* Centro de Trabajo:</td>
                <td style="text-align: left">
                    <asp:DropDownList ID="DdlCentroTrabajo" runat="server" CssClass="form-control2"
                        AutoPostBack="True" DataTextField="Nombre" DataValueField="IdCentroTrabajo"  
                        onselectedindexchanged="DdlCentroTrabajo_OnSelectedIndexChanged" Width="146px" />
                
                </td>
                <td class="auto-style186" style="text-align: right">
                    <asp:Label ID="Label10" runat="server" Text="Registro Patronal:"></asp:Label>
                </td>
                <td class="auto-style160">
                    <asp:TextBox ID="txtRegistroPatronal" runat="server" CssClass="form-control2" Enabled="False" EnableTheming="True" Width="145px"></asp:TextBox>
                </td>
                <td class="auto-style158">* Tipo de Jornada:</td>
                <td class="auto-style35">
                    <asp:TextBox ID="txtTipoJornada" runat="server" CssClass="form-control2" Enabled="False" ToolTip="Diurna, nocturna, mixta, por hora, reducida, continua, partida, por turnos, etc." Width="72px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td style="text-align: left">    <asp:Label ID="lblLugarExpedicion" runat="server" Visible="False" style="color: #FF3300" /></td>

            </tr>
                
                <tr>
                <td class="auto-style155">Periodicidad</td>
                <td class="auto-style159">
                    <asp:DropDownList ID="ddlPeriodicidad" runat="server" AutoPostBack="True" 
                        CssClass="form-control2" onselectedindexchanged="ddlPeriodicidad_SelectedIndexChanged">
                        <asp:ListItem Text="Diario" Value="01" />
                        <asp:ListItem Text="Semanal" Value="02" />
                        <asp:ListItem Text="Catorcenal" Value="03" />
                        <asp:ListItem Text="Quincenal" Value="04" />
                        <asp:ListItem Text="Mensual" Value="05" />
                        <asp:ListItem Text="Bimestral" Value="06" />
                        <asp:ListItem Text="Unidad obra" Value="07" />
                        <asp:ListItem Text="Comisión" Value="08" />
                        <asp:ListItem Text="Precio alzado" Value="09" />
                        <asp:ListItem Text="Precio alzado" Value="10" />
                        <asp:ListItem Text="Otra Periodicidad" Value="99" />
                    </asp:DropDownList>
                    <td>* Tipo de Nómina:</td>
                    <td>
                        <asp:DropDownList ID="ddlTipoNomina" runat="server" AutoPostBack="True" CssClass="form-control2" onselectedindexchanged="ddlTipoNomina_SelectedIndexChanged" style="text-align: center; margin-left: 0px">
                            <asp:ListItem Text="Nómina ordinaria" Value="O"></asp:ListItem>
                            <asp:ListItem Text="Nómina extraordinaria" Value="E"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style158">
                        <asp:Label ID="Label24" runat="server" style="text-align: right" Text="Riesgo del puesto:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlRiesgoPuesto" runat="server" CssClass="form-control2"
                            Enabled="False" >
                            <asp:ListItem Text="Seleccionar" Value="0" />
                            <asp:ListItem Text="Clase I" Value="1" />
                            <asp:ListItem Text="Clase II" Value="2" />
                            <asp:ListItem Text="Clase III" Value="3" />
                            <asp:ListItem Text="Clase IV" Value="4" />
                            <asp:ListItem Text="Clase V" Value="5" />
                        </asp:DropDownList>
                    </td>
                </td>
            </tr>
           
        </caption>

    </table>
  <!-- <table>
       <tr>
           <td class="auto-style29"><asp:Label ID="Label8" runat="server" Text="Nombre:"></asp:Label></td>
            <td ><asp:TextBox runat="server" ID="txtNombreCentro" Enabled="False"></asp:TextBox></td>
          
          
       </tr>
   </table>-->
       	<br />	
    <table class="table-bordered"> <tr>
		<td class="auto-style183">*Empleado:</td>
           <td><asp:DropDownList runat="server" ID="ddlClientes" AutoPostBack="True"
		 DataTextField="NombreCompleto" DataValueField="idCliente" 
            onselectedindexchanged="ddlClientes_SelectedIndexChanged" style="margin-left: 0px" CssClass="form-control2"/>
	</td>
           <td><asp:TextBox runat="server"  ID="txtRazonSocial"   Text-align="center" TextMode="MultiLine" Width ="399px" Height="16px" CssClass="form-control0" Enabled="False" />
	   	</td>		
         </tr>
        <tr><td class="auto-style183"></td></tr>
        <tr><td class="auto-style183" >Observaciones </td>
            <td class="auto-style184">
                <asp:TextBox ID="txtProyecto" runat="server" CssClass="auto-style181" Height="30px" TextMode="MultiLine" Width="355px" />
            </td>
        </tr>
         
   </table>
          
        <table class="page7">
            <tr>
                <td style="text-align: left; color: #0000FF; font-size: medium;" class="auto-style190">Exclusivo </td>
                <td style="color: #0000FF; font-size: medium;" class="auto-style187">Dependencias Federales</td>
            </tr>
            <tr>
                <td class="auto-style190" style="text-align: left">OrigenRecurso</td>
                <td class="auto-style188">
                    <asp:DropDownList ID="ddlOrigenRecurso" runat="server" AutoPostBack="True" ClientIDMode="Static" CssClass="form-control2" onselectedindexchanged="ddlOrigenRecurso_SelectedIndexChanged" style="margin-left: 0px">
                        <asp:ListItem Text="Selecciona" Value="0" />
                        <asp:ListItem Text="Ingresos propios" Value="IP" />
                        <asp:ListItem Text="Ingreso federales" Value="IF" />
                        <asp:ListItem Text="Ingresos mixtos" Value="IM" />
                    </asp:DropDownList>
                </td>
                <td class="auto-style189">
                    <asp:Label ID="lblMontoRecursoPropio" runat="server" Text="MontoRecursoPropio" Visible="false"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMontoRecursoPropio" runat="server" CssClass="form-control2" Enabled="false" Visible="false"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender13" runat="server" FilterType="Numbers, Custom" TargetControlID="txtMontoRecursoPropio" ValidChars="." />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="txtMontoRecursoPropio" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#FF3300" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtMontoRecursoPropio" Display="Dynamic" ErrorMessage="Requerido" ForeColor="#FF3300" ValidationGroup="CrearFactura"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>  

                            <h1>
                                <asp:Label ID="Label58" runat="server"  style="font-weight: 700; color: #990000;" Text="Datos de Nómina"></asp:Label>
                            </h1>
                        <table class="page2" style="height:100px" >
                            <tr><td>
                                          &nbsp;</td></tr>
                                  <tr>
                                      
                                <td class="auto-style153" style="text-align:left">
                                    <asp:Label ID="Label12" runat="server" text="* Fecha de Pago: "></asp:Label>
                                </td>
                                <td class="auto-style165">
                                    <asp:TextBox ID="txtFechaPagoNomina" runat="server" CssClass="form-control0" Width="100px"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender3" runat="server" Format="yyyy-MM-dd" TargetControlID="txtFechaPagoNomina" />
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="* Días Pagados:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDiasPagados" runat="server" CssClass="form-control0" Width="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaPago" runat="server" CssClass="form-control0" Height="16px" Visible="False" Width="16px"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtFechaPago_CalendarExtender" runat="server" Format="yyyy-MM-dd" TargetControlID="txtFechaPago" />
                                </td>
                                <td class="auto-style167">
                                    <asp:Label ID="Label1" runat="server" Text="* Fecha de Inicio del Pago:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaInicio" runat="server" CssClass="form-control0" Width="113px"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" Format="yyyy-MM-dd" TargetControlID="txtFechaInicio" />
                                </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" text="* Fecha Final del Pago:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFechaFin" runat="server" CssClass="form-control0" Width="113px"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy-MM-dd" TargetControlID="txtFechaFin" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style164"></td>
                                <td class="auto-style165">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtFechaPagoNomina" ErrorMessage="Dato inválido" ForeColor="#FF3300" ValidationExpression="(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtFechaPagoNomina" ErrorMessage="Campo obligatorio" ForeColor="#FF3300" ValidationGroup="CrearFactura"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtFechaInicio" ErrorMessage="Dato inválido" ForeColor="#FF3300" ValidationExpression="(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])"></asp:RegularExpressionValidator>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFechaInicio" ErrorMessage="Campo obligatorio" ForeColor="#FF3300" ValidationGroup="CrearFactura"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style170">&nbsp;</td>
                                <td class="auto-style167">
                                    <asp:RequiredFieldValidator ID="rfvDias" runat="server" ControlToValidate="txtDiasPagados" ErrorMessage="Campo Obligatorio" ForeColor="#FF3300" style="text-align: right" ValidationGroup="CrearFactura"></asp:RequiredFieldValidator>
                                </td>
                                <td></td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtFechaFin" ErrorMessage="Dato inválido" ForeColor="#FF3300" ValidationExpression="(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])"></asp:RegularExpressionValidator>
                                </td>
                                <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFechaFin" ErrorMessage="Campo obligatorio" ForeColor="#FF3300" ValidationGroup="CrearFactura"></asp:RequiredFieldValidator>
                                </td>
                                </td>
                            </tr>

                            </table>
            <br />
            <table class="table-bordered">
                            <tr>
                                <td>

<asp:Panel ID="Panel3" runat="server"  CssClass="page7" BorderStyle="Double" HorizontalAlign="Left" Width="100%" Visible="true"> 
         		<asp:CheckBox runat="server" ID="cbCfdiRelacionados" Text="CfdiRelacionados" CssClass="page7"
                    AutoPostBack="True" 
                    style="font-weight: 700; color: #800000;" OnCheckedChanged="cbCfdiRelacionados_CheckedChanged"/>
		
       
                  
       
                  &nbsp;<div id="DivCfdiRelacionados"  style="width:100%" runat="server" visible="false">
         <table width="100%">
         
<tr>
<td colspan="3"  style="text-align: right; font-weight: 700;" >

    &nbsp;</td>
</tr>
<tr>
         <td class="text-right">UUID:</td>
         <td>
             <asp:TextBox ID="txtUUDI" runat="server" Width="271px" CssClass="form-control2" />
         </td>
         <td class="text-right">TipoRelacion:</td>
         <td>       <asp:DropDownList runat="server" ID="ddlTipoRelacion" AutoPostBack="True" CssClass="form-control2" >
 <%--<asp:ListItem runat="server" Value="01" Text="01 - Nota de crédito de los documentos relacionados" />
 <asp:ListItem runat="server" Value="02" Text="02 - Nota de débito de los documentos relacionados" />
 <asp:ListItem runat="server" Value="03" Text="03 - Devolución de mercancía sobre facturas o traslados previos" />--%>
 <asp:ListItem runat="server" Value="04" Text="04 - Sustitución de los CFDI previos" />
 <%--<asp:ListItem runat="server" Value="05" Text="05 - Traslados de mercancias facturados previamente" />
 <asp:ListItem runat="server" Value="06" Text="06 - Factura generada por los traslados previos" />
 <asp:ListItem runat="server" Value="07" Text="07 - CFDI por aplicación de anticipo" />--%>
             <%--<asp:ListItem runat="server" Value="08" Text="08 - Factura generada por pagos en parcialidades" />
                 <asp:ListItem runat="server" Value="09" Text="09 - Factura generada por pagos diferidos" />--%>
                        </asp:DropDownList>
                    
      </td>
         </tr>
<tr>
<td colspan="4" style="text-align: center">
<asp:Button runat="server" ID="btnCfdiRelacionado" Text="Agregar CfdiRelacionado" 
        ValidationGroup="AgregarCfdiRelacionado"  class="btn btn-primary" 
        onclick="btnCfdiRelacionado_Click" Width="190px"/>
</td>
</tr>
<tr>
<td colspan="5">
<asp:GridView runat="server" ID="gvCfdiRelacionado" AutoGenerateColumns="False" CssClass="style124"
			Width="100%" ShowHeaderWhenEmpty="True" OnRowCommand="gvCfdiRelacionado_RowCommand" >
			<Columns>
              	<asp:BoundField HeaderText="ID" DataField="ID"  ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField HeaderText="UUID" DataField="UUID" ItemStyle-HorizontalAlign="Center"/>
			    		
				<asp:ButtonField Text="Eliminar" CommandName="EliminarCfdiRelacionado" Visible="False" ItemStyle-HorizontalAlign="Center" />
			</Columns>
		</asp:GridView>
</td>
</tr>
</table>
    
        
      </div>
      </asp:Panel>
                                    
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <%-- <tr>
            <td style="text-align: right;"  >
		        Condiciones de Pago:</td><td  style="text-align: left" class="auto-style4">
		        <asp:DropDownList runat="server" ID="ddlCondicionesPago" AutoPostBack="True" 
                    onselectedindexchanged="ddlCondicionesPago_SelectedIndexChanged">
		            <asp:ListItem runat="server" Text="En una sola exhibición" Value="En una sola exhibición"></asp:ListItem>
                   
		        </asp:DropDownList>
	        </td>
        </tr>--%>
               
            </table>

           






          
           
            <%--<asp:UpdatePanel ID="up1" runat="server" UpdateMode="Conditional">
		<ContentTemplate>--%>

<br />
            <div>
                <asp:TabContainer ID="TabContainer1" runat="server"  ActiveTabIndex="3" style="color: #000; text-decoration: blink; font-weight: 700; font-family: Arial, Helvetica, sans-serif; text-align: left;" Width="100%">
                    <asp:TabPanel ID="PanelPercepciones" runat="server" CssClass="page7" BorderStyle="Double"  HeaderText="Percepciones">
                        <ContentTemplate>
                            <table class="page7">
                                <tr>
                                    <td class="auto-style120" style="font-weight: 700; font-family: Arial, Helvetica, sans-serif">
                                        <asp:CheckBox ID="ChPercepciones" runat="server" AutoPostBack="True" CssClass="page2" OnCheckedChanged="ChPercepciones_CheckedChanged" Text="Percepciones" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ChJubilacionPensionRetiro" runat="server" AutoPostBack="True" CssClass="page2" Enabled="False" OnCheckedChanged="ChJubilacionPensionRetiro_CheckedChanged" style="font-weight: 700; font-family: Arial, Helvetica, sans-serif" Text="JubilacionPensionRetiro" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ChSeparacionIndemnizacio" runat="server" AutoPostBack="True" CssClass="page2" OnCheckedChanged="ChSeparacionIndemnizacio_CheckedChanged" style="font-weight: 700; font-family: Arial, Helvetica, sans-serif" Text="SeparacionIndemnizacio" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <uc:UCJubilacionPensionRetiro ID="JubilacionPensionRetiro" runat="server" />
                            <uc:UCSeparacionIndemnizacion ID="SeparacionIndemnizacion" runat="server" />
                            <uc:UCPercepcionesTotales ID="PercepcionesTotales" runat="server" />
                            <asp:Panel ID="Panel2" runat="server" BorderStyle="Outset" CssClass="page2" HorizontalAlign="Center" Width="100%">
                                
                                <table class="table-bordered">
                                    <tr id="Tr1" runat="server">
                                        <td runat="server" class="auto-style169" style="color: #000000; text-align: right;">* Clave</td>
                                        <td runat="server" style="text-align: left" class="auto-style179">
                                            <asp:TextBox ID="txtClave" runat="server" CssClass="form-control0" MaxLength="15"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtClave" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="AgregarPersepcion"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ControlToValidate="txtClave" ErrorMessage="Dato inválido" ForeColor="#FF3300" ValidationExpression="([A-Z]|[a-z]|[0-9]|Ñ|ñ|!|&quot;|%|&amp;|'|´|-|:|;|&gt;|=|&lt;|@|_|,|\{|\}|`|~|á|é|í|ó|ú|Á|É|Í|Ó|Ú|ü|Ü){3,15}" ValidationGroup="AgregarPersepcion"></asp:RegularExpressionValidator>
                                        </td>
                                        <td runat="server" style="text-align: left" class="auto-style172"></td>
                                    </tr>
                                   
                                    <tr>
                                        <td class="auto-style169"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style169" style="color: #000000; text-align: right;">* Importe Gravado</td>
                                        <td class="auto-style179">
                                            <asp:TextBox ID="txtImporteGravado" runat="server" CssClass="form-control0" Display="Dynamic" ValidationGroup="AgregarPersepcion"></asp:TextBox>
                                        </td>
                                       <td runat="server" class="auto-style149">* Tipo Percepción</td>
                                        <td runat="server" class="auto-style161" style="text-align: left">
                                            <asp:DropDownList ID="ddlPercepcion" runat="server" AutoPostBack="True" CssClass="form-control2" OnSelectedIndexChanged="ddlPercepcion_SelectedIndexChanged" style="margin-left: 0px" Width="651px">
                                                <asp:ListItem Text="Sueldos, Salarios  Rayas y Jornales" Value="001" />
                                                <asp:ListItem Text="Gratificación Anual -Aguinaldo-" Value="002" />
                                                <asp:ListItem Text="Participación de los Trabajadores en las Utilidades PTU" Value="003" />
                                                <asp:ListItem Text="Reembolso de Gastos Médicos Dentales y Hospitalarios" Value="004" />
                                                <asp:ListItem Text="Fondo de Ahorro" Value="005" />
                                                <asp:ListItem Text="Caja de ahorro" Value="006" />
                                                <asp:ListItem Text="Contribuciones a Cargo del Trabajador Pagadas por el Patrón" Value="009" />
                                                <asp:ListItem Text="Premios por puntualidad" Value="010" />
                                                <asp:ListItem Text="Prima de Seguro de vida" Value="011" />
                                                <asp:ListItem Text="Seguro de Gastos Médicos Mayores" Value="012" />
                                                <asp:ListItem Text="Cuotas Sindicales Pagadas por el Patrón" Value="013" />
                                                <asp:ListItem Text="Subsidios por incapacidad" Value="014" />
                                                <asp:ListItem Text="Becas para trabajadores y-o hijos" Value="015" />
                                                <asp:ListItem Text="Horas extra" Value="019" />
                                                <asp:ListItem Text="Prima dominical" Value="020" />
                                                <asp:ListItem Text="Prima vacacional" Value="021" />
                                                <asp:ListItem Text="Prima por antigüedad" Value="022" />
                                                <asp:ListItem Text="Pagos por separación" Value="023" />
                                                <asp:ListItem Text="Seguro de retiro" Value="024" />
                                                <asp:ListItem Text="Indemnizaciones" Value="025" />
                                                <asp:ListItem Text="Reembolso por funeral" Value="026" />
                                                <asp:ListItem Text="Cuotas de seguridad social pagadas por el patrón" Value="027" />
                                                <asp:ListItem Text="Comisiones" Value="028" />
                                                <asp:ListItem Text="Vales de despensa" Value="029" />
                                                <asp:ListItem Text="Vales de restaurante" Value="030" />
                                                <asp:ListItem Text="Vales de gasolina" Value="031" />
                                                <asp:ListItem Text="Vales de ropa" Value="032" />
                                                <asp:ListItem Text="Ayuda para renta" Value="033" />
                                                <asp:ListItem Text="Ayuda para artículos escolares" Value="034" />
                                                <asp:ListItem Text="Ayuda para anteojos" Value="035" />
                                                <asp:ListItem Text="Ayuda para transporte" Value="036" />
                                                <asp:ListItem Text="Ayuda para gastos de funeral" Value="037" />
                                                <asp:ListItem Text="Otros ingresos por salarios" Value="038" />
                                                <asp:ListItem Text="Jubilaciones, pensiones o haberes de retiro" Value="039" />
                                                <asp:ListItem Text="Jubilaciones, pensiones o haberes de retiro en parcialidades" Value="044" />
                                                <asp:ListItem Text="Ingresos en acciones o títulos valor que representan bienes" Value="045" />
                                                <asp:ListItem Text="Ingresos asimilados a salarios" Value="046" />
                                                <asp:ListItem Text="Alimentación" Value="047" />
                                                <asp:ListItem Text="Habitación" Value="048" />
                                                <asp:ListItem Text="Premios por asistencia" Value="049" />
                                                <asp:ListItem Text="Viáticos" Value="050" />
                                                <asp:ListItem Text="Pagos por gratificaciones, primas, compensaciones, recompensas u otros a extrabajadores derivados de jubilación en parcialidades" Value="051" />
                                                <asp:ListItem Text="Pagos que se realicen a extrabajadores que obtengan una jubilación en parcialidades derivados de la ejecución de resoluciones judicial o de un laudo" Value="052" />
                                                <asp:ListItem Text="Pagos que se realicen a extrabajadores que obtengan una jubilación en una sola exhibición derivados de la ejecución de resoluciones judicial o de un laudo" Value="053" />
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style169"></td>
                                        <td style="text-align: left" class="auto-style179">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtImporteGravado" ErrorMessage="Campo Obligatorio" ForeColor="#FF3300" ValidationGroup="AgregarPersepcion"></asp:RequiredFieldValidator>
                                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" BehaviorID="_content_FilteredTextBoxExtender3" FilterType="Custom, Numbers" TargetControlID="txtImporteGravado" ValidChars="." />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtImporteGravado" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#FF3300" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarPersepcion" />
                                        </td>
                                        <td class="auto-style172"></td>
                                       
                                    </tr>
                                    
                                   
                                     <tr id="tr2" runat="server">
                                          <td runat="server" class="auto-style169" style="color: #000000; text-align: right;">* Importe Excento</td>
                                        <td runat="server" class="auto-style179">
                                            <asp:TextBox ID="txtImporteExcento" runat="server" CssClass="form-control0" Display="Dynamic" ValidationGroup="AgregarPersepcion"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                   <tr>
                                       <td class="auto-style169"></td>
                                       
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtImporteExcento" ErrorMessage="Campo Obligatorio" ForeColor="#FF3300" ValidationGroup="AgregarPersepcion"></asp:RequiredFieldValidator>
                                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" BehaviorID="_content_FilteredTextBoxExtender4" FilterType="Custom, Numbers" TargetControlID="txtImporteExcento" ValidChars="." />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtImporteExcento" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#FF3300" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarPersepcion" />
                                        </td></td>
                                   </tr>
                                      <tr>
                                        <td class="auto-style169"></td>
                                        <td style="text-align: left" class="auto-style179">
                                            <asp:CheckBox ID="ChAccionesOTitulos" runat="server" AutoPostBack="True" Enabled="False" OnCheckedChanged="ChAccionesOTitulos_CheckedChanged" style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; color: #0000FF;" Text="AccionesOTitulos" />
                                        </td>
                                    </tr>
                                     
                                     <tr>
                                       
                                         <td runat="server" class="auto-style169" style="text-align: left">
                                            <asp:Button ID="btnAgregarPercepcion" runat="server" class="btn btn-primary" onclick="btnAgregarPercepcion_Click" Text="Agregar Percepcion" ValidationGroup="AgregarPersepcion" Width="158px" />
                                        </td>
                                    </tr>
                                  
                                    <tr>
                                        <td colspan="2" style="color: #000000">
                                            <uc:UCAccionesOTitulos ID="AccionesOTitulos" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:GridView ID="gvPercepciones" runat="server" AutoGenerateColumns="False" CssClass="page1" onrowcommand="gvPercepciones_RowCommand" ShowHeaderWhenEmpty="True" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="Clave" HeaderText="Clave">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="TipoPercepcion" HeaderText="Tipo Percepcion">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Concepto" HeaderText="Concepto">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ImporteGravado" DataFormatString="{0:C}" HeaderText="Importe Gravado" />
                                        <asp:BoundField DataField="ImporteExento" DataFormatString="{0:C}" HeaderText="Importe Exento" />
                                        <asp:BoundField DataField="ValorMercado" DataFormatString="{0:C}" HeaderText="Valor Mercado" />
                                        <asp:BoundField DataField="PrecioAlOtorgarse" DataFormatString="{0:C}" HeaderText="Precio Al Otorgarse" />
                                        <asp:ButtonField CommandName="Eliminar" HeaderText="Eliminar" Text="Eliminar" />
                                    </Columns>
                                </asp:GridView>
                                <br />
                                <table class="table-bordered">
                                    <tr>
                                        <td>* Clave</td>
                                        <td>
                                            <asp:DropDownList ID="ddlClave" runat="server" CssClass="form-control0" style="margin-left: 0px">
                                            </asp:DropDownList>
                                            <asp:Label ID="lblClaveError" runat="server" ForeColor="#FF3300" Text="Campo Obligatorio" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>* Dias</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txtDias" runat="server" CssClass="form-control2"></asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" BehaviorID="_content_FilteredTextBoxExtender1" FilterType="Numbers" TargetControlID="txtDias" />
                                        </td>
                                        <td>* TipoHoras</td>
                                        <td>
                                            <asp:DropDownList ID="ddlTipoHoras" runat="server"  CssClass="form-control2" style="margin-left: 0px">
                                                <asp:ListItem Text="Dobles" Value="01" />
                                                <asp:ListItem Text="Triples" Value="02" />
                                                <asp:ListItem Text="Simples" Value="03" />
                                            </asp:DropDownList>
                                        </td>
                                        <td>* HorasExtra</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txtHorasExtra" runat="server" CssClass="form-control0"></asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" BehaviorID="_content_FilteredTextBoxExtender2" FilterType="Numbers" TargetControlID="txtHorasExtra" />
                                        </td>
                                        <td>* ImportePagado</td>
                                        <td>
                                            <asp:TextBox ID="txtImportePagado" runat="server" CssClass="form-control0"></asp:TextBox>
                                        </td>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" BehaviorID="_content_FilteredTextBoxExtender4" FilterType="Custom, Numbers" TargetControlID="txtImportePagado" ValidChars="." />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtImportePagado" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#FF3300" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarHorasExtra" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtImportePagado" ErrorMessage="Campo Obligatorio" ForeColor="#FF3300" ValidationGroup="AgregarHorasExtra"></asp:RequiredFieldValidator>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtDias" ErrorMessage="Campo Obligatorio" ForeColor="#FF3300" ValidationGroup="AgregarHorasExtra"></asp:RequiredFieldValidator>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtHorasExtra" ErrorMessage="Campo Obligatorio" ForeColor="#FF3300" ValidationGroup="AgregarHorasExtra"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                     
                                        <td class="auto-style166">
                                            <asp:Button ID="btnAgregarHorasExtra" runat="server" class="btn btn-primary" onclick="btnAgregarHorasExtra_Click" Text="Agregar Horas Extras" ValidationGroup="AgregarHorasExtra" Width="154px" />
                                        </td>
                                           <td></td>
                                    </tr>
                                </table>
                               
                                <asp:GridView ID="gvHorasExtra" runat="server" AutoGenerateColumns="False" CssClass="page1" onrowcommand="gvHorasExtra_RowCommand" ShowHeaderWhenEmpty="True" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="clave" HeaderText="Clave">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Dias" HeaderText="Dias">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="TipoHoras" HeaderText="Tipo Horas">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="HoraExtra" HeaderText="Horas Extra">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="ImportePagado" DataFormatString="{0:C}" HeaderText="ImportePagado" />
                                        <asp:ButtonField CommandName="Eliminar" HeaderText="Eliminar" Text="Eliminar" />
                                    </Columns>
                                </asp:GridView>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="PanelDeducciones" runat="server" CssClass="page7" HeaderText="Deducciones">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td class="auto-style120" style="font-weight: 700; font-family: Arial, Helvetica, sans-serif">
                                        <asp:CheckBox ID="ChDeducciones" runat="server" AutoPostBack="True" CssClass="page2" OnCheckedChanged="ChDeducciones_CheckedChanged" Text="Deducciones" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style120" style="text-align: left">TotalOtrasDeducciones</td>
                                    <td>
                                        <asp:TextBox ID="txtTotalOtrasDeducciones" runat="server" Enabled="False" CssClass="form-control2"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" BehaviorID="_content_FilteredTextBoxExtender4" FilterType="Custom, Numbers" TargetControlID="txtTotalOtrasDeducciones" ValidChars="." />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTotalOtrasDeducciones" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#FF3300" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="auto-style20">TotalImpuestosRetenidos</td>
                                    <td>
                                        <asp:TextBox ID="txtTotalImpuestosRetenidos" runat="server" Enabled="False" CssClass="form-control2"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" BehaviorID="_content_FilteredTextBoxExtender4" FilterType="Custom, Numbers" TargetControlID="txtTotalImpuestosRetenidos" ValidChars="." />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtTotalImpuestosRetenidos" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#FF3300" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                            </table>
                           
                            <table width="100%">
                                <tr id="Tr3" runat="server">
                                    <td runat="server" class="auto-style123">&nbsp;* Clave</td>
                                    <td runat="server" style="width: 40%;text-align: left">
                                        <asp:TextBox ID="txtClaveDed" runat="server" MaxLength="15" CssClass="form-control2"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtClaveDed" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="AgregarDeduccion"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ControlToValidate="txtClaveDed" ErrorMessage="Dato inválido" ForeColor="#FF3300" ValidationExpression="([A-Z]|[a-z]|[0-9]|Ñ|ñ|!|&quot;|%|&amp;|'|´|-|:|;|&gt;|=|&lt;|@|_|,|\{|\}|`|~|á|é|í|ó|ú|Á|É|Í|Ó|Ú|ü|Ü){3,15}" ValidationGroup="AgregarDeduccion"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr id="tr4" runat="server">
                                    <td runat="server" class="auto-style123">* Tipo Deduccion</td>
                                    <td runat="server" style="width: 40%;text-align: left">
                                        <asp:DropDownList ID="ddlTipoDed" runat="server"  CssClass="form-control2" style="margin-left: 0px" Width="524px" >
                                            <asp:ListItem Text="Seguridad social" Value="001" />
                                            <asp:ListItem Text="ISR" Value="002" />
                                            <asp:ListItem Text="Aportaciones a retiro, cesantía en edad avanzada y vejez. " Value="003" />
                                            <asp:ListItem Text="Otros " Value="004" />
                                            <asp:ListItem Text="Aportaciones a Fondo de vivienda " Value="005" />
                                            <asp:ListItem Text="Descuento por incapacidad" Value="006" />
                                            <asp:ListItem Text="Pensión alimenticia" Value="007" />
                                            <asp:ListItem Text="Renta" Value="008" />
                                            <asp:ListItem Text="Préstamos provenientes del Fondo Nacional de la Vivienda para los Trabajadores" Value="009" />
                                            <asp:ListItem Text="Pago por crédito de vivienda" Value="010" />
                                            <asp:ListItem Text="Pago de abonos INFONACOT" Value="011" />
                                            <asp:ListItem Text="Anticipo de salarios" Value="012" />
                                            <asp:ListItem Text="Pagos hechos con exceso al trabajador" Value="013" />
                                            <asp:ListItem Text="Errores" Value="014" />
                                            <asp:ListItem Text="Pérdidas" Value="015" />
                                            <asp:ListItem Text="Averías" Value="016" />
                                            <asp:ListItem Text="Adquisición de artículos producidos por la empresa o establecimiento " Value="017" />
                                            <asp:ListItem Text="Cuotas para la constitución y fomento de sociedades cooperativas y de cajas de ahorro" Value="018" />
                                            <asp:ListItem Text="Cuotas sindicales" Value="019" />
                                            <asp:ListItem Text="Ausencia (Ausentismo)" Value="020" />
                                            <asp:ListItem Text="Cuotas obrero patronales" Value="021" />
                                            <asp:ListItem Text="Impuestos Locales" Value="022" />
                                            <asp:ListItem Text="Aportaciones voluntarias" Value="023" />
                                            <asp:ListItem Text="Ajuste en Gratificación Anual (Aguinaldo) Exento" Value="024" />
                                            <asp:ListItem Text="Ajuste en Gratificación Anual (Aguinaldo) Gravado" Value="025" />
                                            <asp:ListItem Text="Ajuste en Participación de los Trabajadores en las Utilidades PTU Exento" Value="026" />
                                            <asp:ListItem Text="Ajuste en Participación de los Trabajadores en las Utilidades PTU Gravado" Value="027" />
                                            <asp:ListItem Text="Ajuste en Reembolso de Gastos Médicos Dentales y Hospitalarios Exento" Value="028" />
                                            <asp:ListItem Text="Ajuste en Fondo de ahorro Exento" Value="029" />
                                            <asp:ListItem Text="Ajuste en Caja de ahorro Exento" Value="030" />
                                            <asp:ListItem Text="Ajuste en Contribuciones a Cargo del Trabajador Pagadas por el Patrón Exento" Value="031" />
                                            <asp:ListItem Text="Ajuste en Premios por puntualidad Gravado" Value="032" />
                                            <asp:ListItem Text="Ajuste en Prima de Seguro de vida Exento" Value="033" />
                                            <asp:ListItem Text="Ajuste en Seguro de Gastos Médicos Mayores Exento" Value="034" />
                                            <asp:ListItem Text="Ajuste en Cuotas Sindicales Pagadas por el Patrón Exento" Value="035" />
                                            <asp:ListItem Text="Ajuste en Subsidios por incapacidad Exento" Value="036" />
                                            <asp:ListItem Text="Ajuste en Becas para trabajadores y/o hijos Exento" Value="037" />
                                            <asp:ListItem Text="Ajuste en Horas extra Exento" Value="038" />
                                            <asp:ListItem Text="Ajuste en Horas extra Gravado" Value="039" />
                                            <asp:ListItem Text="Ajuste en Prima dominical Exento" Value="040" />
                                            <asp:ListItem Text="Ajuste en Prima dominical Gravado" Value="041" />
                                            <asp:ListItem Text="Ajuste en Prima vacacional Exento" Value="042" />
                                            <asp:ListItem Text="Ajuste en Prima vacacional Gravado" Value="043" />
                                            <asp:ListItem Text="Ajuste en Prima por antigüedad Exento" Value="044" />
                                            <asp:ListItem Text="Ajuste en Prima por antigüedad Gravado" Value="045" />
                                            <asp:ListItem Text="Ajuste en Pagos por separación Exento" Value="046" />
                                            <asp:ListItem Text="Ajuste en Pagos por separación Gravado" Value="047" />
                                            <asp:ListItem Text="Ajuste en Seguro de retiro Exento" Value="048" />
                                            <asp:ListItem Text="Ajuste en Indemnizaciones Exento" Value="049" />
                                            <asp:ListItem Text="Ajuste en Indemnizaciones Gravado" Value="050" />
                                            <asp:ListItem Text="Ajuste en Reembolso por funeral Exento" Value="051" />
                                            <asp:ListItem Text="Ajuste en Cuotas de seguridad social pagadas por el patrón Exento" Value="052" />
                                            <asp:ListItem Text="Ajuste en Comisiones Gravado" Value="053" />
                                            <asp:ListItem Text="Ajuste en Vales de despensa Exento" Value="054" />
                                            <asp:ListItem Text="Ajuste en Vales de restaurante Exento" Value="055" />
                                            <asp:ListItem Text="Ajuste en Vales de gasolina Exento" Value="056" />
                                            <asp:ListItem Text="Ajuste en Vales de ropa Exento" Value="057" />
                                            <asp:ListItem Text="Ajuste en Ayuda para renta Exento" Value="058" />
                                            <asp:ListItem Text="Ajuste en Ayuda para artículos escolares Exento" Value="059" />
                                            <asp:ListItem Text="Ajuste en Ayuda para anteojos Exento" Value="060" />
                                            <asp:ListItem Text="Ajuste en Ayuda para transporte Exento" Value="061" />
                                            <asp:ListItem Text="Ajuste en Ayuda para gastos de funeral Exento" Value="062" />
                                            <asp:ListItem Text="Ajuste en Otros ingresos por salarios Exento" Value="063" />
                                            <asp:ListItem Text="Ajuste en Otros ingresos por salarios Gravado" Value="064" />
                                            <asp:ListItem Text="Ajuste en Jubilaciones, pensiones o haberes de retiro en una sola exhibición Exento" Value="065" />
                                            <asp:ListItem Text="Ajuste en Jubilaciones, pensiones o haberes de retiro en una sola exhibición Gravado" Value="066" />
                                            <asp:ListItem Text="Ajuste en Pagos por separación Acumulable" Value="067" />
                                            <asp:ListItem Text="Ajuste en Pagos por separación No acumulable" Value="068" />
                                            <asp:ListItem Text="Ajuste en Jubilaciones, pensiones o haberes de retiro en parcialidades Exento" Value="069" />
                                            <asp:ListItem Text="Ajuste en Jubilaciones, pensiones o haberes de retiro en parcialidades Gravado" Value="070" />
                                            <asp:ListItem Text="Ajuste en Subsidio para el empleo (efectivamente entregado al trabajador)" Value="071" />
                                            <%--<asp:ListItem Text="Ajuste en Ingresos en acciones o títulos valor que representan bienes Exento"  Value="072" />--%>
                                            <asp:ListItem Text="Ajuste en Ingresos en acciones o títulos valor que representan bienes Gravado" Value="073" />
                                            <asp:ListItem Text="Ajuste en Alimentación Exento" Value="074" />
                                            <asp:ListItem Text="Ajuste en Alimentación Gravado" Value="075" />
                                            <asp:ListItem Text="Ajuste en Habitación Exento" Value="076" />
                                            <asp:ListItem Text="Ajuste en Habitación Gravado" Value="077" />
                                            <asp:ListItem Text="Ajuste en Premios por asistencia" Value="078" />
                                            <asp:ListItem Text="Ajuste en Pagos distintos a los listados y que no deben considerarse como ingreso por sueldos, salarios o ingresos asimilados." Value="079" />
                                            <asp:ListItem Text="Ajuste en Viáticos gravados" Value="080" />
                                            <asp:ListItem Text="Ajuste en Viáticos (entregados al trabajador)" Value="081" />
                                            <asp:ListItem Text="Ajuste en Fondo de ahorro Gravado" Value="082" />
                                            <asp:ListItem Text="Ajuste en Caja de ahorro Gravado" Value="083" />
                                            <asp:ListItem Text="Ajuste en Prima de Seguro de vida Gravado" Value="084" />
                                            <asp:ListItem Text="Ajuste en Seguro de Gastos Médicos Mayores Gravado" Value="085" />
                                            <asp:ListItem Text="Ajuste en Subsidios por incapacidad Gravado" Value="086" />
                                            <asp:ListItem Text="Ajuste en Becas para trabajadores y/o hijos Gravado" Value="087" />
                                            <asp:ListItem Text="Ajuste en Seguro de retiro Gravado" Value="088" />
                                            <asp:ListItem Text="Ajuste en Vales de despensa Gravado" Value="089" />
                                            <asp:ListItem Text="Ajuste en Vales de restaurante Gravado" Value="090" />
                                            <asp:ListItem Text="Ajuste en Vales de gasolina Gravado" Value="091" />
                                            <asp:ListItem Text="Ajuste en Vales de ropa Gravado" Value="092" />
                                            <asp:ListItem Text="Ajuste en Ayuda para renta Gravado" Value="093" />
                                            <asp:ListItem Text="Ajuste en Ayuda para artículos escolares Gravado" Value="094" />
                                            <asp:ListItem Text="Ajuste en Ayuda para anteojos Gravado" Value="095" />
                                            <asp:ListItem Text="Ajuste en Ayuda para transporte Gravado" Value="096" />
                                            <asp:ListItem Text="Ajuste en Ayuda para gastos de funeral Gravado" Value="097" />
                                            <asp:ListItem Text="Ajuste a ingresos asimilados a salarios gravados" Value="098" />
                                            <asp:ListItem Text="Ajuste a ingresos por sueldos y salarios gravados" Value="099" />
                                            <asp:ListItem Text="Ajuste en Viáticos exentos" Value="100" />
                                            <asp:ListItem Text="ISR Retenido de ejercicio anterior" Value="101" />
                                            <asp:ListItem Text="Ajuste a pagos por gratificaciones, primas, compensaciones, recompensas u otros a extrabajadores derivados de jubilación en parcialidades, gravados" Value="102" />
                                            <asp:ListItem Text="Ajuste a pagos que se realicen a extrabajadores que obtengan una jubilación en parcialidades derivados de la ejecución de una resolución judicial o de un laudo gravados" Value="103" />
                                            <asp:ListItem Text="Ajuste a pagos que se realicen a extrabajadores que obtengan una jubilación en parcialidades derivados de la ejecución de una resolución judicial o de un laudo exentos" Value="104" />
                                            <asp:ListItem Text="Ajuste a pagos que se realicen a extrabajadores que obtengan una jubilación en una sola exhibición derivados de la ejecución de una resolución judicial o de un laudo gravados" Value="105" />
                                            <asp:ListItem Text="Ajuste a pagos que se realicen a extrabajadores que obtengan una jubilación en una sola exhibición derivados de la ejecución de una resolución judicial o de un laudo exentos" Value="106" />
                                           <asp:ListItem Text="Ajuste al Subsidio Causado" Value="107" />
                                           
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style123">* Concepto</td>
                                    <td>
                                        <asp:TextBox ID="txtConceptpDed" runat="server" Width="415px" CssClass="form-control2"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtConceptpDed" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="AgregarDeduccion"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style123">* Importe </td>
                                    <td style="width: 40%;text-align: left">
                                        <asp:TextBox ID="txtImporteDed" runat="server" Display="Dynamic" ValidationGroup="AgregarDeduccion" CssClass="form-control2"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtImporteDed" ErrorMessage="Campo Obligatorio" ForeColor="#FF3300" ValidationGroup="AgregarDeduccion"></asp:RequiredFieldValidator>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" BehaviorID="_content_FilteredTextBoxExtender3" FilterType="Custom, Numbers" TargetControlID="txtImporteDed" ValidChars="." />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtImporteDed" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#FF3300" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarDeduccion" />
                                    </td>
                                    <td>
                                        <asp:Button ID="AgregarDeduccion" runat="server" class="btn btn-primary" OnClick="AgregarDeduccion_Click" Text="Agregar Deducción" ValidationGroup="AgregarDeduccion" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style123">&nbsp;</td>
                                    <td style="width: 40%;text-align: left">&nbsp;</td>
                                </tr>
                            </table>
                            <asp:GridView ID="GvDeducciones" runat="server" AutoGenerateColumns="False" CssClass="page1" onrowcommand="GvDeducciones_RowCommand" ShowHeaderWhenEmpty="True" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="Clave" HeaderText="Clave">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TipoDeduccion" HeaderText="Tipo De duccion">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Concepto" HeaderText="Concepto">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Importe" DataFormatString="{0:C}" HeaderText="Importe" />
                                    <asp:ButtonField CommandName="Eliminar" HeaderText="Eliminar" Text="Eliminar" />
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="TabPanel3" runat="server" CssClass="page3" HeaderText="Otros Pagos" Visible="true">
                        <ContentTemplate>
                            
                            <table>
                                <tr id="Tr5" runat="server">
                                    <td runat="server" class="auto-style124">&nbsp;* Clave</td>
                                    <td runat="server" class="auto-style117" style="text-align: left">
                                        <asp:TextBox ID="txtClaveOtros" runat="server" MaxLength="15" CssClass="form-control2"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtClaveOtros" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="AgregarOtros"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr id="tr6" runat="server">
                                    <td runat="server" class="auto-style125" style="text-align: left">* Tipo Otro Pago</td>
                                    <td runat="server" class="auto-style117" style="text-align: left">
                                        <asp:DropDownList ID="ddlTipoOtros" runat="server"  CssClass="form-control2" 
                                            style="margin-left: 0px" Width="555px" >
                                            <asp:ListItem Text="Reintegro de ISR pagado en exceso (siempre que no haya sido enterado al SAT)" Value="001" />
                                            <asp:ListItem Text="Subsidio para el empleo (efectivamente entregado al trabajador)" Value="002" />
                                            <asp:ListItem Text="Viáticos (entregados al trabajador)" Value="003" />
                                            <asp:ListItem Text="Aplicación de saldo a favor por compensación anual" Value="004" />
                                            <asp:ListItem Text="Reintegro de ISR retenido en exceso de ejercicio anterior (siempre que no haya sido enterado al SAT)." Value="005" />
                                            <asp:ListItem Text="Alimentos en bienes (servicios de comedor y comida) Art 94 último párrafo LISR" Value="006" />
                                            <asp:ListItem Text="ISR ajustado por subsidio" Value="007" />
                                            <asp:ListItem Text="Subsidio efectivamente entregado que no correspondía (aplica solo cuando haya ajuste al cierre de mes en relación con el apéndice 7 de la guía de llenado de nómina)" Value="008" />
                                            <asp:ListItem Text="Pagos distintos a los listados y que no deben considerarse como ingreso por sueldos, salarios o ingresos asimilados" Value="999" />
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style125" style="text-align: left">* Concepto</td>
                                    <td class="auto-style117">
                                        <asp:TextBox ID="txtConceptoOtros" runat="server" Width="415px" CssClass="form-control2"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtConceptoOtros" ErrorMessage="Campo Obligatorio" ForeColor="Red" ValidationGroup="AgregarOtros"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style124">* Importe </td>
                                    <td class="auto-style117" style="text-align: left">
                                        <asp:TextBox ID="txtImporteOtros" runat="server" Display="Dynamic" ValidationGroup="AgregarOtros" CssClass="form-control2"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtImporteOtros" ErrorMessage="Campo Obligatorio" ForeColor="#FF3300" ValidationGroup="AgregarOtros"></asp:RequiredFieldValidator>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender9" runat="server" BehaviorID="_content_FilteredTextBoxExtender3" FilterType="Custom, Numbers" TargetControlID="txtImporteOtros" ValidChars="." />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtImporteOtros" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#FF3300" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarOtros" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style125" style="text-align: left">SubsidioCausado</td>
                                    <td class="auto-style117" style="text-align: left">
                                        <asp:TextBox ID="txtSubsidio" runat="server"  CssClass="form-control2"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender10" runat="server" BehaviorID="_content_FilteredTextBoxExtender3" FilterType="Custom, Numbers" TargetControlID="txtSubsidio" ValidChars="." />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="txtSubsidio" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#FF3300" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarOtros" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ChCompensacionSaldosAFavor" runat="server" AutoPostBack="True" CssClass="page2" OnCheckedChanged="ChCompensacionSaldosAFavor_CheckedChanged" Text="CompensacionSaldosAFavor" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                </tr>
                            </table>
                            <uc:UCOtrosPagos ID="UCOtrosPagos" runat="server" />
                            <br />
                            <asp:Button ID="AgregarOtros" runat="server" class="btn btn-primary" OnClick="AgregarOtros_Click" Text="Agregar Otros Pagos" ValidationGroup="AgregarOtros" />
                            
                            <asp:GridView ID="GvOtrosPagos" runat="server" AutoGenerateColumns="False" CssClass="page1" onrowcommand="GvOtrosPagos_RowCommand" ShowHeaderWhenEmpty="True" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="Clave" HeaderText="Clave">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TipoOtroPago" HeaderText="Tipo Otro Pago">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Concepto" HeaderText="Concepto">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Importe" DataFormatString="{0:C}" HeaderText="Importe" />
                                    <asp:BoundField DataField="SubsidioCausado" DataFormatString="{0:C}" HeaderText="Subsidio Causado" />
                                    <asp:BoundField DataField="SaldoAFavor" DataFormatString="{0:C}" HeaderText="Saldo A Favor" />
                                    <asp:BoundField DataField="RemanenteSalFav" DataFormatString="{0:C}" HeaderText="RemanenteSalFav" />
                                    <asp:BoundField DataField="Año" HeaderText="Año">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:ButtonField CommandName="Eliminar" HeaderText="Eliminar" Text="Eliminar" />
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="TabPanel2" runat="server" CssClass="page3" HeaderText="Incapacidades" Visible="true">
                        <ContentTemplate>
                            <table align="center">
                                <tr>
                                    <td class="auto-style118">DiasIncapacidad</td>
                                    <td class="auto-style119">
                                        <asp:TextBox ID="txtDiasIncapacidad" runat="server" CssClass="form-control2"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender12" runat="server" BehaviorID="_content_FilteredTextBoxExtender12" FilterType="Numbers" TargetControlID="txtDiasIncapacidad" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style118">TipoIncapacidad</td>
                                    <td class="auto-style119">
                                        <asp:DropDownList ID="ddlTipoIncapacidad" runat="server" style="margin-left: 0px" CssClass="form-control2">
                                            <asp:ListItem Text="Riesgo de trabajo" Value="01" />
                                            <asp:ListItem Text="Enfermedad en general" Value="02" />
                                            <asp:ListItem Text="Maternidad" Value="03" />
                                              <asp:ListItem Text="Licencia por cuidados médicos de hijos diagnosticados con cáncer" Value="04" />
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style118">ImporteMonetario</td>
                                    <td class="auto-style119">
                                        <asp:TextBox ID="txtImporteMonetario" runat="server"  CssClass="form-control2"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender11" runat="server" BehaviorID="_content_FilteredTextBoxExtender3" FilterType="Custom, Numbers" TargetControlID="txtImporteMonetario" ValidChars="." />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="txtImporteMonetario" Display="Dynamic" ErrorMessage="Dato invalido" ForeColor="#FF3300" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarIncapacidad" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnAgregarIncapacidad" runat="server" class="btn btn-primary" OnClick="btnAgregarIncapacidad_Click" Text="Agregar Incapacidad" ValidationGroup="AgregarIncapacidad" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:GridView ID="GridIncapacidad" runat="server" AutoGenerateColumns="False" CssClass="page7" OnRowCommand="GridIncapacidad_RowCommand" ShowHeaderWhenEmpty="True" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="DiasIncapacidad" HeaderText="Dias Incapacidad">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TipoIncapacidad" HeaderText="Tipo Incapacidad">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ImporteMonetario" DataFormatString="{0:C}" HeaderText="ImporteMonetario" />
                                    <asp:ButtonField CommandName="Eliminar" HeaderText="Eliminar" Text="Eliminar" />
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:TabPanel>
                </asp:TabContainer>
            </div>
            <br />
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="up1">
                <ProgressTemplate>
                    <div id="Background">
                    </div>
                    <div id="Progress">
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br></br>
                        CFDI en proceso ..
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
         <div style="float:left">
            <asp:Label ID="lblError" runat="server" ForeColor="Red" />
             </div>
            <div style="float: right">
                <table style="text-align:right;">
                    <tr class="auto-style162">
                        <td>Percepciones</td>
                        <td>
                            <asp:Label ID="lblTotalPercepciones" runat="server">$0.00</asp:Label>
                        </td>
                    </tr>
                    <tr class="auto-style162">
                        <td>Deducciones</td>
                        <td>
                            <asp:Label ID="lblTotalDeducciones" runat="server">$0.00</asp:Label>
                        </td>
                    </tr>
                    <tr class="auto-style162">
                        <td>OtrosPagos</td>
                        <td>
                            <asp:Label ID="lblTotalOtrosPagos" runat="server">$0.00</asp:Label>
                        </td>
                    </tr>
                    <tr class="auto-style162">
                        <td>Total</td>
                        <td>
                            <asp:Label ID="lblTotal" runat="server">$0.00</asp:Label>
                        </td>
                    </tr>
                </table>
                <td></td>
            </div>
            <div style="clear: both">
            </div>
            <p align="right">
                <asp:Button ID="btnLimpiar" runat="server" class="btn btn-primary" onclick="btnLimpiar_Click" Text="Limpiar" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnVistaPrevia" runat="server" class="btn btn-primary" onclick="btnGenerarPreview_Click" Text="Vista Previa" ValidationGroup="CrearFactura" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnGenerarFactura" runat="server" class="btn btn-primary" onclick="btnGenerarFactura_Click" Text="Generar Recibo" ValidationGroup="CrearFactura" />
                <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Confirma que deseas generar el comprobante" TargetControlID="btnGenerarFactura" />
            </p>
            <asp:ModalPopupExtender ID="mpeBuscarConcepto" runat="server" BackgroundCssClass="mpeBack" CancelControlID="btnCerrarConcepto" PopupControlID="pnlBuscarConcepto" TargetControlID="btnConceptoDummy" />
            <asp:Panel ID="pnlBuscarConcepto" runat="server" BackColor="White" style="text-align: center;" Width="800px">
                <h1>
                    <asp:Label ID="lblAgregar" runat="server" Text="Agregar"></asp:Label>
                </h1>
                <p>
                    <table>
                        <tr id="tdDeduccion2" runat="server" style="margin-left: 10px">
                            <td class="auto-style175" style="text-align: right">* Tipo Deducción</td>
                            <td style="width: 40%;text-align: left">
                                <asp:DropDownList ID="ddlDeduccion" runat="server" CssClass="form-control0" style="margin-left: 0px">
                                    <asp:ListItem Text="Seguridad social" Value="001" />
                                    <asp:ListItem Text="ISR" Value="002" />
                                    <asp:ListItem Text="Aportaciones a retiro, cesantía en edad avanzada y vejez. " Value="003" />
                                    <asp:ListItem Text="Otros " Value="004" />
                                    <asp:ListItem Text="Aportaciones a Fondo de vivienda " Value="005" />
                                    <asp:ListItem Text="Descuento por incapacidad" Value="006" />
                                    <asp:ListItem Text="Pensión alimenticia" Value="007" />
                                    <asp:ListItem Text="Renta" Value="008" />
                                    <asp:ListItem Text="Préstamos provenientes del Fondo Nacional de la Vivienda para los Trabajadores" Value="009" />
                                    <asp:ListItem Text="Pago por crédito de vivienda" Value="010" />
                                    <asp:ListItem Text="Pago de abonos INFONACOT" Value="011" />
                                    <asp:ListItem Text="Anticipo de salarios" Value="012" />
                                    <asp:ListItem Text="Pagos hechos con exceso al trabajador" Value="013" />
                                    <asp:ListItem Text="Errores" Value="014" />
                                    <asp:ListItem Text="Pérdidas" Value="015" />
                                    <asp:ListItem Text="Averías" Value="016" />
                                    <asp:ListItem Text="Adquisición de artículos producidos por la empresa o establecimiento " Value="017" />
                                    <asp:ListItem Text="Cuotas para la constitución y fomento de sociedades cooperativas y de cajas de ahorro" Value="018" />
                                    <asp:ListItem Text="Cuotas sindicales" Value="019" />
                                    <asp:ListItem Text="Ausencia (Ausentismo)" Value="020" />
                                    <asp:ListItem Text="Cuotas obrero patronales" Value="021" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr id="trPercepcion" runat="server" class="page2">
                            <td class="auto-style177">* Tipo Percepción</td>
                            <td style="width: 40%;text-align: left">
                                <asp:DropDownList ID="ddlPercepcion2" runat="server" CssClass="form-control0" style="margin-left: 0px">
                                    <asp:ListItem Text="Sueldos, Salarios  Rayas y Jornales " Value="001" />
                                    <asp:ListItem Text="Gratificación Anual (Aguinaldo) " Value="002" />
                                    <asp:ListItem Text="Participación de los Trabajadores en las Utilidades PTU " Value="003" />
                                    <asp:ListItem Text="Reembolso de Gastos Médicos Dentales y Hospitalarios " Value="004" />
                                    <asp:ListItem Text="Fondo de Ahorro " Value="005" />
                                    <asp:ListItem Text="Caja de ahorro " Value="006" />
                                    <asp:ListItem Text="Contribuciones a Cargo del Trabajador Pagadas por el Patrón " Value="009" />
                                    <asp:ListItem Text="Premios por puntualidad " Value="010" />
                                    <asp:ListItem Text="Prima de Seguro de vida " Value="011" />
                                    <asp:ListItem Text="Seguro de Gastos Médicos Mayores " Value="012" />
                                    <asp:ListItem Text="Cuotas Sindicales Pagadas por el Patrón " Value="013" />
                                    <asp:ListItem Text="Subsidios por incapacidad " Value="014" />
                                    <asp:ListItem Text="Becas para trabajadores y/o hijos " Value="015" />
                                    <asp:ListItem Text="Horas extra " Value="019" />
                                    <asp:ListItem Text="Prima dominical " Value="020" />
                                    <asp:ListItem Text="Prima vacacional " Value="021" />
                                    <asp:ListItem Text="Prima por antigüedad " Value="022" />
                                    <asp:ListItem Text="Pagos por separación " Value="023" />
                                    <asp:ListItem Text="Seguro de retiro " Value="024" />
                                    <asp:ListItem Text="Indemnizaciones " Value="025" />
                                    <asp:ListItem Text="Reembolso por funeral " Value="026" />
                                    <asp:ListItem Text="Cuotas de seguridad social pagadas por el patrón " Value="027" />
                                    <asp:ListItem Text="Comisiones " Value="028" />
                                    <asp:ListItem Text="Vales de despensa " Value="029" />
                                    <asp:ListItem Text="Vales de restaurante " Value="030" />
                                    <asp:ListItem Text="Vales de gasolina " Value="031" />
                                    <asp:ListItem Text="Vales de ropa " Value="032" />
                                    <asp:ListItem Text="Ayuda para renta " Value="033" />
                                    <asp:ListItem Text="Ayuda para artículos escolares " Value="034" />
                                    <asp:ListItem Text="Ayuda para anteojos " Value="035" />
                                    <asp:ListItem Text="Ayuda para transporte " Value="036" />
                                    <asp:ListItem Text="Ayuda para gastos de funeral " Value="037" />
                                    <asp:ListItem Text="Otros ingresos por salarios " Value="038" />
                                    <asp:ListItem Text="Jubilaciones, pensiones o haberes de retiro " Value="039" />
                                    <asp:ListItem Text="Jubilaciones, pensiones o haberes de retiro en parcialidades " Value="044" />
                                    <asp:ListItem Text="Ingresos en acciones o títulos valor que representan bienes " Value="045" />
                                    <asp:ListItem Text="Ingresos asimilados a salarios " Value="046" />
                                    <asp:ListItem Text="Alimentación " Value="047" />
                                    <asp:ListItem Text="Habitación " Value="048" />
                                    <asp:ListItem Text="Premios por asistencia " Value="049" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style177" style="text-align: right">* Importe Gravado</td>
                            <td style="width: 40%;text-align: left">
                                <asp:TextBox ID="txtImporteGravado2" runat="server" CssClass="form-control0" Display="Dynamic" ValidationGroup="agregar"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtImporteGravado2" ErrorMessage="Campo Obligatorio" ValidationGroup="agregar"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style177" style="text-align: right">* Importe Excento</td>
                            <td style="width: 40%;text-align: left">
                                <asp:TextBox ID="txtImporteExcento2" runat="server" CssClass="form-control0" Display="Dynamic" ValidationGroup="agregar"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtImporteExcento2" ErrorMessage="Campo Obligatorio" ValidationGroup="agregar"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                    <div>
                        <asp:Label ID="lblErrorPercepcion" runat="server"></asp:Label>
                    </div>
                    <br/>
                    <%--<asp:Button runat="server" ID="btnSeleccionarConcepto" Text="Seleccionar" onclick="btnSeleccionarConcepto_Click" />&nbsp;&nbsp;--%>
                    <div align="right">
                        <asp:Button ID="btnCerrarConcepto" runat="server" class="btn btn-primary" OnClick="btnCerrarConcepto_Click" Text="Cancelar" />
                        <asp:Button ID="btnAceptar" runat="server" class="btn btn-primary" onclick="btnAceptar_Click" Text="Aceptar" ValidationGroup="agregar" />
                    </div>
                    <br />
                    <p>
                    </p>
                </p>
            </asp:Panel><asp:Button runat="server" ID="btnConceptoDummy" Style="display: none;" />

            <asp:ModalPopupExtender runat="server" ID="mpeCFDIG" TargetControlID="btngenerarDummy"
        BackgroundCssClass="mpeBack"  PopupControlID="pnlMSG" />

 <asp:ModalPopupExtender runat="server" ID="mpeSellos" TargetControlID="btnSelloDummy" 
        BackgroundCssClass="mpeBack"  PopupControlID="pnlSello" />
    <asp:Panel runat="server" ID="pnlSello" Style="text-align: center;"  CssClass="page3"
        BackColor="#A8CF38" Height="165px" Width="418px">
        <br />
        <asp:Label runat="server" ID="Label5" Text="¡Importante!" Visible="True" class="style161" style="color: #000000"/>
        <br />
        <asp:Label runat="server" ID="LblDiasSello" Text="Su sello caduca en x dias" Visible="True" class="style161" style="color: #000000" Height="50px"/>
        <br />
        <asp:Label runat="server" ID="lblpop" Text="Seleccione otra empresa" Visible="false" class="style161" style="color: #000000"/>
        <br />
        <asp:DropDownList runat="server" ID="ddlEmpresaE" AutoPostBack="false" CssClass="page3"
            DataTextField="RazonSocial" DataValueField="idEmpresa" OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged" Visible="false"/>
        <br />
        <br />
        <asp:Button runat="server" ID="btclose" Text="Aceptar"  class="btn btn-primary"  OnClick="btclose_Click"/>
    </asp:Panel>
    <asp:Button runat="server" ID="btnSelloDummy" Style="display: none;" />


    <asp:Panel runat="server" ID="pnlMSG" Style="text-align: center;"  CssClass="page3"
        BackColor="#A8CF38" Height="98px" Width="418px" BorderStyle="Groove">
        <h1 class="style161" style="color: #000000">
            <strong>Comprobante generado correctamente y enviado por correo electrónico</strong></h1>
        <br />
        <%--<asp:Button runat="server" ID="btnSeleccionarConcepto" Text="Seleccionar" onclick="btnSeleccionarConcepto_Click" />&nbsp;&nbsp;--%>
        <asp:Button runat="server" ID="btnCerrar" Text="Aceptar"  class="btn btn-primary" OnClick="btnCerrar_Click" />

        &nbsp;<script type="text/javascript"> 

        

</script></asp:Panel>
    <asp:Button runat="server" ID="btngenerarDummy" Style="display: none;" />
 
	</ContentTemplate>
	<Triggers>
		<asp:PostBackTrigger ControlID="btnLimpiar" />
		
		<asp:PostBackTrigger ControlID="BtnVistaPrevia"/>
       
        
	</Triggers>




        
    </asp:UpdatePanel>
    
       <!-- PopupAdvertencia -->

    <asp:Panel runat="server" ID="warningPopup" style="display: none;" CssClass="modalPopup" Font-Names ="Arial " HorizontalAlign="Center" >
    <div class="orderLabel">
        <h1>Advertencia</h1>
        Tu sesión está a punto de expirar debido a inactividad.
        <br /><br />

    <input id="btnWarningOK" type="button" value="Click para continuar." onclick="HideIddleWarning()" />
    </div>
    </asp:Panel>

    <asp:ModalPopupExtender ID="warningMPE" runat="server"
    TargetControlID="dummyLink" PopupControlID="warningPopup"
    BehaviorID="warningMPE" BackgroundCssClass="modalBackground" />
    <asp:HyperLink ID="dummyLink" runat="server" NavigateUrl="#"></asp:HyperLink>

    <!-- *************************************************************************** -->

   
    <!-- Cerrar sesion --> 
    <asp:Panel runat="server" ID="popupcerrar" style="display: none;" CssClass="modalPopup">
    <div class="orderLabel">
        La sesión ha expirado.
    <br /><br />
    <input id="btncerrar" type="button" value="Entendido" onclick="HideIddleWarning2()"  />
    </div>
    </asp:Panel>

    <asp:ModalPopupExtender ID="cerrar" runat="server"
    TargetControlID="HyperLink" PopupControlID="popupcerrar"
    BehaviorID="warningMPE2" BackgroundCssClass="modalBackground" />
    <asp:HyperLink ID="HyperLink" runat="server" NavigateUrl="#"></asp:HyperLink>


    <!---- **************************************************************** ---->

     
 
<!-- script inactividad -->

<script type="text/javascript">
 
    //localizar timers
    var iddleTimeoutWarning = null;
    var iddleTimeout = null;
 
    //esta funcion automaticamente sera llamada por ASP.NET AJAX cuando la pagina cargue y un postback parcial complete
    function pageLoad() {
 
        //borrar antiguos timers de postbacks anteriores
        if (iddleTimeoutWarning != null)
            clearTimeout(iddleTimeoutWarning);
        if (iddleTimeout != null)
            clearTimeout(iddleTimeout);
 
        //leer tiempos desde web.config
        var millisecTimeOutWarning = <%= int.Parse(System.Configuration.ConfigurationManager.AppSettings["SessionTimeoutWarning"]) * 60 * 1000 %>;
        var millisecTimeOut = <%= int.Parse(System.Configuration.ConfigurationManager.AppSettings["SessionTimeout"]) * 60 * 1000 %>;
 
        //establece tiempo para mostrar advertencia si el usuario ha estado inactivo
        iddleTimeoutWarning = setTimeout("DisplayIddleWarning()", millisecTimeOutWarning);
        iddleTimeout = setTimeout("TimeoutPage()", millisecTimeOut);
    }
 
    function TimeoutPage() {
        $find('warningMPE2').show(); 
        this.SessionAbandon();
    }
 
    function DisplayIddleWarning() {
        $find('warningMPE').show();
    }
 
    function HideIddleWarning() {
        $find('warningMPE').hide();
    }

    function HideIddleWarning2() {
          
        $find('warningMPE2').hide();
         
        
        
    }
 
</script>
    

</asp:Content>

