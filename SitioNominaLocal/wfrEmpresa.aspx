<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrEmpresa.aspx.cs" Inherits="GafLookPaid.wfrEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Styles/StyleBoton.css" rel="stylesheet" type="text/css" />
    <link href="Styles/bootstrap.min.css" rel="stylesheet" />
    <h1>Empresa</h1>
    <asp:Label runat="server" ID="lblError" ForeColor="Red" />
    <table class="page7">
        <tr>
            <td></td>
            <td style="color: #FF0000">* Campos Requeridos</td>
            
        </tr>
        <tr>
           
            <td style="text-align: right">RFC:</td>
            <td><asp:TextBox runat="server" ID="txtRFC" Width="150px" CssClass="form-control2" /></td>
        
           
            <td style="text-align: right">Razón Social:</td>
            <td><asp:TextBox runat="server" ID="txtRazonSocial" CssClass="form-control2" Width="350px" /></td>
        </tr>
         <tr>
             
            <td style="text-align: right">* Régimen Fiscal:</td>
            <td><asp:DropDownList runat="server" ID="ddlRegimen" AutoPostBack="True"  CssClass="form-control2"
                    onselectedindexchanged="ddlRegimen_SelectedIndexChanged" style="margin-left: 0px" >
                    <asp:ListItem Value="601" Text="General de Ley Personas Morales" runat="server" />
                    <asp:ListItem Value="603" Text="Personas Morales con Fines no Lucrativos" runat="server" />
                    <asp:ListItem Value="605" Text="Sueldos y Salarios e Ingresos Asimilados a Salarios" runat="server" />
                    <asp:ListItem Value="606" Text="Arrendamiento" runat="server" />
                    <asp:ListItem Value="608" Text="Demás ingresos" runat="server" />
                    <asp:ListItem Value="609" Text="Consolidación" runat="server" />
                    <asp:ListItem Value="610" Text="Residentes en el Extranjero sin Establecimiento Permanente en México" runat="server" />
                    <asp:ListItem Value="611" Text="Ingresos por Dividendos (socios y accionistas)" runat="server" />
                    <asp:ListItem Value="612" Text="Personas Físicas con Actividades Empresariales y Profesionales" runat="server" />
                    <asp:ListItem Value="614" Text="Ingresos por intereses" runat="server" />
                    <asp:ListItem Value="616" Text="Sin obligaciones fiscales" runat="server" />
                    <asp:ListItem Value="620" Text="Sociedades Cooperativas de Producción que optan por diferir sus ingresos" runat="server" />
                    <asp:ListItem Value="621" Text="Incorporación Fiscal" runat="server" />
                    <asp:ListItem Value="622" Text="Actividades Agrícolas, Ganaderas, Silvícolas y Pesqueras" runat="server" />
                    <asp:ListItem Value="623" Text="Opcional para Grupos de Sociedades" runat="server" />
                    <asp:ListItem Value="624" Text="Coordinados" runat="server" />
                    <asp:ListItem Value="628" Text="Hidrocarburos" runat="server" />
                    <asp:ListItem Value="607" Text="Régimen de Enajenación o Adquisición de Bienes" runat="server" />
                    <asp:ListItem Value="629" Text="De los Regímenes Fiscales Preferentes y de las Empresas Multinacionales" runat="server" />
                    <asp:ListItem Value="630" Text="Enajenación de acciones en bolsa de valores" runat="server" />
                    <asp:ListItem Value="615" Text="Régimen de los ingresos por obtención de premios" runat="server" />
                    <asp:ListItem Value="626" Text="Regimen Simplificado de Confianza" runat="server" />
                </asp:DropDownList></td>
             
            
             <td style="text-align: right">CURP: <span style="font-size: x-small; text-align: right;">(Si aplica)</span></td>
            <td><asp:TextBox runat="server" ID="txtCURP" MaxLength="24" CssClass="form-control2" Width="350px" /></td>
        </tr>
        <tr>
           
            <td style="text-align: right">* Calle:</td>
            <td><asp:TextBox runat="server" ID="txtCalle" CssClass="form-control2" />
                <asp:RequiredFieldValidator ID="valRegimen0" ErrorMessage="Campo requerido" 
                             runat="server" Enabled="false" Display="Dynamic" ControlToValidate="txtCalle"></asp:RequiredFieldValidator>
            </td>
          
            <td style="text-align: right">* Número Exterior:</td>
            <td><asp:TextBox runat="server" ID="txtNoExt"  CssClass="form-control2" ClientIDMode="Static" />
                <asp:RequiredFieldValidator ID="valRegimen4" ErrorMessage="Campo requerido" 
                             runat="server" Enabled="false" Display="Dynamic" ControlToValidate="txtNoExt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
           
            <td style="text-align: right">Numero Interior:</td>
            <td><asp:TextBox runat="server" ID="txtNoInt" CssClass="form-control2" ClientIDMode="Static" /></td>
              
            <td style="text-align: right">Colonia:</td>
            <td><asp:TextBox runat="server" ID="txtColonia" CssClass="form-control2" /></td>
        </tr>
        <tr>
            
            <td style="text-align: right">* Municipio:</td>
            <td><asp:TextBox runat="server" ID="txtMunicipio" CssClass="form-control2" />
                <asp:RequiredFieldValidator ID="valRegimen1" ErrorMessage="Campo requerido" 
                             runat="server" Enabled="false" Display="Dynamic" ControlToValidate="txtMunicipio"></asp:RequiredFieldValidator>
            </td>
      <td style="text-align: right">* Estado:</td>
            <td><asp:TextBox runat="server" ID="txtEstado" CssClass="form-control2" />
                <asp:RequiredFieldValidator ID="valRegimen2" ErrorMessage="Campo requerido" 
                             runat="server" Enabled="false" Display="Dynamic" ControlToValidate="txtEstado"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
           
            <td style="text-align: right">* C.P.:</td>
            <td><asp:TextBox runat="server" ID="txtCP" CssClass="form-control2" />
                <asp:RequiredFieldValidator ID="valRegimen3" ErrorMessage="Campo requerido" 
                             runat="server" Enabled="false" Display="Dynamic" ControlToValidate="txtCP"></asp:RequiredFieldValidator>
            </td>
     
            <td style="text-align: right">Teléfono:</td>
            <td><asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control2" /></td>
        </tr>
        <tr>
           
            <td style="text-align: right">Email:</td>
            <td><asp:TextBox runat="server" ID="txtEmail" CssClass="form-control2" /></td>
                 
            <td style="text-align: right">Web:</td>
            <td><asp:TextBox runat="server" ID="txtWeb" CssClass="form-control2" /></td>
        </tr>
        
        <tr>
           
            <td style="text-align: right">Leyenda Encabezado:</td>
            <td><asp:TextBox runat="server" ID="txtLeyendaSuperior" CssClass="form-control2"></asp:TextBox>
            </td>
        
            
            <td style="text-align: right">Leyenda pie de Página:</td>
            <td><asp:TextBox runat="server" ID="txtLeyendaPie" TextMode="MultiLine" CssClass="form-control2"></asp:TextBox>
            </td>
        </tr>
        <asp:Panel runat="server" ID="pnlSucursal" Visible="False">
            <tr>
                <td>Sucursal:</td>
                <td>
                    <asp:TextBox runat="server" ID="txtSucursal" Width="400px" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvSucursal" ControlToValidate="txtSucursal"
                      Display="Dynamic" ErrorMessage="* Requerido" />
                </td>
            </tr>
            <tr>
                <td>Lugar de Expedición:</td>
                <td>
                    <asp:TextBox runat="server" ID="txtLugarExpedicion" Width="300px" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvLugarExpedicion" ControlToValidate="txtLugarExpedicion"
                      Display="Dynamic" ErrorMessage="* Requerido" />
                </td>
            </tr>
        </asp:Panel>
        <tr>
            
            <td style="text-align: right">Contacto Administrativo:</td>
            <td><asp:TextBox runat="server" ID="txtContacto" CssClass="form-control2" /></td>
             <td>Orientación del Archivo Pdf:</td>
            <td><asp:DropDownList runat="server" ID="ddlOrientacion" style="margin-left: 0px" CssClass="form-control2">
                    <asp:ListItem Value="0" Text="Vertical" ></asp:ListItem> 
                    <asp:ListItem Value="1" Text="Horizontal" ></asp:ListItem> 
            </asp:DropDownList>
            </td>
        </tr>
        <tr>
           
            <td style="text-align: right">Logo Empresa:</td>
            <td>
                <asp:FileUpload runat="server" ID="fuLogoEmpresa" CssClass="form-control2" />
                </td>
          
               
        </tr>
        <tr>
            <td></td>
             <td>(Máximo 50 Kb)</td>
               <td>
        <asp:Button runat="server"  class="btn btn-primary" ID="btnGuardar" Text="Guardar" onclick="btnGuardar_Click" />
       </td>
            <td>  <asp:Button runat="server" ID="btnCancelar" Text="Cancelar" class="btn btn-primary"  onclick="btnCancelar_Click" CausesValidation="False" />
   </td>
        </tr>
          </table>

    <table class="table-bordered">
        <h1>Debes de modificar los 3 siguientes datos en conjunto del Certificado del Sello 
                Digital.</h1>
    
      
               
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style1">Certificado:</td>
            <td class="auto-style11">
                <asp:FileUpload runat="server" ID="fuCertificado" Width="300px" style="margin-left: 0px" CssClass="form-control2" />

            </td>
            <td> <asp:Label runat="server" ID="lblVencimiento"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style1">Llave Privada:</td>
            <td class="auto-style11">
                <asp:FileUpload runat="server"   ID="fuLlave" Width="300px" style="margin-left: 0px" CssClass="form-control2" />

            </td>
            <td> <asp:Label runat="server" ID="lblAdvertencia" ForeColor="Red" ></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style1">Password Llave:</td>
            <td class="auto-style11">
                <asp:TextBox runat="server" ID="txtPassWordLlave" TextMode="Password" style="margin-left: 0px" CssClass="form-control2"/>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnValidar" runat="server" Text="Validar y Guardar"  class="btn btn-primary"
                    onclick="btnValidar_Click" />
                <asp:Label ID="Label1" runat="server" 
                    Text="Valida y Guarda el CSD"></asp:Label>
            </td>
            
        </tr>
   
        </table>

   
    <br />
    <asp:ModalPopupExtender runat="server" ID="mpeSELLOS" TargetControlID="btngenerarDummy"
        BackgroundCssClass="mpeBack"  PopupControlID="pnlMSG" />
    <asp:Panel runat="server" ID="pnlMSG" Style="text-align: center;"  CssClass="page3"
          BackColor="#A8CF38" Height="160px" Width="431px" BorderStyle="Groove" BorderColor="WindowFrame">
        <br />
        <asp:Label runat="server" ID="LblMensaje" Text="Mensaje:" Font-Size="Large" 
                            Visible="True" class="180" style="color: #F72020"/>
        <!--h1 class="style161" style="color: #000000"><strong>Comprobante generado correctamente y enviado por correo electrónico</strong></h1-->
        <br />
        <asp:Label runat="server" ID="LblSolucion" Text="Solucion:" Font-Size="Large" Height="62px" class="style161" style="color: #000000" Width="287px"/>
        <br />
        <br />
        
        <%--<asp:Button runat="server" ID="btnSeleccionarConcepto" Text="Seleccionar" onclick="btnSeleccionarConcepto_Click" />&nbsp;&nbsp;--%>
        <asp:Button runat="server" ID="btnCerrar" Text="Aceptar"  class="btn btn-primary" OnClick="btnCerrar_Click" />
    </asp:Panel>
    <asp:Button runat="server" ID="btngenerarDummy" Style="display: none;" />


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

