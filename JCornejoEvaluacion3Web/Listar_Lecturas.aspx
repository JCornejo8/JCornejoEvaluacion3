<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Listar_Lecturas.aspx.cs" Inherits="JCornejoEvaluacion3Web.Listar_Lecturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
<div class="row">
    <div class="col-l-6 mx-auto">
        <div class="card">
            <div class="card-header bg-warning text-black">
                <a>Listar Lecturas</a>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <asp:GridView 
                        runat="server" ID="lecturas_grd" AutoGenerateColumns="false"
                        CssClass="table table-hover table-bordered mt-5"
                        EmptyDataText="Sin Lecturas" ShowHeader="true"
                        OnRowCommand="lecturas_grd_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="NumeroLectura" HeaderText="Codigo de la lectura" />
                            <asp:BoundField DataField="MedidorL.Numero" HeaderText="Nro. del medidor" />
                            <asp:BoundField DataField="FechaLectura" HeaderText="Fecha:" />
                            <asp:BoundField DataField="HoraLectura" HeaderText="Hora" />
                            <asp:BoundField DataField="MinutoLectura" HeaderText="Minuto" />                        
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button 
                                        CommandName="eliminar"
                                        CommandArgument='<%# Eval("NumeroLectura")%>'
                                        runat="server" 
                                        CssClass="btn bg-danger" Text="Eliminar" />
                                </ItemTemplate>
                            </asp:TemplateField>
                          </Columns>
                        </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

