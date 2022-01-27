<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PercepcionesTotales.ascx.cs" Inherits="SitioNominaLocal.controles.PercepcionesTotales" %>
 <table>
                     
                    <tr>
                        <td >TotalSueldos</td>
                        <td class="auto-style8" >
                            <asp:TextBox ID="txtTotalSueldos" runat="server" Width="100px" Enabled="False"></asp:TextBox>

                               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtTotalSueldos" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtTotalSueldos" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                        </td>
                        <td>TotalSeparacionIndemnizacion</td>
                        <td>
                            <asp:TextBox ID="txtTotalSeparacionIndemnizacion" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                            
                               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtTotalSeparacionIndemnizacion" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" Display="Dynamic"
    ControlToValidate="txtTotalSeparacionIndemnizacion" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                        </td>
                    </tr>
                    <tr>
                        <td >TotalJubilacionPensionRetiro</td>
                        <td class="auto-style8" >
                            <asp:TextBox ID="txtTotalJubilacionPensionRetiro" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                            
                               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtTotalJubilacionPensionRetiro" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" Display="Dynamic"
    ControlToValidate="txtTotalJubilacionPensionRetiro" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                        </td>
                        <td >TotalGravado</td>
                        <td>
                            <asp:TextBox ID="txtTotalGravado" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtTotalGravado" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" Display="Dynamic"
    ControlToValidate="txtTotalGravado" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtTotalGravado" ValidationGroup="CrearFactura" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                
                        </td>

                    </tr>
                    <tr>
                        <td >TotalExento</td>
                        <td >
                            <asp:TextBox ID="txtTotalExento" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                             <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" 
            runat="server" FilterType="Numbers, Custom"
    ValidChars="." TargetControlID="txtTotalExento" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" Display="Dynamic"
    ControlToValidate="txtTotalExento" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="CrearFactura" ForeColor="#FF3300"/>
  
                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtTotalExento" ValidationGroup="CrearFactura" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                

                        </td>
                        <td >&nbsp;</td>
                        <td>
                            &nbsp;</td>

                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>

                    </tr>
            
                </table>