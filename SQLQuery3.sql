USE [dj-project]
GO

INSERT INTO [dbo].[products_products]
           ([name]
           ,[description]
           ,[price]
           ,[stock]
           ,[created_at]
           ,[updated_at]
           ,[code])
     VALUES
		( 'Levis 501 Original Fit Jeans', 'Classic straight leg jeans', 59.99, 100, GETDATE(), GETDATE(), 'LV501'),
		( 'Nike Air Max 270', 'Comfortable and stylish sneakers', 150.00, 200, GETDATE(), GETDATE(), 'NAM270'),
		( 'Adidas Originals Hoodie', 'Comfortable and stylish hoodie', 70.00, 150, GETDATE(), GETDATE(), 'AOH001'),
		( 'Ralph Lauren Polo Shirt', 'Classic fit polo shirt', 85.00, 250, GETDATE(), GETDATE(), 'RLPS001'),
		( 'North Face Puffer Jacket', 'Warm and durable puffer jacket', 199.99, 300, GETDATE(), GETDATE(), 'NFPJ001');
GO


