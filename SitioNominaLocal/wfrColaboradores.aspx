<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrColaboradores.aspx.cs" Inherits="GafLookPaid.wfrColaboradores" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />   
   
    
   
      
    <style type="text/css">
        .auto-style1 {
            width: 164px;
        }
        .auto-style2 {
            width: 121px;
        }
        .auto-style3 {
            width: 62px;
        }
        .auto-style5 {
            width: 284px;
        }
        .auto-style6 {
            width: 196px;
        }
        .auto-style7 {
            width: 276px;
        }
        .auto-style8 {
            width: 269px;
        }
        .auto-style9 {
            width: 153px;
        }
        .auto-style10 {
            width: 95px;
        }
        .page7 {
            text-align: left;
        }
    </style>
   
    
   
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function SeleccionaBanco() {
            var txt = document.getElementById('txtClabe');
            var cmb = document.getElementById('ddlBanco');
            
            try {
                cmb.value = txt.value.toString().substr(0, 3);
                if(cmb.selectedIndex == -1) {
                    cmb.value = '000';   
                }
            } catch(e) {

            } 

        }
    </script>
    <h1>Editar Empleado</h1>
    <p>
        <asp:Label runat="server" ID="lblError" ForeColor="Red" />
    </p>
       <asp:TabContainer runat="server"  CssClass="page7"  BorderStyle="Double"   ID="cfdTabContainer" Width="100%" 
        ActiveTabIndex="1" >
            <asp:TabPanel ID="tabGral" runat="server"  CssClass="page2" HeaderText="Datos del Empleado"><ContentTemplate>
