<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Agregar_Medidores.aspx.cs" Inherits="JCornejoEvaluacion3Web.Agregar_Medidores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
<div class="row">
    <div class="col-lg-6 mx-auto">
        <div class="alerta">
            <asp:Label runat="server" ID="mensaje_lbl" CssClass="text-success"></asp:Label>
        </div>
        <div class="card">
            <div class="card-header bg-dark text-white">
                <a>Agregar Medidor</a>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="numero_txt">Numero del medidor:</label>
                    <asp:TextBox ID="numero_txt" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RF1" ErrorMessage="Campo no puede estar vacio"
                        ControlToValidate="numero_txt" BackColor="LightYellow" Display="Static"
                        Text="Campo no puede estar vacio"></asp:RequiredFieldValidator>
                      <asp:RangeValidator runat="server" ID="RV1" ErrorMessage="Longitud no aceptada " Text="Longitud maxima: 9999"
                        BackColor="Red" Display="Static" MaximumValue="9999" MinimumValue="1" Type="Integer"
                        ControlToValidate="numero_txt"></asp:RangeValidator>
                </div>
                <div class="form-group">
                    <label for="tipo_rb">Tipo</label>
                    <asp:RadioButtonList runat="server" ID="tipo_rb">
                        <asp:ListItem Selected="True" Value="1" Text="A"></asp:ListItem>
                        <asp:ListItem Value="2" Text="B"></asp:ListItem>
                    </asp:RadioButtonList>
                    
                </div>
                <div class="form-group">
                    <asp:Button runat="server" ID="agregar_btn" OnClick="agregar_btn_Click" Text="Agregar" CssClass="btn btn-primary" />
                 </div>
            </div>
        </div>
    </div> 
</div>



</asp:Content>
