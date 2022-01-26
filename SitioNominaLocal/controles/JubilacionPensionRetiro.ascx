<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="JubilacionPensionRetiro.ascx.cs" Inherits="SitioNominaLocal.controles.JubilacionPensionRetiro" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>


<style type="text/css">
    .auto-style1 {
        text-align: left;
    }
    .auto-style2 {
        text-align: left;
        width: 136px;
    }
    .auto-style3 {
        width: 278px;
    }
    .auto-style4 {
        text-align: left;
        width: 278px;
    }
    .auto-style5 {
        text-align: left;
        width: 144px;
    }
</style>


<table style="width:100%" >
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
                        <td class="auto-style5">IngresoNoAcumulable</td>
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
                        <td class="auto-style2" >TotalUnaExhibicion</td>
                        <td class="auto-style4" style="text-align: left">
                            <asp:TextBox ID="txtTotalUnaExhibicion" runat="server" Width="100px"></asp:TextBox>
                                 <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtTotalUnaExhibicion" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" Display="Dynamic"
    ControlToValidate="txtTotalUnaExhibicion" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                        </td>
                        <td class="auto-style5" >TotalParcialidad</td>
                        <td class="auto-style1" style="text-align: left">
                            <asp:TextBox ID="txtTotalParcialidad" runat="server" Width="100px"></asp:TextBox>
                              <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtTotalParcialidad" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" Display="Dynamic"
    ControlToValidate="txtTotalParcialidad" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style2" >MontoDiario</td>
                        <td style="text-align: left" class="auto-style3">
                            <asp:TextBox ID="txtMontoDiario" runat="server" Width="100px" ></asp:TextBox>
                             <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtMontoDiario" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" Display="Dynamic"
    ControlToValidate="txtMontoDiario" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                        </td>
                        

                    </tr>
</table>
<hr width="100%" align="left"> 
