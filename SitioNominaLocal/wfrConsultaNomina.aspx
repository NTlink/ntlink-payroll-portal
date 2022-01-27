<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrConsultaNomina.aspx.cs" Inherits="GafLookPaid.wfrConsultaNomina" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
	.mpeBack
	{
		background-color: Gray;
		filter: alpha(opacity=70);
		opacity: 0.7;
	}
	    .auto-style1 {
            text-align: center;
        }
	    .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            color: #800000;
        }
	</style>
	<h1>Reporte de CFDI</h1>
	<p>
		<asp:Label runat="server" ID="lblError" ForeColor="Red" />
	</p>
    <p class="auto-style2">
        <a href="https://portalcfdi.facturaelectronica.sat.gob.mx" target="_blank" class="auto-style3">Sitio de cancelación del SAT</a><span class="auto-style3"> </span>
    </p>
	
    
	<div style="clear: both"></div>
	<table>
		<tr>
            <td>Empresa:</td>
            <td style="text-align: left">
                <asp:DropDownList runat="server" ID="ddlEmpresas" AutoPostBack="true" DataTextField="RazonSocial"
		DataValueField="idEmpresa" onselectedindexchanged="ddlEmpresas_SelectedIndexChanged" style="margin-left: 19px" /></td>
		</tr>	<tr>
                <td>Fecha Inicial:</td>
			<td>
				<asp:TextBox runat="server" ID="txtFechaInicial" Width="75px" CssClass="form-control2" />
				<asp:CompareValidator runat="server" ID="cvFechaInicial" ControlToValidate="txtFechaInicial" Display="Dynamic" 
				 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" />
				<asp:CalendarExtender runat="server" ID="ceFechaInicial" Animated="False" PopupButtonID="txtFechaInicial" TargetControlID="txtFechaInicial" Format="dd/MM/yyyy" />
			</td>
			<td>Fecha Final:</td>
			<td>
				<asp:TextBox runat="server" ID="txtFechaFinal"  CssClass="form-control2"/>
				<asp:CompareValidator runat="server" ID="cvFechaFinal" ControlToValidate="txtFechaFinal" Display="Dynamic" 
				 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" />
				<asp:CalendarExtender runat="server" ID="ceFechaFinal" Animated="False" PopupButtonID="txtFechaFinal" TargetControlID="txtFechaFinal" Format="dd/MM/yyyy" />
			</td>
			<td />
		</tr>
		<tr>
			<td>Empleados:</td>
			<td><asp:DropDownList runat="server" ID="ddlClientes" AppendDataBoundItems="True"  CssClass="form-control2" DataTextField="NombreCompleto"
			 DataValueField="idCliente" Width="400px" style="margin-left: 0px" /></td>
			<td>Texto:</td>
			<td><asp:TextBox runat="server" ID="txtTexto" CssClass="form-control2"/></td>
			<td />
		</tr>
		<tr>
			<td />
			<td>
				<asp:RadioButtonList RepeatDirection="Horizontal" ID="rbStatus" runat="server" Width="239px">
					<asp:ListItem Text="Todas" Value="Todos" Selected="True"/>
				    <asp:ListItem Text="Canceladas" Value="Cancelado"/>
				
				</asp:RadioButtonList>

			</td>
			<td />
			<td style="text-align: right;"><asp:Button runat="server" class="btn btn-primary" ID="btnBuscar" Text="Buscar" 
			 onclick="btnBuscar_Click" /></td>
			<td><asp:Button runat="server" ID="btnExportar" class="btn btn-primary" Text="Exportar Excel" onclick="btnExportar_Click" /></td>
		</tr>
	</table><br />
	<asp:GridView ShowFooter="True" runat="server" ID="gvFacturas" AutoGenerateColumns="False" DataKeyNames="Guid,IdCliente,idventa"
		onrowcommand="gvFacturas_RowCommand" AllowPaging="True" PageSize="6" Width="97%" CssClass="page2" class="btn btn-primary"
		onpageindexchanging="gvFacturas_PageIndexChanging" 
		onrowdatabound="gvFacturas_RowDataBound" OnPreRender="gvFacturas_PreRender">
		<PagerSettings Position="Bottom" Visible="true" />
	    <FooterStyle BackColor="GreenYellow" Font-Bold="True" />
		<Columns>
			<asp:BoundField HeaderText="Folio" DataField="folio" />
			<asp:BoundField HeaderText="Folio Fiscal" DataField="Guid" />
			<asp:BoundField HeaderText="Fecha" DataField="fecha" DataFormatString="{0:d}" />
			<asp:BoundField HeaderText="Empleado" DataField="NombreCompleto" />
            <asp:BoundField HeaderText="RFC" DataField="Rfc" />
			<asp:BoundField HeaderText="SubTotal" DataField="Subtotal" 
                DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Right" >
