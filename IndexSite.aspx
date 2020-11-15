<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="IndexSite.aspx.cs" Inherits="IndexSite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #CC0000;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            height: 79px;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            font-size: medium;
        }
        .auto-style6 {
            color: #CC0000;
            text-decoration: none;
        }

        .BotonSesion {
            display: inline-block;
            border-radius: 4px;
            background-color: #660916;
            border: none;
            color: white;
            text-align: center;
            font-size: 12px;
            padding: 11px;
            width: 150px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
       
       <h3>&nbsp;</h3>
       
       </div>
    <div align="center">
       
        <h3><span class="auto-style4">Número de Carnet:</span></h3>
        <asp:TextBox ID="txtCarnet" runat="server" OnTextChanged="txtCarnet_TextChanged1"></asp:TextBox>
        <br />
        LAB:
        <asp:Label ID="lblLab" runat="server"></asp:Label>
       
       </div>
     <div align="center">
        <br />
        <br />
    <asp:Label ID="Label1" runat="server" Text="Este sitio fue creado por la Universidad Tecnologica de El Salvador, con el fin de de llevar un orden y control <br>
        de quienes hacen uso de los laboratorios que la universidad pone a disposición de su alumnado y su personal,<br>
        por medio de la tecnologia de chips NFC implementados en los carnet estudiantiles." CssClass="auto-style5"></asp:Label>
        <br class="auto-style2" />
         <br />
         <br />
    <br class="auto-style2" />
    <asp:Label ID="Label2" runat="server" Text="Si usted pertenece al cuerpo de administradores de este sitio, solicitamos que inicie sesión con sus credenciales otorgadas por la DIN para ingresar" CssClass="auto-style5"></asp:Label></div>
    <br />
    <div align="center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnEntrar" runat="server" Text="Iniciar sesión" OnClick="btnEntrar_Click" Width="122px" class="BotonSesion"/>
        <br />
        <br />
    </div>
     <div align="center" class="auto-style3">

         <span class="auto-style1"><strong>
         <br />
         Si usted llego a este sitio por error,</strong></span><strong><br class="auto-style1"></strong><span class="auto-style1"><strong>puede dar clic en el siquiente enlace que lo dirigira a: 
     </strong></span>
     </div>
    <div align="center"><strong>
        <asp:HyperLink ID="linkUtecPrincipal" runat="server" CssClass="auto-style6" NavigateUrl="https://www.utec.edu.sv">Página principal UTEC</asp:HyperLink>
        <br />
        <br />
        </strong></div>
</asp:Content>

