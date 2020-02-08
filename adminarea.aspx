<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="adminarea.aspx.cs" Inherits="adminarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Gaming_News] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Gaming_News] ([Game_Name], [Picture], [Price], [Description]) VALUES (@Game_Name, @Picture, @Price, @Description)" SelectCommand="SELECT * FROM [Gaming_News]" UpdateCommand="UPDATE [Gaming_News] SET [Game_Name] = @Game_Name, [Picture] = @Picture, [Price] = @Price, [Description] = @Description WHERE [Id] = @Id">
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


    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
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
        </div>


    <div>
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
        </div>


    <div>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Gaming_Reviews] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Gaming_Reviews] ([Rating], [Picture], [Description], [Opinion], [Game_Name]) VALUES (@Rating, @Picture, @Description, @Opinion, @Game_Name)" SelectCommand="SELECT * FROM [Gaming_Reviews]" UpdateCommand="UPDATE [Gaming_Reviews] SET [Rating] = @Rating, [Picture] = @Picture, [Description] = @Description, [Opinion] = @Opinion, [Game_Name] = @Game_Name WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Rating" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Opinion" Type="String" />
            <asp:Parameter Name="Game_Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Rating" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Opinion" Type="String" />
            <asp:Parameter Name="Game_Name" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView3" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource3">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Rating:
            <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
            <br />
            Picture:
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Opinion:
            <asp:TextBox ID="OpinionTextBox" runat="server" Text='<%# Bind("Opinion") %>' />
            <br />
            Game_Name:
            <asp:TextBox ID="Game_NameTextBox" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Rating:
            <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
            <br />
            Picture:
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Opinion:
            <asp:TextBox ID="OpinionTextBox" runat="server" Text='<%# Bind("Opinion") %>' />
            <br />
            Game_Name:
            <asp:TextBox ID="Game_NameTextBox" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Rating:
            <asp:Label ID="RatingLabel" runat="server" Text='<%# Bind("Rating") %>' />
            <br />
            Picture:
            <asp:Label ID="PictureLabel" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Opinion:
            <asp:Label ID="OpinionLabel" runat="server" Text='<%# Bind("Opinion") %>' />
            <br />
            Game_Name:
            <asp:Label ID="Game_NameLabel" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
        </div>


    <div>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Upcoming_Games_Review] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Upcoming_Games_Review] ([Rating], [Picture], [Description], [Opinion], [Game_Name]) VALUES (@Rating, @Picture, @Description, @Opinion, @Game_Name)" SelectCommand="SELECT * FROM [Upcoming_Games_Review]" UpdateCommand="UPDATE [Upcoming_Games_Review] SET [Rating] = @Rating, [Picture] = @Picture, [Description] = @Description, [Opinion] = @Opinion, [Game_Name] = @Game_Name WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Rating" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Opinion" Type="String" />
            <asp:Parameter Name="Game_Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Rating" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Opinion" Type="String" />
            <asp:Parameter Name="Game_Name" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView4" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource4">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Rating:
            <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
            <br />
            Picture:
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Opinion:
            <asp:TextBox ID="OpinionTextBox" runat="server" Text='<%# Bind("Opinion") %>' />
            <br />
            Game_Name:
            <asp:TextBox ID="Game_NameTextBox" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Rating:
            <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
            <br />
            Picture:
            <asp:TextBox ID="PictureTextBox" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Opinion:
            <asp:TextBox ID="OpinionTextBox" runat="server" Text='<%# Bind("Opinion") %>' />
            <br />
            Game_Name:
            <asp:TextBox ID="Game_NameTextBox" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Rating:
            <asp:Label ID="RatingLabel" runat="server" Text='<%# Bind("Rating") %>' />
            <br />
            Picture:
            <asp:Label ID="PictureLabel" runat="server" Text='<%# Bind("Picture") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Opinion:
            <asp:Label ID="OpinionLabel" runat="server" Text='<%# Bind("Opinion") %>' />
            <br />
            Game_Name:
            <asp:Label ID="Game_NameLabel" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
        </div>


    <div>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Comments] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Comments] ([User_Name], [User_Pic], [Comment]) VALUES (@User_Name, @User_Pic, @Comment)" SelectCommand="SELECT * FROM [Comments]" UpdateCommand="UPDATE [Comments] SET [User_Name] = @User_Name, [User_Pic] = @User_Pic, [Comment] = @Comment WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="User_Name" Type="String" />
            <asp:Parameter Name="User_Pic" Type="String" />
            <asp:Parameter Name="Comment" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_Name" Type="String" />
            <asp:Parameter Name="User_Pic" Type="String" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView5" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource5">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            User_Name:
            <asp:TextBox ID="User_NameTextBox" runat="server" Text='<%# Bind("User_Name") %>' />
            <br />
            User_Pic:
            <asp:TextBox ID="User_PicTextBox" runat="server" Text='<%# Bind("User_Pic") %>' />
            <br />
            Comment:
            <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            User_Name:
            <asp:TextBox ID="User_NameTextBox" runat="server" Text='<%# Bind("User_Name") %>' />
            <br />
            User_Pic:
            <asp:TextBox ID="User_PicTextBox" runat="server" Text='<%# Bind("User_Pic") %>' />
            <br />
            Comment:
            <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            User_Name:
            <asp:Label ID="User_NameLabel" runat="server" Text='<%# Bind("User_Name") %>' />
            <br />
            User_Pic:
            <asp:Label ID="User_PicLabel" runat="server" Text='<%# Bind("User_Pic") %>' />
            <br />
            Comment:
            <asp:Label ID="CommentLabel" runat="server" Text='<%# Bind("Comment") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
        </div>



    <div>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Upcoming_Comments] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Upcoming_Comments] ([User_Name], [Game_Name], [Comment]) VALUES (@User_Name, @Game_Name, @Comment)" SelectCommand="SELECT * FROM [Upcoming_Comments]" UpdateCommand="UPDATE [Upcoming_Comments] SET [User_Name] = @User_Name, [Game_Name] = @Game_Name, [Comment] = @Comment WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="User_Name" Type="String" />
            <asp:Parameter Name="Game_Name" Type="String" />
            <asp:Parameter Name="Comment" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_Name" Type="String" />
            <asp:Parameter Name="Game_Name" Type="String" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView6" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource6">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            User_Name:
            <asp:TextBox ID="User_NameTextBox" runat="server" Text='<%# Bind("User_Name") %>' />
            <br />
            Game_Name:
            <asp:TextBox ID="Game_NameTextBox" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            Comment:
            <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            User_Name:
            <asp:TextBox ID="User_NameTextBox" runat="server" Text='<%# Bind("User_Name") %>' />
            <br />
            Game_Name:
            <asp:TextBox ID="Game_NameTextBox" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            Comment:
            <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            User_Name:
            <asp:Label ID="User_NameLabel" runat="server" Text='<%# Bind("User_Name") %>' />
            <br />
            Game_Name:
            <asp:Label ID="Game_NameLabel" runat="server" Text='<%# Bind("Game_Name") %>' />
            <br />
            Comment:
            <asp:Label ID="CommentLabel" runat="server" Text='<%# Bind("Comment") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    </div>




</asp:Content>

