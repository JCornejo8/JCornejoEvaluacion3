<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Listar_Medidores.aspx.cs" Inherits="JCornejoEvaluacion3Web.Listar_Medidores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Ver Medidores</h3>
                </div>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="tipo_Dd1">Filtrar por tipo</label>
                    <asp:DropDownList AutoPostBack="true" runat="server" ID="tipo_Dd1" OnSelectedIndexChanged="tipo_Dd1_SelectedIndexChanged">
                        <asp:ListItem Value="1" Text="Medidor de tipo A"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Medidor de tipo B"></asp:ListItem>
                    </asp:DropDownList>                    
                </div>
                <asp:GridView CssClass="table table-hover table-bordered mt5"
                    EmptyDataText="Sin Medidores" ShowHeader="true" AutoGenerateColumns="false" runat="server" ID="grillaMedidores" OnRowCommand="grillaMedidores_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="Numero" HeaderText="Nro. Medidor"/>
                        <asp:BoundField DataField="TipoConsumoCBX" HeaderText="Tipo Medidor"/>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button  
                                        CommandName="eliminar"
                                        CommandArgument='<%# Eval("Numero")%>'
                                        runat="server" 
                                        CssClass="btn bg-danger" Text="Eliminar" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </div>

        </div>
    </div>




</asp:Content>

