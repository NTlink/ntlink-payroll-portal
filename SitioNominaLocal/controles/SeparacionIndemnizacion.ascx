<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SeparacionIndemnizacion.ascx.cs" Inherits="SitioNominaLocal.controles.SeparacionIndemnizacion" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<style type="text/css">
    .auto-style1 {
        text-align: left;
        width: 125px;
    }
    .auto-style2 {
        text-align: left;
        width: 151px;
    }
    .auto-style3 {
        width: 272px;
    }
</style>

<table style="width:100%">
    <tr>
                        <td class="auto-style2" >IngresoAcumulable</td>
                        <td style="text-align: left" class="auto-style3" >
                            <asp:TextBox ID="txtIngresoAcumulable" runat="server" Width="100px"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="txtIngresoAcumulable_FilteredTextBoxExtender" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtIngresoAcumulable" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" Display="Dynamic"
    ControlToValidate="txtIngresoAcumulable" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtIngresoAcumulable" ValidationGroup="CrearFactura" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                             </td>
                        <td class="auto-style1">IngresoNoAcumulable</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtIngresoNoAcumulable" runat="server" Width="100px"></asp:TextBox>
                                 <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtIngresoNoAcumulable" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtIngresoNoAcumulable" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtIngresoNoAcumulable" ValidationGroup="CrearFactura" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style2" >TotalPagado</td>
                        <td style="text-align: left" class="auto-style3">
                            <asp:TextBox ID="txtTotalPagado" runat="server" Width="100px"></asp:TextBox>
                                 <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtTotalPagado" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" Display="Dynamic"
    ControlToValidate="txtTotalPagado" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtTotalPagado" ValidationGroup="CrearFactura" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        
                        </td>
                        <td class="auto-style1" >NumAñosServicio</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtNumAñosServicio" runat="server" Width="100px"></asp:TextBox>
                              <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" 
            runat="server" FilterType="Numbers"
     TargetControlID="txtNumAñosServicio" />
      
                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtNumAñosServicio" ValidationGroup="CrearFactura" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style2" >UltimoSueldoMensOrd</td>
                        <td style="text-align: left" class="auto-style3">
                            <asp:TextBox ID="txtUltimoSueldoMensOrd" runat="server" Width="100px" ></asp:TextBox>
                             <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtUltimoSueldoMensOrd" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" Display="Dynamic"
    ControlToValidate="txtUltimoSueldoMensOrd" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtUltimoSueldoMensOrd" ValidationGroup="CrearFactura" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        
                        </td>
                        

                    </tr>
</table>
<hr width="100%" align="left"> 
