create database SistemaDeControlAhorrosyGasto 

Use SistemaDeControlAhorrosyGasto

create table Usuarios (
Id int primary key identity(1,1),
Usuario varchar(100),
Contrase�a varchar(100)
)

create procedure sp_validarUsuario 
@Usuario varchar(50),
@Contrase�a varchar(50),
@Patron varchar(50)
as
begin 
select*from Usuarios where Usuario=@Usuario and CONVERT(varchar(50),DECRYPTBYPASSPHRASE(@Patron, Contrase�a)) =@Contrase�a
end