<table class="table-bordered">
    <tr>
        <td class="auto-style8">Empresa Emisora de Recibos de Nómina:</td>
        <td>
            <asp:DropDownList runat="server" ID="ddlEmpresa" AppendDataBoundItems="True" DataTextField="RazonSocial" 
                                    DataValueField="IdEmpresa" style="margin-left: 0px" CssClass="form-control2" >
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="ddlEmpresa" 
                                ErrorMessage="Emisora de Recibos: Dato requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
   
    </asp:Table>
    <table class="table-bordered">
     <tr>
        <td class="auto-style1" style="color: #FF0000" >*Campos requeridos</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label59" runat="server" Text="* Número de Empleado:"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtNumEmpleado0" runat="server" Enabled="False" CssClass="form-control2"></asp:TextBox>
        </td>
    
        <td class="auto-style2">*RFC:</td>
        <td class="auto-style9">
            <asp:TextBox runat="server" ID="txtRFC" CssClass="form-control2" />
            
        </td>
          <td class="auto-style10">*CURP:</td>
        <td>
            <asp:TextBox runat="server" ID="txtCURP" MaxLength="24"  CssClass="form-control2"/>
            </td>
    </tr>

    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style6"></td>
         <td class="auto-style2"></td>
        <td class="auto-style9"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtRFC" ErrorMessage="RFC: Dato inválido" 
                                
                                
                                ValidationExpression="[A-Z,Ñ,&amp;amp;]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,0-9]?[A-Z,0-9]?[0-9,A-Z]?" 
                                SetFocusOnError="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtRFC" ErrorMessage="RFC: Campo requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
       
        <td class="auto-style10"></td>
         <td><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="txtCURP" ErrorMessage="CURP: Dato inválido" 
                                ValidationExpression="[A-Z][A,E,I,O,U,X][A-Z]{2}[0-9]{2}[0-1][0-9][0-3][0-9][M,H][A-Z]{2}[B,C,D,F,G,H,J,K,L,M,N,Ñ,P,Q,R,S,T,V,W,X,Y,Z]{3}[0-9,A-Z][0-9]" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtCURP" ErrorMessage="CURP: Campo requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>

   
    <tr>
        <td class="auto-style1">*Nombres:</td>
        <td class="auto-style6">
            <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control2" Width="170px"></asp:TextBox>
           
        </td>
        <td class="auto-style2">*Apellido Paterno</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtApellidoPaterno" runat="server" CssClass="form-control2" Width="170px"></asp:TextBox>
           
        </td>
         <td class="auto-style10" >*Apellido Materno:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td >
            <asp:TextBox runat="server" ID="txtApellidoMaterno" CssClass="form-control2" Width="170px" />
                </td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style6"> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtNombres" 
                                ErrorMessage="Nombres: Campo requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
        <td class="auto-style2"></td>
        <td class="auto-style9"> <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                ControlToValidate="txtApellidoPaterno" 
                                ErrorMessage="Apellido paterno: Campo requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
    
    <td class="auto-style10"></td>

          <td>    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                ControlToValidate="txtApellidoMaterno" 
                                ErrorMessage="Apellido materno: Campo requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
    </tr>

    
    <tr>
        <td class="auto-style1">*Email:</td>
        <td class="auto-style6">
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control2" Width="170px" />
           
        </td>
        <td class="auto-style2">Bcc:</td>
        <td style="margin-left: 40px" class="auto-style9">
            <asp:TextBox ID="txtBcc" runat="server" CssClass="form-control2" Width="170px"></asp:TextBox></td>
    </tr>

    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style6"> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="Email: Dato inválido" 
                                ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="Email: Campo requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
   
       <td class="auto-style2"></td>
         <td class="auto-style9"> <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="txtBcc" ErrorMessage="BCC:  Dato inválido" 
                                ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="#FF3300"></asp:RegularExpressionValidator></td>
         </tr>

   
    <tr>
        <td colspan="2"><hr width="100%" align="left"> </td>

    </tr>
    <tr>
        <td style="text-align: right" class="auto-style1">RfcLabora</td>
        <td class="auto-style6">
            <asp:TextBox ID="txtRfcLabora" runat="server" CssClass="form-control2" Width="170px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                ControlToValidate="txtRfcLabora" ErrorMessage="RfcLabora: Dato inválido" 
                                ValidationExpression="[A-Z&amp;Ñ]{3,4}[0-9]{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[01])[A-Z0-9]{2}[0-9A]" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ValidationGroup="AgregarSubContratacion"
                                ControlToValidate="txtRfcLabora" ErrorMessage="RfcLabora: Campo requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    
        </td>
    
        <td style="text-align: right" class="auto-style2">PorcentajeTiempo</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtPorcentajeTiempo" runat="server" CssClass="form-control2"></asp:TextBox>

              <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender11" runat="server" FilterType="Custom, Numbers"
    ValidChars="." TargetControlID="txtPorcentajeTiempo" BehaviorID="_content_FilteredTextBoxExtender3" />
    <asp:RegularExpressionValidator id="RegularExpressionValidator12" runat="server" Display="Dynamic"
    ControlToValidate="txtPorcentajeTiempo" ErrorMessage="Dato invalido" ValidationExpression="\d+\.?\d?\d?\d?" ValidationGroup="AgregarSubContratacion" ForeColor="#FF3300"/>
  
        </td>
  
        <td colspan="2">
    <asp:Button runat="server" Text="Agregar SubContratacion" ID="btnAgregarSubContratacion" ValidationGroup="AgregarSubContratacion" OnClick="btnAgregarSubContratacion_Click" class="btn btn-primary" Width="185px"/>
          <br />
            </table>
                <table>
              <asp:GridView runat="server" ID="GridSubContratacion" AutoGenerateColumns="False" CssClass="page3"
			Width="100%" ShowHeaderWhenEmpty="True" OnRowCommand="GridSubContratacion_RowCommand" >
			<Columns>
				<asp:BoundField HeaderText="RfcLabora" DataField="RfcLabora" >
				<ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
				<asp:BoundField HeaderText="PorcentajeTiempo" DataField="PorcentajeTiempo" DataFormatString="{0:C}" />
				  <asp:ButtonField Text="Eliminar" CommandName="Eliminar" HeaderText="Eliminar"/>
			</Columns>
		</asp:GridView>
            </td>
        </tr>

    <tr>
        <td class="auto-style3">
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#FF3300"></asp:ValidationSummary>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</ContentTemplate>
</asp:TabPanel>
    
            <asp:TabPanel ID="TabPanel1" runat="server"  CssClass="page2"   HeaderText="Datos Nómina"><ContentTemplate>
