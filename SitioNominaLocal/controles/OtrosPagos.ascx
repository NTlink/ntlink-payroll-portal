<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OtrosPagos.ascx.cs" Inherits="SitioNominaLocal.controles.OtrosPagos" %>
<table>
    <tr>
        <td>* SaldoAFavor</td>
        <td>
            <asp:TextBox ID="txtSaldoAFavor" runat="server"></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender10" runat="server" FilterType="Custom, Numbers"
    ValidChars="." TargetControlID="txtSaldoAFavor" BehaviorID="_content_FilteredTextBoxExtender3" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator11" runat="server" Display="Dynamic"
    ControlToValidate="txtSaldoAFavor" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarOtros" ForeColor="#FF3300"/>
  
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtSaldoAFavor" ValidationGroup="AgregarOtros" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            
        </td>
        <td>* Año</td>
        <td>
            <asp:TextBox ID="txtAno" runat="server"></asp:TextBox>
            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" 
            runat="server" FilterType="Numbers"
     TargetControlID="txtAno" />
                  <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtAno" ValidationGroup="AgregarOtros" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            

        </td>
    </tr>
    <tr>
        <td>* RemanenteSalFav</td>
        <td>
            <asp:TextBox ID="txtRemanenteSalFav" runat="server"></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Custom, Numbers"
    ValidChars="." TargetControlID="txtRemanenteSalFav" BehaviorID="_content_FilteredTextBoxExtender3" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Display="Dynamic"
    ControlToValidate="txtRemanenteSalFav" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?" ValidationGroup="AgregarOtros" ForeColor="#FF3300"/>
  
        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="Requerido" Display="Dynamic"
              ControlToValidate="txtRemanenteSalFav" ValidationGroup="AgregarOtros" ForeColor="#FF3300"></asp:RequiredFieldValidator>
     
        </td>
    </tr>
</table>
