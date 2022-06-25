<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Agregar_Lecturas.aspx.cs" Inherits="JCornejoEvaluacion3Web.Agregar_Lecturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
<div class="row">
    <div class="col-lg-6 mx-auto">
        <div class="mensaje">
            <asp:Label runat="server" ID="mensaje_lbl" CssClass="text-success"></asp:Label>
        </div>
        <div class="card">
            <div class="card-header bg-dark text-white">
                <p>Agregar Lectura</p>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="numeroLeectura_txt">Codigo de lectura</label>
                    <asp:TextBox runat="server" ID="numeroLeectura_txt" CssClass="form-group"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RF1" ErrorMessage="Campo no puede estar vacio"
                        ControlToValidate="numeroLeectura_txt" BackColor="LightYellow" Display="Static"
                        Text="Campo no puede estar vacio"></asp:RequiredFieldValidator>
                    <asp:RangeValidator runat="server" ID="RV1" ErrorMessage="Longitud no aceptada" Text="Longitud maxima: 9999"
                        BackColor="Red" Display="Static" MaximumValue="9999" MinimumValue="1" Type="Integer"
                        ControlToValidate="numeroLeectura_txt"></asp:RangeValidator>

                  

                </div>
                <div class="form-group">
                    <label for="medidor_Dd1">Medidor</label>
                    <asp:DropDownList runat="server" ID="medidor_Dd1" CssClass="form-select">
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator runat="server" ID="RF2" ErrorMessage="Campo no puede estar vacio"
                        ControlToValidate="medidor_Dd1" BackColor="LightYellow" Display="Static"
                        Text="Campo no puede estar vacio"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <label for="consumo_txt">Consumo </label>
                    <asp:TextBox runat="server" ID="consumo_txt" CssClass="form-group"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" ID="RF3" ErrorMessage="Campo no puede estar vacio"
                        ControlToValidate="consumo_txt" BackColor="LightYellow" Display="Static"
                        Text="Campo no puede estar vacio"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="hora_txt">Hora</label>
                    <asp:TextBox runat="server" ID="hora_txt" CssClass="form-group"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RF4" ErrorMessage="Campo no puede estar vacio"
                        ControlToValidate="hora_txt" BackColor="LightYellow" Display="Static"
                        Text="Campo no puede estar vacio"></asp:RequiredFieldValidator>
                    <asp:RangeValidator runat="server" ID="RV2" ErrorMessage="Longitud no aceptada" Text="Longitud no aceptada"
                        BackColor="Red" Display="Static" MaximumValue="24" MinimumValue="0" Type="Integer"
                        ControlToValidate="hora_txt"></asp:RangeValidator>
                     
                </div>
                <div class="form-group">
                    <label for="minuto_txt">Minutos</label>
                    <asp:TextBox runat="server" ID="minuto_txt" CssClass="form-group"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RF5" ErrorMessage="Campo no puede estar vacio"
                        ControlToValidate="minuto_txt" BackColor="LightYellow" Display="Static"
                        Text="Campo no puede estar vacio"></asp:RequiredFieldValidator>
                    <asp:RangeValidator runat="server" ID="RV3" ErrorMessage="Longitud no aceptada" Text="Longitud no aceptada"
                        BackColor="Red" Display="Static" MaximumValue="59" MinimumValue="0" Type="Integer"
                        ControlToValidate="minuto_txt"></asp:RangeValidator>
                </div>
                <div>
                    <label for="fecha_cld">Fecha</label>
                    <asp:Calendar runat="server" ID="fecha_cld"></asp:Calendar>                    
                </div>

                <div class="form-group">
                    <asp:Button runat="server" ID="agregar_btn2" OnClick="agregar_btn2_Click" Text="Agregar" CssClass="btn btn-primary" />
                </div>               
            </div>
        </div>
    </div>
</div>
</asp:Content>