<asp:UpdatePanel ID="UpdatePanel1"     runat="server"><ContentTemplate>
        <table>
            <tr>    <td>
                    <h3>
                        <asp:Label ID="Label58" runat="server"  Text="Datos de Nómina"></asp:Label>
                    </h3>
                </td>
            </tr>
          
       </table> 
    <table class="table-hover" >
              <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label10" runat="server" Text="*Número de Empleado:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNumEmpleado" runat="server" Enabled="False" CssClass="form-control2"></asp:TextBox>
                    
                    <asp:Label ID="lblNumEmpleado" runat="server" ForeColor="Red"></asp:Label>
                </td>
         
                <td style="text-align: right">
                    <asp:Label ID="Label13" runat="server" Text="NSS:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNumSeguridadSocial" runat="server" MaxLength="15" CssClass="form-control2"></asp:TextBox>
                 
                </td>
                 <td style="text-align: right">
                    <asp:Label ID="Label15" runat="server" Text="CLABE:"></asp:Label>
                </td>
                <td  >
                    <asp:TextBox ID="txtClabe" runat="server" CssClass="form-control2"
                        onchange="SeleccionaBanco()"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td></td>
                <td>   
                    <asp:Label ID="lblNumSeguridadSocial" runat="server" ForeColor="Red"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                        ControlToValidate="txtNumSeguridadSocial" 
                        ErrorMessage="Dato inválido" 
                        ValidationExpression="[0-9]{1,15}" ForeColor="#FF3300"></asp:RegularExpressionValidator>

                </td>
                <td></td>
                <td><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtClabe" ErrorMessage="Dato inválido" 
                        ValidationExpression="[0-9]{10,18}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                                        <asp:Label ID="lblClabe" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>

            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label17" runat="server" Text="*Fecha inicio laboral:"></asp:Label>
                </td>
                <td class="auto-style5" >
                    <asp:TextBox ID="txtFechaInicialLaboral" runat="server" CssClass="form-control2"></asp:TextBox>
                     <asp:CompareValidator runat="server" ID="cvFechaInicial" 
                    ControlToValidate="txtFechaInicialLaboral" Display="Dynamic" 
				 ErrorMessage="* Fecha Invalida" Operator="DataTypeCheck" Type="Date" />
				<asp:CalendarExtender runat="server" ID="ceFechaInicial" Animated="False"
                    PopupButtonID="txtFechaInicialLaboral" TargetControlID="txtFechaInicialLaboral" Format="yyyy-MM-dd" />

                   
                </td>
                 <td style="text-align: right" >
                    <asp:Label ID="Label19" runat="server" Text="Puesto:"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="txtPuesto" runat="server" CssClass="form-control2"></asp:TextBox> </td>
            <td style="text-align: right">*<asp:Label ID="Label60" runat="server" Text="Cuota Diaria" style="text-align: right"></asp:Label>
                    :</td>
                <td>
                    <asp:TextBox ID="txtCuotaDiaria" runat="server" CssClass="form-control2">0</asp:TextBox>
                    </td>
            </tr>
           <tr>
               <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="txtFechaInicialLaboral" 
                        ErrorMessage="Campo requerido" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
               <td> <asp:Label ID="lblFechaInicialLaboral" runat="server" ForeColor="Red"></asp:Label>
                  
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                        ControlToValidate="txtFechaInicialLaboral" 
                        ErrorMessage="Dato inválido" 
                        ValidationExpression="(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])" ForeColor="#FF3300"></asp:RegularExpressionValidator></td>
          
               <td></td>
               <td><asp:Label ID="lblPuesto" runat="server" ForeColor="Red"></asp:Label></td>
            
                <td class="auto-style7"></td>
                <td class="auto-style5"><asp:Label ID="lblCuotaDiaria" runat="server" ForeColor="Red"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtCuotaDiaria" ErrorMessage="Campo requerido" SetFocusOnError="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td style="text-align: right" class="auto-style7" >
                    <asp:Label ID="Label23" runat="server" Text="Salario Base Cotización"></asp:Label>
                    :</td>
                <td class="auto-style5" >
                    <asp:TextBox ID="txtSalarioBaseCotApor" runat="server" CssClass="form-control2">0</asp:TextBox>
                 </td>
                <td style="text-align: right" >
                    <asp:Label ID="Label25" runat="server" Text="Salario Diario Integrado:"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="txtSalarioDiarioIntegro" runat="server" CssClass="form-control2">0</asp:TextBox>
                
                </td>
                 <td style="text-align: right" class="auto-style7" >
                    <asp:Label ID="Label14" runat="server" Text="Departamento:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDepartamento" runat="server" CssClass="form-control2"></asp:TextBox> </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style5">   <asp:Label ID="lblSalarioBaseCotApor" runat="server" ForeColor="Red"></asp:Label>
                    
                </td>
                <td></td>
                <td><asp:Label ID="lblSalarioDiarioIntegro" runat="server" ForeColor="Red"></asp:Label></td>
                <td></td>
                <td><asp:Label ID="lblDepartamento" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>





            
            <tr>
               <td class="auto-style7" style="text-align: right">
                        <asp:Label ID="Label12" runat="server" Text="*Tipo de Régimen:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlRegimen" runat="server" CssClass="form-control2" style="margin-left: 0px" Width="200px">
                            <asp:ListItem Text="Sueldos" Value="02"></asp:ListItem>
                            <asp:ListItem Text="Jubilados" Value="03"></asp:ListItem>
                            <asp:ListItem Text="Pensionados" Value="04"></asp:ListItem>
                           <asp:ListItem Text="Asimilados Miembros de las Sociedades Cooperativas de Producción" Value="05"></asp:ListItem>
                        <asp:ListItem Text="Asimilados Integrantes de Sociedades y Asociaciones Civiles" Value="06"></asp:ListItem>
                        <asp:ListItem Text="Asimilados Miembros de consejos" Value="07"></asp:ListItem>
                        <asp:ListItem Text="Asimilados comisionistas" Value="08"></asp:ListItem>
                        <asp:ListItem Text="Asimilados Honorarios" Value="09"></asp:ListItem>
                        <asp:ListItem Text="Asimilados acciones" Value="10"></asp:ListItem>
                        <asp:ListItem Text="Asimilados otros" Value="11"></asp:ListItem>
                       <asp:ListItem Text="Jubilados o Pensionados" Value="12"></asp:ListItem>
                       <asp:ListItem Text="Indemnización o Separación" Value="13"></asp:ListItem>
                        <asp:ListItem Text="Otro Regimen" Value="99"></asp:ListItem>
                        </asp:DropDownList>
                        </td> 
               <td class="auto-style7" style="text-align: right">
                        <asp:Label ID="Label20" runat="server" Text="*Tipo de Contrato:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlTipoContrato" runat="server" AutoPostBack="True" CssClass="form-control2" onselectedindexchanged="ddlTipoContrato_SelectedIndexChanged" style="margin-left: 0px">
                            <asp:ListItem Text="Contrato de trabajo por tiempo indeterminado" Value="01"></asp:ListItem>
                            <asp:ListItem Text="Contrato de trabajo para obra determinada" Value="02"></asp:ListItem>
                            <asp:ListItem Text="Contrato de trabajo por tiempo determinado" Value="03"></asp:ListItem>
                            <asp:ListItem Text="Contrato de trabajo por temporada" Value="04"></asp:ListItem>
                            <asp:ListItem Text="Contrato de trabajo sujeto a prueba" Value="05"></asp:ListItem>
                            <asp:ListItem Text="Contrato de trabajo con capacitación inicial" Value="06"></asp:ListItem>
                            <asp:ListItem Text="Modalidad de contratación por pago de hora laborada" Value="07"></asp:ListItem>
                            <asp:ListItem Text="Modalidad de trabajo por comisión laboral" Value="08"></asp:ListItem>
                            <asp:ListItem Text="Modalidades de contratación donde no existe relación de trabajo" Value="09"></asp:ListItem>
                            <asp:ListItem Text="Jubilación, pensión, retiro" Value="10"></asp:ListItem>
                            <asp:ListItem Text="Otro contrato" Value="99"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            
            <tr>
                <td></td>
                <td><asp:Label ID="lblRegimen" runat="server" ForeColor="Red"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddlRegimen" ErrorMessage="Campo requerido" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                   </td>
          <td></td>
               
                <td>
                        <asp:Label ID="lblTipoContrato" runat="server" Enabled="False" ForeColor="Red"></asp:Label>
                    </td>
                 
                 </tr>
            <caption>
                <tr>
                     <td class="auto-style7" style="text-align: right">*Tipo de Jornada:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlTipoJornada" runat="server" ClientIDMode="Static" CssClass="form-control2" style="margin-left: 0px">
                            <asp:ListItem Text="Diurna" Value="01"></asp:ListItem>
                            <asp:ListItem Text="Nocturna" Value="02"></asp:ListItem>
                            <asp:ListItem Text="Mixta" Value="03"></asp:ListItem>
                            <asp:ListItem Text="Por hora" Value="04"></asp:ListItem>
                            <asp:ListItem Text="Reducida" Value="05"></asp:ListItem>
                            <asp:ListItem Text="Continuada" Value="06"></asp:ListItem>
                            <asp:ListItem Text="Partida" Value="07"></asp:ListItem>
                            <asp:ListItem Text="Por turnos" Value="08"></asp:ListItem>
                            <asp:ListItem Text="Otra Jornada" Value="99"></asp:ListItem>
                        </asp:DropDownList>
                       
                    </td>
                    <td style="text-align: right">
                        <asp:Label ID="Label16" runat="server" Text="Banco:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlBanco" runat="server" ClientIDMode="Static" CssClass="form-control2" style="margin-left: 0px">
                            <asp:ListItem Selected="True" Text="Selecciona un banco" Value="000"></asp:ListItem>
                            <asp:ListItem Text="BANAMEX " Value="002"></asp:ListItem>
                            <asp:ListItem Text="BANCOMEXT " Value="006"></asp:ListItem>
                            <asp:ListItem Text="BANOBRAS " Value="009"></asp:ListItem>
                            <asp:ListItem Text="BBVA BANCOMER " Value="012"></asp:ListItem>
                            <asp:ListItem Text="SANTANDER " Value="014"></asp:ListItem>
                            <asp:ListItem Text="BANJERCITO " Value="019"></asp:ListItem>
                            <asp:ListItem Text="HSBC " Value="021"></asp:ListItem>
                            <asp:ListItem Text="BAJIO " Value="030"></asp:ListItem>
                            <asp:ListItem Text="IXE " Value="032"></asp:ListItem>
                            <asp:ListItem Text="INBURSA " Value="036"></asp:ListItem>
                            <asp:ListItem Text="INTERACCIONES " Value="037"></asp:ListItem>
                            <asp:ListItem Text="MIFEL " Value="042"></asp:ListItem>
                            <asp:ListItem Text="SCOTIABANK " Value="044"></asp:ListItem>
                            <asp:ListItem Text="BANREGIO " Value="058"></asp:ListItem>
                            <asp:ListItem Text="INVEX " Value="059"></asp:ListItem>
                            <asp:ListItem Text="BANSI " Value="060"></asp:ListItem>
                            <asp:ListItem Text="AFIRME " Value="062"></asp:ListItem>
                            <asp:ListItem Text="BANORTE " Value="072"></asp:ListItem>
                            <asp:ListItem Text="THE ROYAL BANK " Value="102"></asp:ListItem>
                            <asp:ListItem Text="AMERICAN EXPRESS " Value="103"></asp:ListItem>
                            <asp:ListItem Text="BAMSA " Value="106"></asp:ListItem>
                            <asp:ListItem Text="TOKYO " Value="108"></asp:ListItem>
                            <asp:ListItem Text="JP MORGAN " Value="110"></asp:ListItem>
                            <asp:ListItem Text="BMONEX " Value="112"></asp:ListItem>
                            <asp:ListItem Text="VE POR MAS " Value="113"></asp:ListItem>
                            <asp:ListItem Text="ING " Value="116"></asp:ListItem>
                            <asp:ListItem Text="DEUTSCHE " Value="124"></asp:ListItem>
                            <asp:ListItem Text="CREDIT SUISSE " Value="126"></asp:ListItem>
                            <asp:ListItem Text="AZTECA " Value="127"></asp:ListItem>
                            <asp:ListItem Text="AUTOFIN " Value="128"></asp:ListItem>
                            <asp:ListItem Text="BARCLAYS " Value="129"></asp:ListItem>
                            <asp:ListItem Text="COMPARTAMOS " Value="130"></asp:ListItem>
                            <asp:ListItem Text="BANCO FAMSA " Value="131"></asp:ListItem>
                            <asp:ListItem Text="BMULTIVA " Value="132"></asp:ListItem>
                            <asp:ListItem Text="ACTINVER " Value="133"></asp:ListItem>
                            <asp:ListItem Text="WAL-MART " Value="134"></asp:ListItem>
                            <asp:ListItem Text="NAF136 " Value="135"></asp:ListItem>
                            <asp:ListItem Text="BANCOPPEL " Value="137"></asp:ListItem>
                            <asp:ListItem Text="ABC CAPITAL " Value="138"></asp:ListItem>
                            <asp:ListItem Text="UBS BANK " Value="139"></asp:ListItem>
                            <asp:ListItem Text="CONSUBANCO " Value="140"></asp:ListItem>
                            <asp:ListItem Text="VOLKSWAGEN " Value="141"></asp:ListItem>
                            <asp:ListItem Text="CIBANCO " Value="143"></asp:ListItem>
                            <asp:ListItem Text="BBASE " Value="145"></asp:ListItem>
                            <asp:ListItem Text="BANSEFI " Value="166"></asp:ListItem>
                            <asp:ListItem Text="HIPOTECARIA FEDERAL " Value="168"></asp:ListItem>
                            <asp:ListItem Text="MONEXCB " Value="600"></asp:ListItem>
                            <asp:ListItem Text="GBM " Value="601"></asp:ListItem>
                            <asp:ListItem Text="MASARI " Value="602"></asp:ListItem>
                            <asp:ListItem Text="VALUE " Value="605"></asp:ListItem>
                            <asp:ListItem Text="ESTRUCTURADORES " Value="606"></asp:ListItem>
                            <asp:ListItem Text="TIBER " Value="607"></asp:ListItem>
                            <asp:ListItem Text="VECTOR " Value="608"></asp:ListItem>
                            <asp:ListItem Text="B&amp;B " Value="610"></asp:ListItem>
                            <asp:ListItem Text="ACCIVAL " Value="614"></asp:ListItem>
                            <asp:ListItem Text="MERRILL LYNCH " Value="615"></asp:ListItem>
                            <asp:ListItem Text="FINAMEX " Value="616"></asp:ListItem>
                            <asp:ListItem Text="VALMEX " Value="617"></asp:ListItem>
                            <asp:ListItem Text="UNICA " Value="618"></asp:ListItem>
                            <asp:ListItem Text="MAPFRE " Value="619"></asp:ListItem>
                            <asp:ListItem Text="PROFUTURO " Value="620"></asp:ListItem>
                            <asp:ListItem Text="CB ACTINVER " Value="621"></asp:ListItem>
                            <asp:ListItem Text="OACTIN " Value="622"></asp:ListItem>
                            <asp:ListItem Text="SKANDIA " Value="623"></asp:ListItem>
                            <asp:ListItem Text="CBDEUTSCHE " Value="626"></asp:ListItem>
                            <asp:ListItem Text="ZURICH" Value="627"></asp:ListItem>
                            <asp:ListItem Text="ZURICHVI " Value="628"></asp:ListItem>
                            <asp:ListItem Text="SU CASITA " Value="629"></asp:ListItem>
                            <asp:ListItem Text="CB INTERCAM " Value="630"></asp:ListItem>
                            <asp:ListItem Text="CI BOLSA " Value="631"></asp:ListItem>
                            <asp:ListItem Text="BULLTICK CB " Value="632"></asp:ListItem>
                            <asp:ListItem Text="STERLING " Value="633"></asp:ListItem>
                            <asp:ListItem Text="FINCOMUN " Value="634"></asp:ListItem>
                            <asp:ListItem Text="HDI SEGUROS " Value="636"></asp:ListItem>
                            <asp:ListItem Text="ORDER " Value="637"></asp:ListItem>
                            <asp:ListItem Text="AKALA " Value="638"></asp:ListItem>
                            <asp:ListItem Text="CB JPMORGAN " Value="640"></asp:ListItem>
                            <asp:ListItem Text="REFORMA " Value="642"></asp:ListItem>
                            <asp:ListItem Text="STP " Value="646"></asp:ListItem>
                            <asp:ListItem Text="TELECOMM " Value="647"></asp:ListItem>
                            <asp:ListItem Text="EVERCORE " Value="648"></asp:ListItem>
                            <asp:ListItem Text="SKANDIA " Value="649"></asp:ListItem>
                            <asp:ListItem Text="SEGMTY " Value="651"></asp:ListItem>
                            <asp:ListItem Text="ASEA " Value="652"></asp:ListItem>
                            <asp:ListItem Text="KUSPIT " Value="653"></asp:ListItem>
                            <asp:ListItem Text="SOFIEXPRESS " Value="655"></asp:ListItem>
                            <asp:ListItem Text="UNAGRA " Value="656"></asp:ListItem>
                            <asp:ListItem Text="OPCIONES EMPRESARIALES DEL NOROESTE " Value="659"></asp:ListItem>
                            <asp:ListItem Text="CLS " Value="901"></asp:ListItem>
                            <asp:ListItem Text="INDEVAL " Value="902"></asp:ListItem>
                            <asp:ListItem Text="LIBERTAD " Value="670"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    
                  <td<asp:RequiredFieldValidator ID="valOtro0" runat="server" ClientIDMode="Static" ControlToValidate="ddlTipoJornada" Enabled="False" ErrorMessage="Campo Requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
                      
                    <td class="auto-style5">
                        <asp:Label ID="lblBanco" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    
                    
                       <td class="auto-style7" style="text-align: right">*ClaveEntFed:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlClaveEntFed" runat="server" ClientIDMode="Static" CssClass="form-control2" style="margin-left: 0px">
                            <asp:ListItem Text="CDMX" Value="DIF"></asp:ListItem>
                            <asp:ListItem Text="Aguascalientes" Value="AGU"></asp:ListItem>
                            <asp:ListItem Text="Baja California" Value="BCN"></asp:ListItem>
                            <asp:ListItem Text="Baja California Sur" Value="BCS"></asp:ListItem>
                            <asp:ListItem Text="Campeche" Value="CAM"></asp:ListItem>
                            <asp:ListItem Text="Chiapas" Value="CHP"></asp:ListItem>
                            <asp:ListItem Text="Chihuahua" Value="CHH"></asp:ListItem>
                            <asp:ListItem Text="Coahuila" Value="COA"></asp:ListItem>
                            <asp:ListItem Text="Colima" Value="COL"></asp:ListItem>
                            <asp:ListItem Text="Durango" Value="DUR"></asp:ListItem>
                            <asp:ListItem Text="Guanajuato" Value="GUA"></asp:ListItem>
                            <asp:ListItem Text="Guerrero" Value="GRO"></asp:ListItem>
                            <asp:ListItem Text="Hidalgo" Value="HID"></asp:ListItem>
                            <asp:ListItem Text="Jalisco" Value="JAL"></asp:ListItem>
                            <asp:ListItem Text="Estado de México" Value="MEX"></asp:ListItem>
                            <asp:ListItem Text="Michoacán" Value="MIC"></asp:ListItem>
                            <asp:ListItem Text="Morelos" Value="MOR"></asp:ListItem>
                            <asp:ListItem Text="Nayarit" Value="NAY"></asp:ListItem>
                            <asp:ListItem Text="Nuevo León" Value="NLE"></asp:ListItem>
                            <asp:ListItem Text="Oaxaca" Value="OAX"></asp:ListItem>
                            <asp:ListItem Text="Puebla" Value="PUE"></asp:ListItem>
                            <asp:ListItem Text="Querétaro" Value="QUE"></asp:ListItem>
                            <asp:ListItem Text="Quintana Roo" Value="ROO"></asp:ListItem>
                            <asp:ListItem Text="San Luis Potosí" Value="SLP"></asp:ListItem>
                            <asp:ListItem Text="Sinaloa" Value="SIN"></asp:ListItem>
                            <asp:ListItem Text="Sonora" Value="SON"></asp:ListItem>
                            <asp:ListItem Text="Tabasco" Value="TAB"></asp:ListItem>
                            <asp:ListItem Text="Tamaulipas" Value="TAM"></asp:ListItem>
                            <asp:ListItem Text="Tlaxcala" Value="TLA"></asp:ListItem>
                            <asp:ListItem Text="Veracruz" Value="VER"></asp:ListItem>
                            <asp:ListItem Text="Yucatán" Value="YUC"></asp:ListItem>
                            <asp:ListItem Text="Zacatecas" Value="ZAC"></asp:ListItem>
                            <asp:ListItem Text="Alabama" Value="AL"></asp:ListItem>
                            <asp:ListItem Text="Alaska" Value="AK"></asp:ListItem>
                            <asp:ListItem Text="Arizona" Value="AZ"></asp:ListItem>
                            <asp:ListItem Text="Arkansas" Value="AR"></asp:ListItem>
                            <asp:ListItem Text="California" Value="CA"></asp:ListItem>
                            <asp:ListItem Text="Carolina del Norte" Value="NC"></asp:ListItem>
                            <asp:ListItem Text="Carolina del Sur" Value="SC"></asp:ListItem>
                            <asp:ListItem Text="Colorado" Value="CO"></asp:ListItem>
                            <asp:ListItem Text="Connecticut" Value="CT"></asp:ListItem>
                            <asp:ListItem Text="Dakota del Norte" Value="ND"></asp:ListItem>
                            <asp:ListItem Text="Dakota del Sur" Value="SD"></asp:ListItem>
                            <asp:ListItem Text="Delaware" Value="DE"></asp:ListItem>
                            <asp:ListItem Text="Florida" Value="FL"></asp:ListItem>
                            <asp:ListItem Text="Georgia" Value="GA"></asp:ListItem>
                            <asp:ListItem Text="Hawái" Value="HI"></asp:ListItem>
                            <asp:ListItem Text="Idaho" Value="ID"></asp:ListItem>
                            <asp:ListItem Text="Illinois" Value="IL"></asp:ListItem>
                            <asp:ListItem Text="Indiana" Value="IN"></asp:ListItem>
                            <asp:ListItem Text="Iowa" Value="IA"></asp:ListItem>
                            <asp:ListItem Text="Kansas" Value="KS"></asp:ListItem>
                            <asp:ListItem Text="Kentucky" Value="KY"></asp:ListItem>
                            <asp:ListItem Text="Luisiana" Value="LA"></asp:ListItem>
                            <asp:ListItem Text="Maine" Value="ME"></asp:ListItem>
                            <asp:ListItem Text="Maryland" Value="MD"></asp:ListItem>
                            <asp:ListItem Text="Massachusetts" Value="MA"></asp:ListItem>
                            <asp:ListItem Text="Míchigan" Value="MI"></asp:ListItem>
                            <asp:ListItem Text="Minnesota" Value="MN"></asp:ListItem>
                            <asp:ListItem Text="Misisipi" Value="MS"></asp:ListItem>
                            <asp:ListItem Text="Misuri" Value="MO"></asp:ListItem>
                            <asp:ListItem Text="Montana" Value="MT"></asp:ListItem>
                            <asp:ListItem Text="Nebraska" Value="NE"></asp:ListItem>
                            <asp:ListItem Text="Nevada" Value="NV"></asp:ListItem>
                            <asp:ListItem Text="Nueva Jersey" Value="NJ"></asp:ListItem>
                            <asp:ListItem Text="Nueva York" Value="NY"></asp:ListItem>
                            <asp:ListItem Text="Nuevo Hampshire" Value="NH"></asp:ListItem>
                            <asp:ListItem Text="Nuevo México" Value="NM"></asp:ListItem>
                            <asp:ListItem Text="Ohio" Value="OH"></asp:ListItem>
                            <asp:ListItem Text="Oklahoma" Value="OK"></asp:ListItem>
                            <asp:ListItem Text="Oregón" Value="OR"></asp:ListItem>
                            <asp:ListItem Text="Pensilvania" Value="PA"></asp:ListItem>
                            <asp:ListItem Text="Rhode Island" Value="RI"></asp:ListItem>
                            <asp:ListItem Text="Tennessee" Value="TN"></asp:ListItem>
                            <asp:ListItem Text="Texas" Value="TX"></asp:ListItem>
                            <asp:ListItem Text="Utah" Value="UT"></asp:ListItem>
                            <asp:ListItem Text="Vermont" Value="VT"></asp:ListItem>
                            <asp:ListItem Text="Virginia" Value="VA"></asp:ListItem>
                            <asp:ListItem Text="Virginia Occidental" Value="WV"></asp:ListItem>
                            <asp:ListItem Text="Washington" Value="WA"></asp:ListItem>
                            <asp:ListItem Text="Wisconsin" Value="WI"></asp:ListItem>
                            <asp:ListItem Text="Wyoming" Value="WY"></asp:ListItem>
                            <asp:ListItem Text="Ontario&nbsp;" Value="ON"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Quebec&nbsp;" Value="QC"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Nueva Escocia" Value="NS"></asp:ListItem>
                            <asp:ListItem Text="Nuevo Brunswick&nbsp;" Value="NB"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Manitoba" Value="MB"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Columbia Británica" Value="BC"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Isla del Príncipe Eduardo" Value="PE"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Saskatchewan" Value="SK"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Alberta" Value="AB"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Terranova y Labrador" Value="NL"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Territorios del Noroeste" Value="NT"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Yukón" Value="YT"></asp:ListItem>
                            <asp:ListItem Text="&nbsp;Nunavut" Value="UN"></asp:ListItem>
                        </asp:DropDownList>
                      
                    </td>
                </tr>

            <tr>
                <td></td>
                <td></td>
            </tr>
                <tr>
                                
                    <td class="auto-style7" style="text-align: right">Sindicalizado:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlSindicalizado" runat="server" ClientIDMode="Static" CssClass="form-control2">
                            <asp:ListItem Text="No" Value="No"></asp:ListItem>
                            <asp:ListItem Text="Sí" Value="Sí"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="text-align: right"></td>
                    <td class="auto-style5">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style7">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FF0000" />
                    </td>
                    <td class="auto-style5">
                        <br />
                    </td>
                </tr>
            </caption>
            
        </table>
    
</ContentTemplate>
</asp:UpdatePanel>



</ContentTemplate>
</asp:TabPanel>
            
            
    </asp:TabContainer>
    
    
    <div align="right">
        <asp:Button runat="server" ID="btnSave" class="btn btn-primary" Text="Guardar" onclick="btnSave_Click" />&nbsp;&nbsp;
        <asp:Button runat="server" ID="btnCancel" class="btn btn-primary"  Text="Cancelar" 
            onclick="btnCancel_Click" CausesValidation="False" />
    </div>
</asp:Content>