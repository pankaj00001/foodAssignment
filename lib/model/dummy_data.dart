import 'food_list_model.dart';

final mydata = FoodListModel.fromJson({
"ViewtypeList": [
{
"viewtype": "Banner",
"datatype": "Main_banner",
"title": "Today's Offers",
"filter": [],
"designtype": "BannerRecView",
"data": [
{
"banner_name": "First Banner",
"appbanner_image": "https://food.56testing.club/media/main_banner/appbanner_image1737046787.webp",
"redirect_to": "Seller",
"redirect_id": "64"
},
{
"banner_name": "Second Banner",
"appbanner_image": "https://food.56testing.club/media/main_banner/appbanner_image1737047820.webp",
"redirect_to": "Seller",
"redirect_id": "65"
},
{
"banner_name": "Third Banner",
"appbanner_image": "https://food.56testing.club/media/main_banner/appbanner_image1737047853.webp",
"redirect_to": "Seller",
"redirect_id": "64"
}
]
},
{
"viewtype": "Category",
"datatype": "Category_List",
"title": "Pick Taste and Enjoy",
"filter": [],
"designtype": "CategoryRecView",
"data": [
{
"id": 1,
"cat_name": "North Indian",
"cat_image": "https://food.56testing.club/media/category/category1737048381.webp"
},
{
"id": 2,
"cat_name": "Non-Veg",
"cat_image": "https://food.56testing.club/media/category/category1737048432.webp"
},
{
"id": 3,
"cat_name": "Mom's",
"cat_image": "https://food.56testing.club/media/category/category1737048470.webp"
},
{
"id": 4,
"cat_name": "Pizza",
"cat_image": "https://food.56testing.club/media/category/category1737048505.webp"
},
{
"id": 5,
"cat_name": "Biryani",
"cat_image": "https://food.56testing.club/media/category/category1737048552.webp"
},
{
"id": 6,
"cat_name": "Chinese",
"cat_image": "https://food.56testing.club/media/category/category1737048587.webp"
},
{
"id": 7,
"cat_name": "Rolls",
"cat_image": "https://food.56testing.club/media/category/category1737048620.webp"
},
{
"id": 8,
"cat_name": "Pasta",
"cat_image": "https://food.56testing.club/media/category/category1737048638.webp"
}
]
},
{
"viewtype": "Products",
"datatype": "Most_discounted_product_added",
"title": "Crowd Favourites",
"designtype": "OneRowProductGrid",
"filter": [
{
"id": 1,
"filter_type": "sort_by",
"filter_list": [
{
"id": 1,
"item": "min_to_max"
},
{
"id": 2,
"item": "max_to_min"
}
]
},
{
"id": 1,
"filter_type": "veg_type",
"filter_list": [
{
"id": 1,
"item": "veg"
},
{
"id": 2,
"item": "non-veg"
}
]
}
],
"data": [
{
"id": 16,
"price": 228.8,
"discounted_price": 31,
"discount": "12%",
"image": "https://food.56testing.club/media/product/product_img1737455669.webp",
"product_name": "White Pizza",
"product_des": "<p>White pizza, also known as <em>pizza bianca</em>, is a style of pizza that forgoes the traditional tomato sauce in favor of a white base, often made of olive oil, ricotta, or a béchamel sauce.</p>",
"last_orderdate": "",
"weight": [
{
"id": 25,
"weight": "1.3kg"
}
],
"sizeid": 25,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737015881.webp",
"veg_type": 1,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 15,
"price": 202.4,
"discounted_price": 28,
"discount": "12%",
"image": "https://food.56testing.club/media/product/product_img1737455551.webp",
"product_name": "Mushroom Pizza",
"product_des": "<p>Mushroom pizza is a rich and earthy dish that showcases mushrooms as the star ingredient. It combines the savory, umami flavor of mushrooms with cheese, sauce, and other complementary toppings, making it a favorite for vegetarians and pizza lovers alike</p>",
"last_orderdate": "",
"weight": [
{
"id": 24,
"weight": "1kg"
}
],
"sizeid": 24,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737015881.webp",
"veg_type": 1,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 14,
"price": 160,
"discounted_price": 40,
"discount": "20%",
"image": "https://food.56testing.club/media/product/product_img1737455412.webp",
"product_name": "Corn Pizza",
"product_des": "<p>Corn pizza is a delicious and unique take on the classic pizza, with sweet corn kernels as one of the star ingredients. It combines the sweetness of corn with savory toppings and cheese for a delightful balance of flavors.</p>",
"last_orderdate": "",
"weight": [
{
"id": 23,
"weight": "1.5kg"
}
],
"sizeid": 23,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737015881.webp",
"veg_type": 2,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 13,
"price": 105.6,
"discounted_price": 14,
"discount": "12%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"last_orderdate": "",
"weight": [
{
"id": 22,
"weight": "1kg"
}
],
"sizeid": 22,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737015881.webp",
"veg_type": 0,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 12,
"price": 202.4,
"discounted_price": 28,
"discount": "12%",
"image": "https://food.56testing.club/media/product/product_img1737455669.webp",
"product_name": "White Pizza",
"product_des": "<p>White pizza, also known as <em>pizza bianca</em>, is a style of pizza that forgoes the traditional tomato sauce in favor of a white base, often made of olive oil, ricotta, or a béchamel sauce.</p>",
"last_orderdate": "",
"weight": [
{
"id": 20,
"weight": "1kg"
},
{
"id": 21,
"weight": "1.3kg"
}
],
"sizeid": 20,
"seller_name": "Thali Traditions",
"seller_id": 65,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737018980.webp",
"veg_type": 1,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 11,
"price": 160,
"discounted_price": 40,
"discount": "20%",
"image": "https://food.56testing.club/media/product/product_img1737455551.webp",
"product_name": "Mushroom Pizza",
"product_des": "<p>Mushroom pizza is a rich and earthy dish that showcases mushrooms as the star ingredient. It combines the savory, umami flavor of mushrooms with cheese, sauce, and other complementary toppings, making it a favorite for vegetarians and pizza lovers alike</p>",
"last_orderdate": "",
"weight": [
{
"id": 19,
"weight": "1.5kg"
},
{
"id": 18,
"weight": "1kg"
}
],
"sizeid": 19,
"seller_name": "Thali Traditions",
"seller_id": 65,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737018980.webp",
"veg_type": 1,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 10,
"price": 114,
"discounted_price": 6,
"discount": "5%",
"image": "https://food.56testing.club/media/product/product_img1737455412.webp",
"product_name": "Corn Pizza",
"product_des": "<p>Corn pizza is a delicious and unique take on the classic pizza, with sweet corn kernels as one of the star ingredients. It combines the sweetness of corn with savory toppings and cheese for a delightful balance of flavors.</p>",
"last_orderdate": "",
"weight": [
{
"id": 17,
"weight": "1kg"
}
],
"sizeid": 17,
"seller_name": "Thali Traditions",
"seller_id": 65,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737018980.webp",
"veg_type": 2,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 9,
"price": 198.9,
"discounted_price": 35,
"discount": "15%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"last_orderdate": "",
"weight": [
{
"id": 16,
"weight": "1kg"
}
],
"sizeid": 16,
"seller_name": "Thali Traditions",
"seller_id": 65,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737018980.webp",
"veg_type": 0,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 8,
"price": 202.4,
"discounted_price": 28,
"discount": "12%",
"image": "https://food.56testing.club/media/product/product_img1737455669.webp",
"product_name": "White Pizza",
"product_des": "<p>White pizza, also known as <em>pizza bianca</em>, is a style of pizza that forgoes the traditional tomato sauce in favor of a white base, often made of olive oil, ricotta, or a béchamel sauce.</p>",
"last_orderdate": "",
"weight": [
{
"id": 14,
"weight": "1kg"
},
{
"id": 15,
"weight": "1.3kg"
}
],
"sizeid": 14,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737019293.webp",
"veg_type": 1,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 7,
"price": 160,
"discounted_price": 40,
"discount": "20%",
"image": "https://food.56testing.club/media/product/product_img1737455551.webp",
"product_name": "Mushroom Pizza",
"product_des": "<p>Mushroom pizza is a rich and earthy dish that showcases mushrooms as the star ingredient. It combines the savory, umami flavor of mushrooms with cheese, sauce, and other complementary toppings, making it a favorite for vegetarians and pizza lovers alike</p>",
"last_orderdate": "",
"weight": [
{
"id": 13,
"weight": "1.5kg"
},
{
"id": 12,
"weight": "1kg"
}
],
"sizeid": 13,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737019293.webp",
"veg_type": 1,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 6,
"price": 114,
"discounted_price": 6,
"discount": "5%",
"image": "https://food.56testing.club/media/product/product_img1737455412.webp",
"product_name": "Corn Pizza",
"product_des": "<p>Corn pizza is a delicious and unique take on the classic pizza, with sweet corn kernels as one of the star ingredients. It combines the sweetness of corn with savory toppings and cheese for a delightful balance of flavors.</p>",
"last_orderdate": "",
"weight": [
{
"id": 11,
"weight": "1kg"
}
],
"sizeid": 11,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737019293.webp",
"veg_type": 2,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 5,
"price": 198.9,
"discounted_price": 35,
"discount": "15%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"last_orderdate": "",
"weight": [
{
"id": 10,
"weight": "1kg"
}
],
"sizeid": 10,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737019293.webp",
"veg_type": 0,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 4,
"price": 528,
"discounted_price": 72,
"discount": "12%",
"image": "https://food.56testing.club/media/product/product_img1737056722.webp",
"product_name": "Faram House Pizza",
"product_des": "the farmhouse pizza is loaded with various fresh vegetarian toppings. Crunchy and crisp capsicum, juicy tomatoes, and succulent mushrooms are the prime toppings in a farmhouse pizza. ",
"last_orderdate": "",
"weight": [
{
"id": 9,
"weight": "2kg"
},
{
"id": 8,
"weight": "1kg"
}
],
"sizeid": 9,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737019293.webp",
"veg_type": 1,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 2,
"price": 224,
"discounted_price": 96,
"discount": "30%",
"image": "https://food.56testing.club/media/product/product_img1737056060.webp",
"product_name": "Chicken Surma",
"product_des": "A hot and spicy Maharashtrian curry made with a special Kolhapuri masala.",
"last_orderdate": "",
"weight": [
{
"id": 5,
"weight": "2kg"
},
{
"id": 4,
"weight": "1kg"
},
{
"id": 3,
"weight": ".5kg"
}
],
"sizeid": 5,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737019293.webp",
"veg_type": 0,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
},
{
"id": 1,
"price": 300,
"discounted_price": 100,
"discount": "25%",
"image": "https://food.56testing.club/media/product/product_img1737055692.webp",
"product_name": "Indian Chicken Curry",
"product_des": "A curry made with a double quantity of onions, added at different stages of cooking for distinct textures and flavors.",
"last_orderdate": "",
"weight": [
{
"id": 2,
"weight": "2kg"
},
{
"id": 1,
"weight": "1kg"
}
],
"sizeid": 2,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737019293.webp",
"veg_type": 0,
"returnable": "",
"fav_status": 1,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": "3",
"review": "3"
}
]
},
{
"viewtype": "Products",
"datatype": "Trending Dishes",
"title": "Popular Now",
"designtype": "OneRowProductGrid",
"filter": [
{
"id": 1,
"filter_type": "Recommanded",
"filter_list": []
},
{
"id": 1,
"filter_type": "Fast Food",
"filter_list": []
}
],
"data": [
{
"id": 1,
"price": 300,
"discounted_price": 100,
"discount": "25%",
"image": "https://food.56testing.club/media/product/product_img1737055692.webp",
"product_name": "Indian Chicken Curry",
"product_des": "A curry made with a double quantity of onions, added at different stages of cooking for distinct textures and flavors.",
"last_orderdate": "",
"weight": [
{
"id": 2,
"weight": "2kg"
},
{
"id": 1,
"weight": "1kg"
}
],
"sizeid": 2,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737019293.webp",
"veg_type": 0,
"returnable": "",
"fav_status": 1,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": "3",
"review": "3"
},
{
"id": 2,
"price": 224,
"discounted_price": 96,
"discount": "30%",
"image": "https://food.56testing.club/media/product/product_img1737056060.webp",
"product_name": "Chicken Surma",
"product_des": "A hot and spicy Maharashtrian curry made with a special Kolhapuri masala.",
"last_orderdate": "",
"weight": [
{
"id": 5,
"weight": "2kg"
},
{
"id": 4,
"weight": "1kg"
},
{
"id": 3,
"weight": ".5kg"
}
],
"sizeid": 5,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737019293.webp",
"veg_type": 0,
"returnable": "",
"fav_status": 0,
"fav_icon": "",
"time": "40min",
"distance": "1km",
"rating": 0,
"review": "0"
}
]
},
{
"viewtype": "Seller",
"datatype": "caraousel",
"title": "Recommended Order For You",
"designtype": "VerticalList",
"data": [
{
"seller_details": {
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_rating": 0,
"seller_address": "Sector-29,faridabad,Haryana",
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737019293.webp",
"seller_one_line_description": "Zaika Zest brings you the vibrant flavors of India with a modern twist. Savor a fusion of classic and contemporary dishes crafted with authentic spices and fresh ingredients, all served in a lively and inviting ambiance that celebrates the zest of Indian cuisine.",
"seller_long_description": "",
"veg_type": 0,
"seller_popular_products": [
{
"prod_id": 1,
"prod_name": "Indian Chicken Curry",
"prod_description": "A curry made with a double quantity of onions, added at different stages of cooking for distinct textures and flavors.",
"prod_price": 176,
"prod_image": "https://food.56testing.club/media/product/product_img1737055692.webp"
},
{
"prod_id": 2,
"prod_name": "Chicken Surma",
"prod_description": "A hot and spicy Maharashtrian curry made with a special Kolhapuri masala.",
"prod_price": 176,
"prod_image": "https://food.56testing.club/media/product/product_img1737056060.webp"
}
]
}
},
{
"seller_details": {
"seller_name": "Thali Traditions",
"seller_id": 65,
"seller_rating": 0,
"seller_address": "Gurugoan,Gurugram,Haryana",
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737018980.webp",
"seller_one_line_description": "Thali Traditions is a celebration of India’s culinary heritage, offering a delightful array of authentic dishes served in a traditional thali. Relish the perfect balance of flavors with aromatic curries, dal, rice, and freshly made bread, all in a vibrant setting that radiates warmth and culture",
"seller_long_description": "",
"veg_type": 0,
"seller_popular_products": []
}
},
{
"seller_details": {
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_rating": 0,
"seller_address": "Gurugoan,FARIDABAD,Haryana",
"seller_image": "https://food.56testing.club/media/seller_image/shopimg1737015881.webp",
"seller_one_line_description": "Green Fork Bistro is a vegetarian paradise offering fresh, locally-sourced dishes bursting with flavor. With a cozy ambiance, it’s perfect for health-conscious diners or foodies seeking plant-based delights. Experience the joy of wholesome, crea",
"seller_long_description": "",
"veg_type": 0,
"seller_popular_products": []
}
}
]
},
{
"viewtype": "Products",
"datatype": "recent_ordered",
"title": "Recently Ordered",
"designtype": "OneRowProductGrid",
"filter": [
{
"id": 1,
"filter_type": "sort_by",
"filter_list": [
{
"id": 1,
"item": "min_to_max"
},
{
"id": 2,
"item": "max_to_min"
}
]
},
{
"id": 2,
"filter_type": "veg_type",
"filter_list": [
{
"id": 1,
"item": "veg"
},
{
"id": 2,
"item": "non-veg"
}
]
}
],
"data": [
{
"id": 13,
"price": 105.6,
"discounted_price": 0,
"discount": "0%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"sizeid": 22,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737015881.webp",
"veg_type": 0,
"returnable": "",
"last_orderdate": "2025-02-03 19:19:32",
"fav_status": 0,
"rating": 0,
"review": "0"
},
{
"id": 13,
"price": 105.6,
"discounted_price": 0,
"discount": "0%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"sizeid": 22,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737015881.webp",
"veg_type": 0,
"returnable": "",
"last_orderdate": "2025-02-03 19:18:47",
"fav_status": 0,
"rating": 0,
"review": "0"
},
{
"id": 13,
"price": 105.6,
"discounted_price": 0,
"discount": "0%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"sizeid": 22,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737015881.webp",
"veg_type": 0,
"returnable": "",
"last_orderdate": "2025-02-03 19:11:36",
"fav_status": 0,
"rating": 0,
"review": "0"
},
{
"id": 13,
"price": 105.6,
"discounted_price": 0,
"discount": "0%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"sizeid": 22,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737015881.webp",
"veg_type": 0,
"returnable": "",
"last_orderdate": "2025-02-03 19:08:26",
"fav_status": 0,
"rating": 0,
"review": "0"
},
{
"id": 13,
"price": 105.6,
"discounted_price": 0,
"discount": "0%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"sizeid": 22,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737015881.webp",
"veg_type": 0,
"returnable": "",
"last_orderdate": "2025-02-03 10:21:53",
"fav_status": 0,
"rating": 0,
"review": "0"
},
{
"id": 13,
"price": 105.6,
"discounted_price": 0,
"discount": "0%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"sizeid": 22,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737015881.webp",
"veg_type": 0,
"returnable": "",
"last_orderdate": "2025-02-03 10:10:58",
"fav_status": 0,
"rating": 0,
"review": "0"
},
{
"id": 13,
"price": 105.6,
"discounted_price": 0,
"discount": "0%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"sizeid": 22,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737015881.webp",
"veg_type": 0,
"returnable": "",
"last_orderdate": "2025-02-03 10:07:38",
"fav_status": 0,
"rating": 0,
"review": "0"
},
{
"id": 13,
"price": 105.6,
"discounted_price": 0,
"discount": "0%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"sizeid": 22,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737015881.webp",
"veg_type": 0,
"returnable": "",
"last_orderdate": "2025-02-01 19:13:34",
"fav_status": 0,
"rating": 0,
"review": "0"
},
{
"id": 13,
"price": 105.6,
"discounted_price": 0,
"discount": "0%",
"image": "https://food.56testing.club/media/product/product_img1737455300.webp",
"product_name": "Chicken Pizza",
"product_des": "<p>Chicken pizza is a versatile and popular dish that combines pizza dough with a variety of chicken-based toppings, sauces, and cheeses</p>",
"sizeid": 22,
"seller_name": "Green Fork Bistro",
"seller_id": 64,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737015881.webp",
"veg_type": 0,
"returnable": "",
"last_orderdate": "2025-02-01 19:04:42",
"fav_status": 0,
"rating": 0,
"review": "0"
},
{
"id": 2,
"price": 56,
"discounted_price": 84,
"discount": "60%",
"image": "https://food.56testing.club/media/product/product_img1737056060.webp",
"product_name": "Chicken Surma",
"product_des": "A hot and spicy Maharashtrian curry made with a special Kolhapuri masala.",
"sizeid": 209,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737019293.webp",
"veg_type": 0,
"returnable": "",
"last_orderdate": "2024-11-08 09:52:36",
"fav_status": 1,
"rating": 0,
"review": "0"
},
{
"id": 4,
"price": 78.5,
"discounted_price": 1.6,
"discount": "2%",
"image": "https://food.56testing.club/media/product/product_img1737056722.webp",
"product_name": "Faram House Pizza",
"product_des": "the farmhouse pizza is loaded with various fresh vegetarian toppings. Crunchy and crisp capsicum, juicy tomatoes, and succulent mushrooms are the prime toppings in a farmhouse pizza. ",
"sizeid": 35,
"seller_name": "Zaika Zest ",
"seller_id": 66,
"seller_image": "https://food.56testing.club/./media/seller_image/shopimg1737019293.webp",
"veg_type": 1,
"returnable": "",
"last_orderdate": "2024-09-07 16:22:50",
"fav_status": 0,
"rating": 0,
"review": "0"
}
]
}
],
"theme_colors": [
{
"bg_clr": "#f5af19 ,#32a8a4",
"service_id": "3",
"txt_title_clr": "#f5af19,#f772a1",
"txt_clr": "#f5af19,#ac72f7",
"prd_clr": "#f5af19,#325ea8",
"cat_clr": "#f5af19,#327da8"
},
{
"bg_clr": "#f5af19 ,#32a8a4",
"service_id": "2",
"txt_title_clr": "#f5af19,#f772a1",
"txt_clr": "#f5af19,#ac72f7",
"prd_clr": "#f5af19,#325ea8",
"cat_clr": "#f5af19,#327da8"
}
],
"status": "success",
"statusCode": 200,
"message": "success",
"type": "Food"
});