<ItemStyle HorizontalAlign="left"></ItemStyle>
            </asp:BoundField>
			<asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:C}" 
                ItemStyle-HorizontalAlign="left" >
<ItemStyle HorizontalAlign="left"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Usuario" DataField="Usuario"/>
			<asp:BoundField HeaderText="Status" DataField="StatusFactura"/>
			<asp:ButtonField ButtonType="Link" Text="XML" CommandName="DescargarXml" />
			<asp:ButtonField ButtonType="Link" Text="PDF" CommandName="DescargarPdf" />
			<asp:ButtonField ButtonType="Link" Text="Enviar Email" CommandName="EnviarEmail" />
            <asp:TemplateField  HeaderText="Cancelar">
                <ItemTemplate>
                    <asp:Button runat="server" Text='<%# (short)Eval("Cancelado") == 1 ? "Acuse Cancelacion" : "Cancelar"  %>'  CommandName='<%# (short)Eval("Cancelado") == 1 ? "Acuse" : "Cancelar"  %>' ID="btnCancelarf" CommandArgument='<%#Eval("idventa") %>' />
<%--                    <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="btnCancelarf" ConfirmText="¿Cancelar Documento?" Enabled='<%# (short)Eval("Cancelado") != 1  %>' />--%>
                </ItemTemplate>
            </asp:TemplateField>
		</Columns>
	</asp:GridView> 
   
	<asp:GridView ID="gvFacturaCustumer" Visible="False" runat="server" AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField DataField="folio" HeaderText="Folio" />
            <asp:BoundField DataField="Guid" HeaderText="Folio Fiscal" />
            <asp:BoundField DataField="fecha" DataFormatString="{0:d}" HeaderText="Fecha" />
            <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
            <asp:BoundField DataField="Rfc" HeaderText="RFC" />
            <asp:BoundField DataField="PorcentajeIva" DataFormatString="{0:F2}" 
                HeaderText="% I.V.A." />
            <asp:BoundField DataField="Subtotal" DataFormatString="{0:C}" 
                HeaderText="SubTotal" />
            <asp:BoundField DataField="IVA" DataFormatString="{0:C}" HeaderText="I.V.A." />
            <asp:BoundField DataField="Total" DataFormatString="{0:C}" HeaderText="Total" />
            <asp:BoundField DataField="Usuario" HeaderText="Usuario" />
            <asp:BoundField DataField="StatusFactura" HeaderText="Status" />
        </Columns>
    </asp:GridView>
    <br />
   
	<asp:ModalPopupExtender runat="server" ID="mpePagar" TargetControlID="btnpagarDummy" BackgroundCssClass="mpeBack"
	 CancelControlID="btnCerrarPagar" PopupControlID="pnlPagar" />
	<asp:Panel runat="server" ID="pnlPagar" CssClass="ventana" BackColor="#DDDDDD" Width="600px" style="text-align: center;">
		<h1>Pagar Factura</h1>
		<asp:Label runat="server" ID="lblIdventa" Visible="False" />
		<asp:Label runat="server" ID="lblErrorPago" ForeColor="Red" />
	    No. de Folio: <asp:Label runat="server" ID="lblFolioPago" />
		<p class="auto-style1">
			Fecha Pago: <asp:TextBox runat="server" ID="txtFechaPago" CssClass="form-control2" Text='<%# ServicioLocalContract.AzureUtils.ConvertDateTimeFromUTCToMx(DateTime.UtcNow) %>' />
			<asp:CompareValidator runat="server" ID="cvFechaPago" ControlToValidate="txtFechaPago" Display="Dynamic" 
			 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" ValidationGroup="Pago" />
			<asp:CalendarExtender runat="server" ID="ceFechaPago" TargetControlID="txtFechaPago" PopupButtonID="txtFechaPago" Format="dd/MM/yyyy" />
			<asp:RequiredFieldValidator runat="server" ID="rfvFechaPago" ErrorMessage="* Requerido" ControlToValidate="txtFechaPago"
			 ValidationGroup="Pago" Display="Dynamic"/>
		</p>
		<p>
			Referencia: <asp:TextBox runat="server" ID="txtReferenciaPago" Width="300px" CssClass="form-control2" />
			<asp:RequiredFieldValidator runat="server" ID="rfvReferenciaPago" ErrorMessage="* Requerido"
			 ControlToValidate="txtReferenciaPago" ValidationGroup="Pago" Display="Dynamic"/>
		</p>
		<asp:Button runat="server" ID="btnPagar" class="btn btn-primary" Text="Pagar" onclick="btnPagar_Click" ValidationGroup="Pago" />&nbsp;&nbsp;
		<asp:Button runat="server" ID="btnCerrarPagar" class="btn btn-primary" Text="Cancelar" 
            onclick="btnCerrarPagar_Click" />
		<br /><br />
	</asp:Panel>

          <asp:ModalPopupExtender runat="server" ID="mpeCancelar" TargetControlID="btnCancelarDummy" BackgroundCssClass="mpeBack"
	 CancelControlID="btnCerrarCancelar" PopupControlID="pnlCancelar" />
	<asp:Panel runat="server" ID="pnlCancelar" style="text-align: center;" CssClass="page3"  BackColor="White">
		<h1>Cancelar CFDI</h1>
		 <asp:UpdatePanel ID="up11" runat="server"  UpdateMode="Conditional" >
    <ContentTemplate>
    
        <table class="table" align="center">
         <tr>
		<td>
        	Motivo: <asp:Label runat="server" ID="txtMotivo" />
             <asp:DropDownList runat="server" ID="ddlMotivo" style="margin-left: 0px" AutoPostBack="True"  onselectedindexchanged="ddlMotivo_SelectedIndexChanged"
              CssClass="form-control2"  Width="250px">
                         <asp:ListItem runat="server" Value="01" Text="Comprobante emitido con errores con relación" ></asp:ListItem>
                         <asp:ListItem runat="server" Value="02" Text="Comprobante emitido con errores sin relación" ></asp:ListItem>
                         <asp:ListItem runat="server" Value="03" Text="No se llevó a cabo la operación" ></asp:ListItem>
                         <asp:ListItem runat="server" Value="04" Text="Operación nominativa relacionada en la factura global" ></asp:ListItem>
                    </asp:DropDownList>   
		</td>
        </tr>
		
			<tr>
        <td>
			FolioSustituto:
			<asp:TextBox runat="server" ID="txtFolioSustituto" CssClass="form-control0" Width="90%" 
                 />
		</td>
		</tr>
        </table>
        </ContentTemplate>
          <Triggers>
                   <asp:AsyncPostBackTrigger ControlID="ddlMotivo" EventName="SelectedIndexChanged" /> 
   
     </Triggers>             
        </asp:UpdatePanel>
   
        <table class="table" align="center">

		<tr>
        <td><asp:Button runat="server" ID="btnCancelarSAT" Text="Cancelar" onclick="btnCancelarSAT_Click"  class="btn btn-primary"/>&nbsp;&nbsp;
		<asp:Button runat="server" ID="btnCerrarCancelar" Text="Salir" class="btn btn-primary"/>
        </td>
        </tr>
        </table>
	</asp:Panel>



	<asp:ModalPopupExtender runat="server" ID="mpeEmail" TargetControlID="btnEmailDummy" BackgroundCssClass="mpeBack"
	 CancelControlID="btnCerrarEmail" PopupControlID="pnlEmail" />
	<asp:Panel runat="server" ID="pnlEmail" style="text-align: center; margin-right: 6px;" CssClass="ventana" Width="598px" BackColor="#DDDDDD">
		<h1>Direcciones de envio</h1>
		<asp:Label runat="server" ID="lblGuid"  Visible="False" />
		<p>
			Se enviara a: <asp:Label runat="server" ID="lblEmailCliente" />
		</p>
		<p>
			Correos adicionales:
			<asp:TextBox runat="server" ID="txtEmails" Width="250px" CssClass="form-control2"/>&nbsp;&nbsp;&nbsp;
			<span style="font-size: 8pt;">Separados por comas</span>
		</p>
		<br />
		<asp:Button runat="server" ID="btnEnviarEmail" Text="Enviar" class="btn btn-primary" onclick="btnEnviarMail_Click" />&nbsp;&nbsp;
		<asp:Button runat="server" ID="btnCerrarEmail"  class="btn btn-primary" Text="Cancelar" />
	</asp:Panel>
	<asp:Button runat="server" ID="btnEmailDummy" style="display: none;"/>
	<asp:Button runat="server" ID="btnPagarDummy" style="display: none;"/>
      	<asp:Button runat="server" ID="btnCancelarDummy" style="display: none;" class="btn btn-primary"/>
 

</asp:Content>