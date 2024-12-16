
CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Bede', 'bedeizerempuhwe1@gmail.com', 'bede123');



CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_cost` decimal(6,2) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `user_id` int(11) NOT NULL,
  `user_phone` int(12) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `orders` (`order_id`, `order_cost`, `order_status`, `user_id`, `user_phone`, `user_city`, `user_address`, `order_date`) VALUES
(1, 1050.00, 'paid', 1, 2147483647, 'Kigali', 'Kigali', '2024-01-01 17:48:14'),
(2, 1500.00, 'shipped', 1, 2147483647, 'Kigali', 'KN001ST', '2024-01-01 17:52:56'),
(3, 1750.00, 'not paid', 1, 783349533, 'Kigali', 'Kigali', '2024-01-01 18:08:57'),
(6, 1350.00, 'paid', 1, 2147483647, 'Kigali', 'Kigali', '2024-01-02 12:31:47'),
(7, 51.00, 'not paid', 1, 2147483647, 'Kigali', 'KN001ST', '2024-01-08 19:20:44');



CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `user_id`, `order_date`) VALUES
(1, 1, 4, 'Macbook Laptop', 'apple1.png', 1050.00, 1, 1, '2024-01-01 17:48:14'),
(2, 2, 2, 'Macbook Laptop', 'macbook.webp', 1500.00, 1, 1, '2024-01-01 17:52:56'),
(3, 3, 2, 'Macbook Laptop', 'macbook.webp', 1500.00, 1, 1, '2024-01-01 18:08:57'),
(4, 3, 3, 'HP Laptop', 'hp3.png', 250.00, 1, 1, '2024-01-01 18:08:57'),
(5, 4, 3, 'HP Laptop', 'hp3.png', 250.00, 1, 1, '2024-01-01 18:56:18'),
(6, 5, 7, 'Mouse 1', 'mouse1.png', 15.00, 1, 1, '2024-01-02 12:25:22'),
(7, 6, 5, 'i Phone Pro 14', 'iPhone14Pro.png', 1350.00, 1, 1, '2024-01-02 12:31:47'),
(8, 7, 11, 'Amazing Smart watch', 'Amazing Smart watch1.png', 25.00, 2, 1, '2024-01-08 19:20:44');



CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `payment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `payments` (`payment_id`, `order_id`, `user_id`, `transaction_id`, `payment_date`) VALUES
(1, 1, 1, 0, '0000-00-00 00:00:00'),
(2, 2, 1, 0, '2024-01-01 18:05:27'),
(3, 5, 1, 0, '2024-01-02 12:30:15'),
(4, 4, 1, 0, '2024-01-02 12:30:44'),
(5, 6, 1, 0, '2024-01-02 12:31:52');



CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_image4` varchar(255) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_special_offer` int(2) NOT NULL,
  `product_color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_description`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `product_special_offer`, `product_color`) VALUES
(1, 'Dell Laptop', 'computer', 'High quality product', 'dell1.webp', 'dell1.webp', 'dell1.webp', 'dell1.webp', 500.40, 2, 'Gray'),
(2, 'Macbook Laptop', 'computer', 'High quality product', 'macbook.webp', 'macbook.webp', 'macbook.webp', 'macbook.webp', 1500.00, 35, 'gold'),
(3, 'HP Laptop', 'computer', 'High quality product', 'HP Laptop1.png', 'HP Laptop2.png', 'HP Laptop3.png', 'HP Laptop4.png', 255.00, 70, 'Gray'),
(4, 'Macbook Laptop', 'computer', 'High quality product', 'apple1.png', 'apple1.png', 'apple1.png', 'apple1.png', 1050.00, 20, 'black'),
(5, 'i Phone Pro 14', 'phone', 'High quality product', 'i Phone Pro 141.png', 'i Phone Pro 142.png', 'i Phone Pro 143.png', 'i Phone Pro 144.png', 1350.70, 40, 'light blue'),
(7, 'Mouse 1', 'peripheral', 'High quality product', 'mouse1.png', 'mouse1.png', 'mouse1.png', 'mouse1.png', 15.00, 0, 'black'),
(8, 'Mouse 1', 'peripheral', 'High quality product', 'mouse2.png', 'mouse2.png', 'mouse2.png', 'mouse2.png', 15.00, 0, 'black'),
(9, 'Speaker one', 'speaker', 'High quality product', 'speaker1.png', 'speaker1.png', 'speaker1.png', 'speaker1.png', 50.00, 0, 'Black'),
(10, 'Yellow smart watch', 'watch', 'High quality i-watch ', 'Yellow smart watch1.png', 'Yellow smart watch2.png', 'Yellow smart watch3.png', 'Yellow smart watch4.png', 20.00, 35, 'Yellow'),
(11, 'Amazing Smart watch', 'watch', 'High quality i-watch ', 'Amazing Smart watch1.png', 'Amazing Smart watch2.png', 'Amazing Smart watch3.png', 'Amazing Smart watch4.png', 25.50, 55, 'Light yellow'),
(12, 'Google Pixel 3A', 'phone', 'High quality Phone', 'Google Pixel 3A1.png', 'Google Pixel 3A2.png', 'Google Pixel 3A3.png', 'Google Pixel 3A4.png', 155.00, 35, 'black'),
(13, 'Headphone', 'speaker', 'High quality Headphones', 'Headphone1.png', 'Headphone2.png', 'Headphone3.png', 'Headphone4.png', 33.00, 60, 'black & white'),
(14, 'I Watch ', 'watch', 'High quality i-watch ', 'I Watch 1.png', 'I Watch 2.png', 'I Watch 3.png', 'I Watch 4.png', 19.60, 42, 'blue &red');



CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `order_date`) VALUES
(1, 'Bede', 'bedempuhwe@gmail.com', 'bede123', '0000-00-00 00:00:00'),
(2, 'Ngabo', 'ngabo@gmail.com', 'ngabo123', '0000-00-00 00:00:00');


ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);


ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);


ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);


ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);


ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UX_Constraint` (`user_email`);


ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;


ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

