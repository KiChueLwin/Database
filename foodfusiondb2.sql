-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2025 at 08:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodfusiondb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'Ki Ki', 'admin@gmail.com', '0987765678', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_text`, `comment_date`, `user_id`, `recipe_id`) VALUES
(1, 'This is amazing!!!!!', '2025-04-05 04:52:54', 36, 22),
(4, 'So good', '2025-04-05 04:58:18', 36, 23),
(5, 'test', '2025-04-05 04:59:09', 36, 24),
(7, 'I tried this and really good.', '2025-04-05 05:07:52', 13, 22),
(8, 'This is really good.', '2025-04-05 05:08:27', 13, 21),
(9, 'This is really good.', '2025-04-05 05:10:29', 13, 21),
(10, 'This is my first try. Thank you!!!!!', '2025-04-05 05:11:40', 12, 20),
(11, 'This is my first try. Thank you!!!!!', '2025-04-05 05:18:30', 12, 20),
(13, 'so good', '2025-04-06 04:12:46', 13, 24),
(14, 'test', '2025-04-06 05:07:43', 13, 23),
(15, 'test', '2025-04-19 20:28:13', 12, 24),
(16, 'The best', '2025-04-20 15:23:12', 12, 21),
(17, 'very useful vlog', '2025-04-21 16:06:55', 44, 36),
(18, 'good', '2025-04-26 15:13:40', 44, 24);

-- --------------------------------------------------------

--
-- Table structure for table `community_recipes`
--

CREATE TABLE `community_recipes` (
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `recipe_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `cuisine_type` varchar(100) DEFAULT NULL,
  `dietary_preference` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `community_recipes`
--

