SELECT Item.Item_Name,Category.Category_ID, Category.Category_Name
FROM Category
FULL OUTER JOIN Item
ON Item.Category_ID = Category.Category_ID