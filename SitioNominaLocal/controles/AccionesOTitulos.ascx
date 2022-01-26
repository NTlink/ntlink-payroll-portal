<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AccionesOTitulos.ascx.cs" Inherits="SitioNominaLocal.controles.AccionesOTitulos" %>
<style type="text/css">
    .auto-style1 {
        width: 13%;
        text-align: left;
    }
</style>
<table style="width:100%">  
<tr>
                     <td class="auto-style1"><asp:Label ID="lblValorMercado" runat="server" Text="* Valor Mercado" style="text-align: left"></asp:Label>
                     </td>
                    
                     <td style="width: 40%;text-align: left"><asp:TextBox ID="txtValorMercado" Display="Dynamic" ValidationGroup="AgregarPersepcion" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="AgregarPersepcion" ControlToValidate="txtValorMercado" ErrorMessage="Campo Obligatorio" runat="server" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                   
                               <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Custom, Numbers"
    ValidChars="." TargetControlID="txtValorMercado" BehaviorID="_content_FilteredTextBoxExtender2" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" Display="Dynamic"
    ControlToValidate="txtValorMercado" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarPersepcion" ForeColor="#FF3300"/>
  
                          </td>
                  

                </tr>
                <tr>
                     <td class="auto-style1"><asp:Label ID="lblPrecioAlOtorgarse" runat="server" Text="* Precio Al Otorgarse"></asp:Label></td>
                      <td style="width: 40%;text-align: left"><asp:TextBox ID="txtPrecioAlOtorgarse" Display="Dynamic" ValidationGroup="AgregarPersepcion" runat="server" style="margin-left: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="AgregarPersepcion" ControlToValidate="txtPrecioAlOtorgarse" ErrorMessage="Campo Obligatorio" runat="server" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                    
                          <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Custom, Numbers"
    ValidChars="." TargetControlID="txtPrecioAlOtorgarse" BehaviorID="_content_FilteredTextBoxExtender1" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtPrecioAlOtorgarse" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarPersepcion" ForeColor="#FF3300"/>
  
                      </td>
                </tr>
    </table>