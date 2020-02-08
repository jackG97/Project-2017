<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdminSec.aspx.cs" Inherits="AdminSec" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Rights] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Rights] ([UserName], [Right]) VALUES (@UserName, @Right)" SelectCommand="SELECT * FROM [Rights]" UpdateCommand="UPDATE [Rights] SET [UserName] = @UserName, [Right] = @Right WHERE [Id] = @Id" OnSelecting="SqlDataSource1_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Right" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Right" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Right:
            <asp:TextBox ID="RightTextBox" runat="server" Text='<%# Bind("Right") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Right:
            <asp:TextBox ID="RightTextBox" runat="server" Text='<%# Bind("Right") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Right:
            <asp:Label ID="RightLabel" runat="server" Text='<%# Bind("Right") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>







    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Upcoming_Games] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Upcoming_Games] ([Id], [Upcoming_Games], [Picture], [Description], [Price], [Release_Date]) VALUES (@Id, @Upcoming_Games, @Picture, @Description, @Price, @Release_Date)" SelectCommand="SELECT * FROM [Upcoming_Games]" UpdateCommand="UPDATE [Upcoming_Games] SET [Upcoming_Games] = @Upcoming_Games, [Picture] = @Picture, [Description] = @Description, [Price] = @Price, [Release_Date] = @Release_Date WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Upcoming_Games" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Release_Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Upcoming_Games" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Release_Date" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:FormView ID="FormView2" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Upcoming_Games:
            <asp:TextBox ID="Upcoming_GamesTextBox" runat="server" Text='<%# Bind("Upcoming_Games") %>' />
            <br />
            Picture:
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Release_Date:
            <asp:TextBox ID="Release_DateTextBox" runat="server" Text='<%# Bind("Release_Date") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Id:
            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
            <br />
            Upcoming_Games:
            <asp:TextBox ID="Upcoming_GamesTextBox" runat="server" Text='<%# Bind("Upcoming_Games") %>' />
            <br />
            Picture:
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Release_Date:
            <asp:TextBox ID="Release_DateTextBox" runat="server" Text='<%# Bind("Release_Date") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Upcoming_Games:
            <asp:Label ID="Upcoming_GamesLabel" runat="server" Text='<%# Bind("Upcoming_Games") %>' />
            <br />
            Picture:
            <asp:Label ID="PictureLabel" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Release_Date:
            <asp:Label ID="Release_DateLabel" runat="server" Text='<%# Bind("Release_Date") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>



    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Gaming_News] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Gaming_News] ([Game_Name], [Picture], [Price], [Description]) VALUES (@Game_Name, @Picture, @Price, @Description)" SelectCommand="SELECT * FROM [Gaming_News]" UpdateCommand="UPDATE [Gaming_News] SET [Game_Name] = @Game_Name, [Picture] = @Picture, [Price] = @Price, [Description] = @Description WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Game_Name" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Game_Name" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>

    <asp:FormView ID="FormView3" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource3">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Game_Name:
            <asp:TextBox ID="Game_NameTextBox" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            Picture:
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Game_Name:
            <asp:TextBox ID="Game_NameTextBox" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            Picture:
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Game_Name:
            <asp:Label ID="Game_NameLabel" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            Picture:
            <asp:Label ID="PictureLabel" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
</asp:FormView>

</asp:Content>