INSERT INTO `community_recipes` (`recipe_id`, `user_id`, `recipe_name`, `description`, `ingredients`, `instructions`, `cuisine_type`, `dietary_preference`, `photo`, `submission_date`) VALUES
(17, 36, 'Classic Margherita Pizza', 'A simple yet delicious pizza with fresh tomatoes, mozzarella, and basil.', 'Pizza dough, tomato sauce, fresh mozzarella cheese, fresh basil leaves, olive oil, salt, pepper.', 'Preheat oven. Spread tomato sauce on dough. Top with mozzarella and basil. Drizzle with olive oil. Season with salt and pepper. Bake until crust is golden and cheese is melted.', 'Italian', 'Vegetarian', 'community_uploads/67e3ae889a051_images (14).jpg', '2025-03-26 07:36:40'),
(18, 36, 'Chicken Stir-Fry', 'A quick and healthy stir-fry with chicken and colorful vegetables.', 'Chicken breast, broccoli florets, carrots (sliced), bell peppers (sliced), soy sauce, ginger (grated), garlic (minced), sesame oil.', 'Stir-fry chicken until cooked. Add vegetables and stir-fry until tender-crisp. Stir in soy sauce, ginger, garlic, and sesame oil. Serve over rice.', 'Chinese', 'Other', 'community_uploads/67e3af35bee7e_Chicken-Stir-Fry.jpg', '2025-03-26 07:39:33'),
(19, 36, 'Black Bean Burgers', 'Flavorful and hearty vegetarian burgers made with black beans.', 'Black beans (canned, rinsed and drained), breadcrumbs, onion (finely chopped), garlic (minced), cumin, chili powder, salt, pepper, burger buns.', 'Mash beans. Mix with breadcrumbs, onion, garlic, and spices. Form into patties. Cook on a grill or pan until heated through. Serve on buns.', 'Other', 'Vegetarian', 'community_uploads/67e3af824981c_images (15).jpg', '2025-03-26 07:40:50'),
(20, 36, 'Beef Tacos', 'Easy and customizable beef tacos for a quick meal.', 'Ground beef, taco seasoning, taco shells or tortillas, lettuce (shredded), tomato (diced), onion (chopped), cheese (shredded), salsa.', 'Brown ground beef and drain excess fat. Stir in taco seasoning. Warm tortillas. Fill with beef and your favorite toppings.', 'Mexican', 'Other', 'community_uploads/67e3b01452456_ground-beef-tacos-square.jpg', '2025-03-26 07:43:16'),
(21, 36, 'Vegan Lentil Soup', 'A nourishing and satisfying vegan soup packed with lentils and vegetables', 'Lentils, vegetable broth, carrots (diced), celery (diced), onion (diced), garlic (minced), diced tomatoes, cumin, turmeric, salt, pepper.', 'Sauté vegetables. Add lentils, broth, tomatoes, and spices. Simmer until lentils are tender. Season to taste.', 'Other', 'Vegan', 'community_uploads/67e3b09913512_download (3).jpg', '2025-03-26 07:45:29'),
(22, 36, 'Pad See Ew', 'A popular Thai stir-fried noodle dish with a savory and slightly sweet sauce.', 'Wide rice noodles, chicken or tofu, Chinese broccoli, eggs, garlic (minced), dark soy sauce, light soy sauce, sugar, cooking oil.', 'Stir-fry protein. Add noodles and vegetables. Whisk eggs and add to pan. Stir in sauce ingredients. Cook until noodles are tender.', 'Thai', 'Other', 'community_uploads/67e3b13261fd8_merlin_203116089_36c661da-aef9-4bb3-a693-0701375b2160-mediumSquareAt3X.jpg', '2025-03-26 07:48:02'),
(23, 36, 'Blueberry Muffins', 'Delicious and fluffy muffins bursting with fresh blueberries.', 'Flour, sugar, baking powder, salt, eggs, milk, vegetable oil, vanilla extract, fresh blueberries.', 'Mix dry ingredients. Whisk wet ingredients. Combine wet and dry. Fold in blueberries. Bake until golden.', 'American', 'Other', 'community_uploads/67e3b1c47ecf1_Blueberry-Muffin_EXPS_TOHVP24_1901_MF_08_09_2.jpg', '2025-03-26 07:50:28'),
(24, 39, 'Lemon Garlic Shrimp Pasta', 'A quick and easy pasta dish with shrimp, garlic, and a zesty lemon sauce.', 'Pasta, shrimp (peeled and deveined), garlic (minced), butter, olive oil, lemon juice, white wine (optional), parsley, salt, pepper.', 'Cook pasta. Sauté shrimp with garlic. Add butter, oil, lemon juice, and wine. Toss with pasta and parsley. Season.', 'Italian', 'Other', 'community_uploads/67e3b28d69558_Shrimp-Pasta-12.jpg', '2025-03-26 07:53:49'),
(36, 44, 'Testing', 'test', 'test', 'test', 'Italian', 'Vegan', 'community_uploads/68061193da115_Fresh_Tomato_Sauce_(Unsplash).jpg', '2025-04-21 09:36:19'),
(37, 44, 'Testing', 'tt', 'tt', 'ttt', 'Italian', 'Gluten-Free', 'community_uploads/680c9d0f8f3d1_Fresh_Tomato_Sauce_(Unsplash).jpg', '2025-04-26 08:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `message`) VALUES
(1, 'Ki Chue Lwin', 'kichuelwin@gmail.com', 'this is first message'),
(4, 'test', 'test@gmail.com', 'test'),
(5, 'Ki Chue Lwin', 'kichuelwin@gmail.com', 'hi'),
(8, 'Ki Chue Lwin', 'kichuelwin@gmail.com', 'I really love this website!!');

-- --------------------------------------------------------

--
-- Table structure for table `culinary`
--

CREATE TABLE `culinary` (
  `culinary_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `culinary`
--

INSERT INTO `culinary` (`culinary_id`, `name`, `description`, `photo`) VALUES
(2, 'Plant-Based Everything', 'The \"Plant-Based Everything\" trend signifies a significant shift in consumer preferences towards vegan and vegetarian diets. This includes innovative meat alternatives, dairy-free products, and creative vegetable-centric dishes. ', 'upload/trend1.jpg'),
(3, ' Fermented Foods', 'The resurgence of fermented foods like kimchi, kombucha, and sourdough is driven by a growing awareness of their health benefits. These foods, rich in probiotics, are celebrated for their gut-friendly properties and unique tangy flavors. Chefs are incorporating fermented ingredients into diverse dishes, adding depth and complexity.', 'upload/download (2).jpg'),
(4, 'Global Street Food', 'The \"Global Street Food\" trend celebrates the vibrant and diverse flavors found in street food cultures worldwide. From Mexican tacos to Thai noodles, chefs are drawing inspiration from authentic street food recipes, creating fusion dishes and exploring bold flavor combinations.', 'upload/images (11).jpg'),
(5, 'Sustainable Seafood', 'With increasing concerns about overfishing and environmental impact, the \"Sustainable Seafood\" trend emphasizes responsible sourcing and eco-friendly practices. Restaurants are prioritizing seafood from well-managed fisheries, promoting lesser-known species, and reducing waste.', 'upload/kobejones-Environmentally-Sustainable-Seafood-in-Australia.jpg'),
(6, 'Gourmet Comfort Food', '\"Gourmet Comfort Food\" takes classic comfort dishes to a new level by using high-quality ingredients and innovative techniques. Think of truffle mac and cheese, artisanal grilled cheese sandwiches, or elevated versions of familiar favorites.', 'upload/472x310-SMOKY-BEAN-CHILLI-07f12850-20ce-4f9c-a396-5c7aee8e51e2-0-472x310.jpg'),
(7, 'Hyperlocal Ingredients', 'Driven by a desire for freshness and a connection to local communities, the \"Hyperlocal Ingredients\" trend encourages sourcing food from nearby farms, producers, and even urban gardens. This trend supports local economies and reduces the environmental impact of long-distance transportation.', 'upload/advantages-hyperlocal-food-movement1.jpg'),
(8, 'CBD-Infused Foods', 'The integration of CBD into culinary creations is a growing trend, with chefs experimenting with CBD-infused oils, sauces, and desserts. This trend is driven by the perceived health benefits of CBD, though regulations and consumer understanding are still evolving.', 'upload/CBDEdible_Lead-AdSt-Evgeniy.jpg'),
(9, 'Zero-Waste Cooking', '\"Zero-Waste Cooking\" aims to minimize food waste by utilizing all parts of ingredients, from vegetable peels to bones. Chefs are creating innovative dishes from scraps, promoting composting, and reducing packaging to create a more sustainable food system.', 'upload/Zero-Waste-Cuisine_banner.jpg'),
(10, 'Cloud Bread', ' \"Cloud Bread\" is a low-carb, gluten-free bread alternative that gained popularity for its light and fluffy texture. Made primarily with eggs, it offers a unique culinary experience for those seeking healthier bread options.', 'upload/Cloud-Bread.webp'),
(11, 'Food Delivery Apps', 'The rise of food delivery apps has transformed the way people access restaurant meals. These platforms offer convenience and a wide variety of culinary options, contributing to the growth of delivery-only restaurants and virtual brands.', 'upload/On-demand-Food-Delivery-App-4.webp'),
(12, ' Meal Kits', 'Meal kits provide pre-portioned ingredients and recipes, simplifying the cooking process for busy individuals. These subscription services offer convenience and reduce food waste, contributing to their growing popularity.', 'upload/MealKit.jpg'),
(13, 'Ghost Kitchens', ' \"Ghost Kitchens\" are delivery-only restaurants without a physical storefront. They operate from shared commercial kitchens, reducing overhead costs and allowing for rapid expansion. This trend has been accelerated by the rise of food delivery apps.', 'upload/images (12).jpg'),
(14, 'Air Fryer Recipes', 'The popularity of air fryers has led to a surge in air fryer recipes. These appliances offer a healthier alternative to deep frying, producing crispy and flavorful dishes with less oil.', 'upload/images (13).jpg'),
(15, 'Dalgona Coffee', '\"Dalgona Coffee\" is a whipped coffee beverage that became a social media sensation. Its unique texture and visually appealing presentation captured the attention of home cooks worldwide.', 'upload/1586875818Dalgona-Coffee.jpg'),
(16, 'Rainbow Foods', '\"Rainbow Foods\" emphasize the use of naturally colorful ingredients to create visually stunning dishes. These dishes are not only aesthetically pleasing but also packed with nutrients from a variety of fruits and vegetables.', 'upload/shutterstock_1132837571.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `culinary_resources`
--

CREATE TABLE `culinary_resources` (
  `culinary_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `cuisine_type` varchar(50) NOT NULL,
  `audience` varchar(50) NOT NULL,
  `photo` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `culinary_resources`
--

INSERT INTO `culinary_resources` (`culinary_id`, `title`, `type`, `description`, `cuisine_type`, `audience`, `photo`, `file`, `video`, `admin_id`) VALUES
(4, 'Classic Tomato Sauce', 'Recipe Card', 'A simple and versatile tomato sauce perfect for pasta, pizza, and more.', 'Italian', 'Beginner', 'upload/Fresh_Tomato_Sauce_(Unsplash).jpg', 'upload/HCC_Main_veg_ClassicTomatoSauce_2016-05-13_EN.pdf', '', 1),
(5, 'How to Chop an Onion Like a Pro', 'Kitchen Hack', 'Learn the best techniques for quickly and safely chopping onions.', '', 'Beginner', 'upload/download (4).jpg', NULL, 'https://www.youtube.com/watch?v=ZLYG9gH_13g', 1),
(6, 'Perfect Chocolate Chip Cookies', 'Downloadable Recipe', 'Chewy and delicious chocolate chip cookies, a crowd favorite.', 'American', 'Intermediate', 'upload/master_cookie_dough_22386_16x9.jpg', 'upload/PR_Chocolate_Chip_Cookies.pdf', '', 1),
(7, 'Sushi Rice Preparation', 'Instructional Video', 'Step-by-step guide to making perfect sushi rice at home.', 'Japanese', 'Intermediate', 'upload/Learn-to-make-sushi-at-Food-Sorcery-cookery-school-selection.jpg', NULL, 'https://www.youtube.com/watch?v=wpTW-K6XOnI', 1),
(8, 'Avocado Toast Variations', 'Cooking Tutorial', 'Creative and easy ways to elevate your avocado toast.', '', 'Beginner', 'upload/avocado-toast-480x270.jpg', NULL, '', 1),
(9, 'French Onion Soup', 'Recipe Card', 'A rich and flavorful French onion soup with caramelized onions.', 'French', 'Advanced', 'upload/images (16).jpg', 'upload/French Onion Soup.pdf', '', 1),
(10, 'Knife Sharpening Techniques', 'Kitchen Hack', 'Learn how to properly sharpen your kitchen knives.', '', 'Intermediate', 'upload/hocho_togikata_top_seo_1200x1200_crop_center.webp', NULL, 'https://www.youtube.com/watch?v=tahaaHxhbsA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `edu_resources`
--

CREATE TABLE `edu_resources` (
  `edu_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `topic` varchar(50) NOT NULL,
  `audience` varchar(50) NOT NULL,
  `photo` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `file` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `edu_resources`
--

INSERT INTO `edu_resources` (`edu_id`, `name`, `type`, `description`, `topic`, `audience`, `photo`, `video`, `file`) VALUES
(6, 'Wind Power for Urban Farms', 'Infographic', 'Visual representation of how small wind turbines can power vertical farms in urban settings.', 'Wind Energy', 'Intermediate', 'upload/shutterstock_2235576431.webp', NULL, NULL),
(7, 'Biomass Energy in Food Waste Management', 'Video', 'A tutorial explaining how food waste can be converted into biogas for cooking and heating.', 'Biomass Energy', 'Advanced', NULL, 'https://www.youtube.com/watch?v=XXu15NlOuGo', NULL),
(8, 'Geothermal Greenhouses: A Sustainable Approach', 'Downloadable Resource', 'A guide on using geothermal energy to heat greenhouses for year-round crop production.', 'Geothermal Energy', 'Intermediate', NULL, '', 'upload/IP617-geothermal-greenhouses-030921.pdf'),
(9, 'Solar Dehydration for Food Preservation', 'Video', 'Demonstration of how solar energy can be used to dehydrate fruits and vegetables for long-term storage.', 'Solar Energy', 'Beginner', NULL, 'https://www.youtube.com/watch?v=Zl4wTcCPJu0', NULL),
(10, 'Urban Wind Turbines: Case Studies', 'Infographic', 'Examples of successful urban wind turbine installations and their impact on local food production.', 'Wind Energy', 'Advanced', 'upload/Clean_Energy_Case_Study_Mobile_Banner_V2.webp', '', NULL),
(11, 'Biogas Digestors: DIY Guide', 'Downloadable Resource', 'Step-by-step instructions on building a small-scale biogas digester for home use.', 'Biomass Energy', 'Intermediate', NULL, '', 'upload/Biodigester-Manual.pdf'),
(12, 'Geothermal Heating for Aquaculture', 'Video', 'Explanation of how geothermal energy can be used to maintain optimal water temperatures for aquaculture.', 'Geothermal Energy', 'Advanced', NULL, 'https://www.youtube.com/watch?v=7V2NSnw8Tws', NULL),
(13, 'Solar Powered Irrigation Systems', 'Infographic', 'Visual guide to setting up a solar-powered irrigation system for small farms.', 'Solar Energy', 'Beginner', 'upload/images (10).jpg', '', NULL),
(14, 'Wind Energy for Food Processing', 'Downloadable Resource', 'A guide on using wind energy to power food processing equipment like mills and grinders.', 'Wind Energy', 'Intermediate', NULL, '', 'upload/3909_Food_Issues.pdf'),
(15, 'Biomass Pellets: Sustainable Fuel', 'Video', 'Explanation of how biomass pellets are made from agricultural waste and used as a sustainable fuel source for cooking.', 'Biomass Energy', 'Advanced', NULL, 'https://www.youtube.com/watch?v=t7isSiiLxv8', NULL),
(16, 'Geothermal Energy in Food Preservation', 'Infographic', 'Visual representation of how geothermal energy can be used for drying and preserving food products.', 'Geothermal Energy', 'Beginner', 'upload/Fridheimar_tomato_greenhouse_Iceland.jpg', '', NULL),
(17, 'Solar Energy for Vertical Farming', 'Downloadable Resource', 'A comprehensive guide on using solar energy to power vertical farming operations in urban areas.', 'Solar Energy', 'Advanced', NULL, '', 'upload/IJSRET_V10_issue2_243.pdf'),
(18, 'Wind Turbines for Rural Communities', 'Video', 'Case studies of how wind turbines have benefited rural communities in terms of food production and energy independence.', 'Wind Energy', 'Intermediate', NULL, 'https://www.youtube.com/watch?v=eJI8aYxd4Is', NULL),
(19, 'Biomass Energy: From Farm to Fork', 'Infographic', 'A visual journey of how biomass energy is produced from farm waste and used in various stages of food production and consumption.', 'Biomass Energy', 'Beginner', 'upload/rsz_shutterstock_653708227.jpg', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `recipe_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `difficulty_level` varchar(50) NOT NULL,
  `photo` text NOT NULL,
  `dietary_preference` varchar(20) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `name`, `recipe_type`, `description`, `difficulty_level`, `photo`, `dietary_preference`, `admin_id`) VALUES
(4, 'Sweet and Sour Chicken', 'Chinese', 'A popular Chinese dish featuring crispy, deep-fried chicken pieces coated in a vibrant, tangy sauce made from vinegar, sugar, and ketchup. Served with bell peppers, onions, and pineapple for a perfect balance of flavors. Best enjoyed with steamed rice.', 'medium', 'upload/download.jpg', 'Non-Vegetarian', 1),
(5, 'Sushi Rolls', 'Japanese', 'A delicate combination of vinegared rice, fresh seafood, and vegetables rolled in seaweed sheets (nori). Common fillings include tuna, salmon, avocado, cucumber, and crab. Often served with soy sauce, pickled ginger, and wasabi. Requires precise rolling and slicing techniques.', 'hard', 'upload/images (2).jpg', 'Non-Vegetarian', 1),
(6, 'Pad Thai', 'Thai', 'A world-famous Thai noodle dish made with stir-fried rice noodles, eggs, tofu, and shrimp or chicken, tossed in a flavorful tamarind-based sauce. Garnished with crushed peanuts, fresh lime, and bean sprouts for an authentic taste.', 'medium', 'upload/Authentic-Pad-Thai_square-1908-500x500.jpg', 'Non-Vegetarian', 1),
(7, 'Paneer Butter Masala', 'Indian', 'A creamy and rich Indian curry made with soft paneer cubes cooked in a spiced tomato and cashew-based sauce. Infused with butter and cream for a velvety texture, this dish pairs well with naan or basmati rice.', 'easy', 'upload/paneer-butter-masala-5.webp', 'Vegetarian', 1),
(8, 'Kimchi Fried Rice', 'Korean', 'A flavorful, spicy Korean dish made by stir-frying rice with aged kimchi, gochujang (Korean chili paste), garlic, and soy sauce. Topped with a fried egg and sesame seeds for an umami-packed meal. Can be made vegetarian by omitting egg.', 'easy', 'upload/images (3).jpg', 'Vegetarian', 1),
(9, 'Margherita Pizza', 'Italian', 'A classic Italian pizza with a thin, crispy crust topped with tomato sauce, fresh mozzarella cheese, and basil leaves. Baked in a wood-fired oven for a smoky, charred flavor. Simple yet incredibly delicious.', 'medium', 'upload/images (4).jpg', 'Vegetarian', 1),
(10, 'Coq au Vin', 'French', 'A traditional French dish consisting of chicken slowly braised in red wine with mushrooms, onions, bacon, and garlic. The slow-cooking method results in tender meat infused with rich flavors. Typically served with mashed potatoes or crusty bread.', 'hard', 'upload/images (5).jpg', 'Non-Vegetarian', 1),
(11, 'Tacos al Pastor	', 'Mexican', 'A Mexican street food favorite featuring marinated pork cooked on a vertical spit (similar to shawarma). The pork is seasoned with spices, pineapple juice, and chilies, then sliced and served in soft corn tortillas with fresh pineapple, onion, and cilantro.', 'medium', 'upload/images (6).jpg', 'Non-Vegetarian', 1),
(12, 'Cheeseburger', 'American', 'A juicy, grilled beef patty topped with melted cheese, lettuce, tomato, and pickles, served in a toasted bun. Often paired with ketchup, mustard, or mayonnaise. Can be customized with bacon, caramelized onions, or different types of cheese.', 'easy', 'upload/intro-import.jpg', 'Non-Vegetarian', 1),
(13, 'Greek Salad', 'Mediterranean', 'A refreshing and healthy salad made with crisp cucumbers, ripe tomatoes, red onions, Kalamata olives, and feta cheese, dressed with olive oil, lemon juice, and oregano. A perfect light dish, often served as a side to grilled meats or pita bread.', 'easy', 'upload/739C7136-CBA2-4DDC-8D56-ECA409F69AB9-3-735x735.jpeg', 'Vegetarian', 1),
(14, 'Beef Bulgogi', 'Korean', 'A famous Korean barbecue dish featuring thinly sliced beef marinated in a blend of soy sauce, sesame oil, garlic, sugar, and pear juice. The beef is then grilled or stir-fried, creating a sweet and savory flavor. Served with rice and kimchi.', 'medium', 'upload/246172-Easy-Bulgogi-ddmfs-104-4x3-1-c0ddcab340474175a5d1c96bc2edabbc.jpg', 'Non-Vegetarian', 1),
(15, 'Ratatouille', 'French', 'A beautifully layered vegetable dish made with zucchini, eggplant, bell peppers, and tomatoes, all baked together with olive oil and herbs. This slow-cooked, rustic dish is full of Mediterranean flavors and can be served as a side or main course.', 'medium', 'upload/72 dpi webp-4140729_0621_01.webp', 'Vegetarian', 1),
(16, 'Spaghetti Carbonara', 'Italian', 'A creamy and savory Italian pasta dish made with eggs, Parmesan cheese, pancetta (or bacon), and black pepper. The sauce is made by tossing the pasta with eggs and cheese, creating a smooth, rich coating. A simple yet elegant comfort dish.', 'medium', 'upload/images (7).jpg', 'Non-Vegetarian', 1),
(17, 'Tom Yum Soup', 'Thai', 'A spicy and sour Thai soup featuring shrimp, lemongrass, kaffir lime leaves, galangal, and chili paste. This aromatic soup is packed with bold flavors and is often served with jasmine rice. Can be adjusted in spice level to preference.', 'hard', 'upload/images (8).jpg', 'Non-Vegetarian', 1),
(18, 'Falafel Wrap', 'Mediterranean', 'A delicious and filling wrap made with crispy chickpea-based falafel balls, wrapped in a warm pita with fresh lettuce, tomatoes, cucumbers, and a drizzle of creamy tahini sauce. A perfect plant-based meal with Middle Eastern flavors.', 'easy', 'upload/images (9).jpg', 'Vegetarian', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Alice Johnson', 'alice@example.com', '	\r\n$2y$10$c2GkyQQueKyVA7tomsaI.OeOx4z/S2k75f4ee3Sklbs...', '2025-01-23 16:23:19', '2025-04-20 14:22:42'),
(2, 'Bob Smith', 'bob@example.com', '	\r\n$2y$10$3z5oFhtjzA4Yl0K0S7P28.E2NCWGTl0jYBuO.o7iKfi...', '2025-01-23 16:23:19', '2025-04-20 14:22:58'),
(3, 'Charlie Brown', 'charlie@example.com', '$2y$10$6QIq28iFQwnKo9TGCU1YdehmbbI6NAjRLXOthFIlH/NbtYYWTtv02', '2025-01-23 16:23:19', '2025-03-26 08:32:44'),
(4, 'Daisy Miller', 'daisy@example.com', '$2y$10$dZ62WJlWBr2PcyNHPHCb3ehP3S7IcrbCdXp0zBX9DRc9oN2mYso5O', '2025-01-23 16:23:19', '2025-03-18 03:19:37'),
(12, 'kyal', 'kyal@gmail.com', '$2y$10$vOLXntZzCwvMskKqw8QnD.iTZKrsgkUiOYK.CtL5ii1Ryxe.0h0IG', '2025-03-07 09:56:02', '2025-04-04 22:40:54'),
(13, 'star', 'star@gmail.com', '$2y$10$c2GkyQQueKyVA7tomsaI.OeOx4z/S2k75f4ee3Sklbs/SZs4FMp2W', '2025-03-08 09:00:11', '2025-04-04 22:25:33'),
(14, 'kiki', 'kiki@gmail.com', '$2y$10$AdpKfeSXhdZ72S5rqTmoquGV/b1yzHZN3dnvcccEnC54lcxgIAdwu', '2025-03-12 17:46:48', '2025-03-12 17:46:48'),
(15, 'lu', 'lu@gmail.com', '$2y$10$lggSrtXzFAav9hUw/1JcnO5qNSiHYgdVohfBlwXg21SJcaiTY5qR2', '2025-03-12 18:00:01', '2025-03-12 18:00:01'),
(16, 'jiji', 'ji@gmail.com', '$2y$10$UBRPhdQgmfPqkzfVo57Xkucl3QZqT5GGsNSRphVJffg2fwoawiida', '2025-03-12 18:01:39', '2025-03-12 18:01:39'),
(17, 'ki', 'kichuelwin@gmail.com', '$2y$10$mMVNa6YVvMROib9qjv1uEuI/goXOoF0q8Vd8ngCMCKACQUo7z6SoC', '2025-03-12 18:02:31', '2025-03-12 18:02:31'),
(18, 'Min', 'min@gmail.com', '$2y$10$nhZzXyrF3/pYQaQOaMo4IOLpaDgqwGF0x86cRJ/.qE5oOuPyoCob2', '2025-03-13 02:04:20', '2025-03-13 02:04:20'),
(19, 'ki_321', 'ki9ki@gmail.com', '$2y$10$RVf4VYaAIksfPIlohN4fWOvZHVpeNtCVlR34.0EbJbnrEaY40vGgm', '2025-03-13 02:16:58', '2025-03-13 02:16:58'),
(20, 'aa', 'aa@gmail.com', '$2y$10$rbOw1YXJfKg0/PNpGrL4gO81slvUV1SK.rjb1t71o3Q4tNLkLhYve', '2025-03-13 02:34:12', '2025-03-13 02:34:12'),
(21, 'bb', 'bb@gmail.com', '$2y$10$VAYOcoYyZDiNXurdliGuV.WHpY/YH3F8K5vXQLigp20I4JjeK08hG', '2025-03-13 14:23:20', '2025-03-13 14:23:20'),
(22, 'cc', 'cc@gmail.com', '$2y$10$Uffz0hCcN0CfPq6OCBCPBu4zTMjCWAYKgdQKZZrixNpLKNnIZ3w1C', '2025-03-13 14:24:58', '2025-03-13 14:24:58'),
(23, 'dd', 'dd@gmail.com', '$2y$10$0HtbLstjDYWrlje8VXxoHudnZjeHe9f6pjBYYen43WJ9g5ldZpPBm', '2025-03-13 14:31:12', '2025-03-13 14:31:12'),
(24, 'ki_321', 'kichuelwin1@gmail.com', '$2y$10$/7AjzCpI554M9ciZrCrW5O7pltno8E8KzesglSl6gqomsms3DM2Uy', '2025-03-13 14:41:59', '2025-03-13 14:41:59'),
(25, 'ki', 'kikiki@gmail.com', '$2y$10$6jGFWT04GZeRB8qegAoIaOhzgdKFIPLj8txh5KLTTnuAmuhvFUkD2', '2025-03-13 14:43:11', '2025-03-13 14:43:11'),
(26, 'ki', 'kichuelwin11@gmail.com', '$2y$10$.WI55KeKnDoiNrUAqOJ9BeNz.T.ma/eZ3cQPOXaUiTsbWrZEFlifK', '2025-03-13 14:47:10', '2025-03-13 14:47:10'),
(27, 'pp', 'pp@gmail.com', '$2y$10$3z5oFhtjzA4Yl0K0S7P28.E2NCWGTl0jYBuO.o7iKfidFLREWDL0S', '2025-03-13 15:07:33', '2025-03-13 15:07:33'),
(28, 'gg', 'g@gmail.com', '$2y$10$hm8oqwwQWGJ7zuCNaLnBDO55FY34XpmC/L4Xmtdc1WgyO2gfD6fLi', '2025-03-13 15:09:16', '2025-03-13 15:09:16'),
(29, 'ww', 'w@gmail.com', '$2y$10$ARMu2cSw3bOMl.ynW9yANe2ipULV84ZnvItXln0/dnd977gWDlOKa', '2025-03-13 15:10:18', '2025-03-13 15:10:18'),
(30, 'kkkk', 'k111@gmail.com', '$2y$10$vMAr2CiVEZ.P6lTqqFkjbuz.FmdS/zQSci18Q3esvDNR3HsTJuoWa', '2025-03-15 03:04:42', '2025-03-15 03:04:42'),
(31, 'lll', 'l@gmail.com', '$2y$10$KYV86FC0tzHZmhtzphkrxuAIj9BObxQl6nuIu0GjXNAdiwHa4/CJC', '2025-03-15 03:07:37', '2025-03-15 03:07:37'),
(33, 'lulunan', 'llnt@gmail.com', '$2y$10$wl7paziRa5WY3V1YamH9KuXH3DChrwnLPJTLnPUyMxaf5hHVTC9fK', '2025-03-17 09:59:04', '2025-03-17 09:59:04'),
(35, 'KSL', 'ksl@gmail.com', '$2y$10$g0XqotZU0yqPIy4ys.lTUOugANXDwBmnIZR04t21V5mS.AedB6syi', '2025-03-21 09:46:35', '2025-03-21 09:46:35'),
(36, 'ki', 'kichuelwin3@gmail.com', '$2y$10$X/IjGKUZAhGwiZZNYtwvIO1sHl2Dmxp4sqxtBoKnGHQ/f4h7gCc/i', '2025-03-23 20:28:18', '2025-03-23 20:28:18'),
(37, 'ki_321', 'kichuelwin111@gmail.com', '$2y$10$tkC4i7QYqHm3kCDkSejUZuBd2caJXJHSje/8iVt90fEqbjKLUmntm', '2025-03-23 21:57:48', '2025-03-23 21:57:48'),
(39, 'Star', 'star1@gmail.com', '$2y$10$Tlqj/K2lIJKSKMHYVziUBuSfV.sZ8Xge6tfdSTm8WO5BOt9XhU06m', '2025-03-26 07:51:21', '2025-03-26 07:51:21'),
(40, '', '', '$2y$10$/ypoHQtVaGftHktEa0zYoeZDiQq1ItiVlgupTF1hyYxySlRHDw9MS', '2025-04-20 16:27:41', '2025-04-20 16:27:41'),
(41, 'Ki Chue Lwin', 'kichuelwin12@gmail.com', '$2y$10$kaTTK90y2x0ZGE0uR94eleXawcgmWmLEPEXxu.blwvdvQsLvFO4JG', '2025-04-20 16:29:07', '2025-04-20 16:29:07'),
(42, 'Ki Chue Lwin', 'kichuelwin123@gmail.com', '$2y$10$7lKl/a76SMobr8jiVB1LSOQn3Y4DNIJrEQdqXVVRJwrag1QLlGK46', '2025-04-20 16:38:59', '2025-04-20 16:38:59'),
(43, 'Ki Chue Lwin', 'kichuelwin333@gmail.com', '$2y$10$kf1x/J7nQO4snMiozHZ1b.x.Jt6ryIuwJQWqlyn5PRoEsQHYPEBN2', '2025-04-20 16:41:58', '2025-04-20 16:41:58'),
(44, 'Ki Chue Lwin', 'kichuelwin3333@gmail.com', '$2y$10$R03N7qC.3rfwHUZdpr9F8eftr0hv5a67cF7TuVun9JHykVsa1HBlu', '2025-04-20 16:42:30', '2025-04-20 16:42:30'),
(45, 'Starlight', 'star333@gmail.com', '$2y$10$x7e4SF7s8lY8WHOeAsplPOjlFEcSagmAjrVpdKX4BhKHumbTPmBpa', '2025-04-21 15:26:00', '2025-04-21 15:26:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `community_recipes`
--
ALTER TABLE `community_recipes`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `culinary`
--
ALTER TABLE `culinary`
  ADD PRIMARY KEY (`culinary_id`);

--
-- Indexes for table `culinary_resources`
--
ALTER TABLE `culinary_resources`
  ADD PRIMARY KEY (`culinary_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `edu_resources`
--
ALTER TABLE `edu_resources`
  ADD PRIMARY KEY (`edu_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `community_recipes`
--
ALTER TABLE `community_recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `culinary`
--
ALTER TABLE `culinary`
  MODIFY `culinary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `culinary_resources`
--
ALTER TABLE `culinary_resources`
  MODIFY `culinary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `edu_resources`
--
ALTER TABLE `edu_resources`
  MODIFY `edu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `culinary_resources`
--
ALTER TABLE `culinary_resources`
  ADD CONSTRAINT `admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
