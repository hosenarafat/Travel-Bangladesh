SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelandtour`
--

-- --------------------------------------------------------

--
-- Table structure for table `dulax_double_image`
--

CREATE TABLE `dulax_double_image` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `dulax_image` int(11) NOT NULL,
  `double_image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `full_tour_details`
--

CREATE TABLE `full_tour_details` (
  `full_tour_details_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `package_includes` varchar(255) NOT NULL,
  `package_excludes` varchar(200) NOT NULL,
  `tour_ltinerary` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `full_tour_details`
--

INSERT INTO `full_tour_details` (`full_tour_details_id`, `tour_id`, `package_includes`, `package_excludes`, `tour_ltinerary`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_image` varchar(200) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `hotel_place` varchar(100) NOT NULL,
  `short_details` varchar(255) NOT NULL,
  `full_details` varchar(255) NOT NULL,
  `dulax_room_price` int(11) NOT NULL,
  `double_room_price` int(11) NOT NULL,
  `aminities` varchar(100) NOT NULL,
  `property_type` varchar(200) NOT NULL,
  `avg_user_rating` int(11) NOT NULL,
  `terms_and_policy` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_image`, `hotel_name`, `hotel_place`, `short_details`, `full_details`, `dulax_room_price`, `double_room_price`, `aminities`, `property_type`, `avg_user_rating`, `terms_and_policy`) VALUES
(1, 'hot.jpg', 'Laguna Beach Resort', 'Cox Bazar', 'Laguna Beach Family Suites is situated at Kolatoli, Coxs Bazar.  The hotel offers a variety of different rooms varying in features and prices. The air conditioned rooms are furnished..', 'it has been constructed to develop tourism as an industry and to accommodate all categories of tourists from and abroad with optimum comfort, highest security and minimum expense. The Sea Palace Western Plaza is one of the largest hotel.', 1500, 1000, 'airport transport', 'apeartment', 4, 'Full payment is required upon booking \r\nPayment make does not constitute confirmation of the booking. \r\nA Pax Statement will be emailed to customer upon payment made. '),
(2, 'laguna.jpg', 'Ocean Palace Hotel', 'Cox Bazar', 'To be the leading force in Tourism & Hotel management sector and constructing those following international standards and proving most efficient Customer Service and be the first of it..', 'it has been constructed to develop tourism as an industry and to accommodate all categories of tourists from and abroad with optimum comfort, highest security and minimum expense. The Sea Palace Western Plaza is one of the largest hotel.', 1800, 1500, 'spa', 'Guest House', 3, 'Full payment is required upon booking \r\nPayment make does not constitute confirmation of the booking. \r\nA Pax Statement will be emailed to customer upon payment made. '),
(3, 'nature-beauty-of-cox.jpg', 'Meghaloy Resort', 'Sajek Vally', 'Meghaloy Resort is the standard category Resort in Sajek Valley with all the standard services and facilities for its customers.  Sajek, the sky high ridge top with..', 'it has been constructed to develop tourism as an industry and to accommodate all categories of tourists from and abroad with optimum comfort, highest security and minimum expense. The Sea Palace Western Plaza is one of the largest hotel.', 1700, 1400, 'elevator', 'hotel', 3, 'Full payment is required upon booking \r\nPayment make does not constitute confirmation of the booking. \r\nA Pax Statement will be emailed to customer upon payment made. '),
(4, 'lg.jpg', 'The Lagoon Hotel', 'Sajek Vally', 'The Lagoon Hotel is the standard category hotel in Saint Martin Island with all the standard services and facilities for its customers. Vision: To become..', 'it has been constructed to develop tourism as an industry and to accommodate all categories of tourists from and abroad with optimum comfort, highest security and minimum expense. The Sea Palace Western Plaza is one of the largest hotel.', 1900, 1700, 'airport transport', 'Guest House', 0, 'Full payment is required upon booking \r\nPayment make does not constitute confirmation of the booking. \r\nA Pax Statement will be emailed to customer upon payment made. '),
(5, 'uni_resort.jpg', 'Hotel Beach Way', 'Cox Bazar', 'House # 21, Block # C, Kolatoli Road, Cox''s Bazar 4700, Bangladesh eMail: info@hotelbeachway.com, infohotelbeachway@gmail.com Deluxe Double ?3000 $37.50   Deluxe Triple ?3600 $45 ..', 'it has been constructed to develop tourism as an industry and to accommodate all categories of tourists from and abroad with optimum comfort, highest security and minimum expense. The Sea Palace Western Plaza is one of the largest hotel.', 1600, 1400, 'wifi internet', 'Resort', 3, 'Full payment is required upon booking \r\nPayment make does not constitute confirmation of the booking. \r\nA Pax Statement will be emailed to customer upon payment made. ');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_guest_order`
--

CREATE TABLE `hotel_guest_order` (
  `hotel_guest_order_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_place_details`
--

CREATE TABLE `hotel_place_details` (
  `hotel_place_details_id` int(11) NOT NULL,
  `hotel_place` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_place_details`
--

INSERT INTO `hotel_place_details` (`hotel_place_details_id`, `hotel_place`) VALUES
(1, 'Cox Bazar'),
(2, 'Cox Bazar'),
(3, 'Cox Bazar'),
(4, 'Sajek Vally'),
(5, 'Sajek Vally'),
(6, 'Sajek Vally');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_user_rating`
--

CREATE TABLE `hotel_user_rating` (
  `user_rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_user_rating`
--

INSERT INTO `hotel_user_rating` (`user_rating_id`, `user_id`, `hotel_id`, `rating`) VALUES
(1, 1, 1, 4),
(2, 1, 2, 3),
(3, 1, 3, 3),
(4, 1, 4, 4),
(5, 1, 5, 3);

-- --------------------------------------------------------


-- Table structure for table `order_hotel`
--

CREATE TABLE `order_hotel` (
  `order_hotel_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `num_dulax` int(11) NOT NULL,
  `num_twin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_hotel`
--

INSERT INTO `order_hotel` (`order_hotel_id`, `check_in`, `check_out`, `email`, `num_dulax`, `num_twin`) VALUES


-- Table structure for table `order_tour`
--

CREATE TABLE `order_tour` (
  `tour_order_id` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `person_number_child` int(11) NOT NULL,
  `person_number_adult` int(11) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `tour_id` int(11) NOT NULL,
  `tour_image` varchar(200) NOT NULL,
  `tour_name` varchar(100) NOT NULL,
  `tour_details_short` varchar(200) NOT NULL,
  `tour_details_full` varchar(250) NOT NULL,
  `tour_type` varchar(100) NOT NULL,
  `day` int(11) NOT NULL,
  `night` int(11) NOT NULL,
  `seller` varchar(100) NOT NULL,
  `adult_price` int(100) NOT NULL,
  `child_price` int(100) NOT NULL,
  `avg_user_rating` float NOT NULL,
  `terms_and_policy` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`tour_id`, `tour_image`, `tour_name`, `tour_details_short`, `tour_details_full`, `tour_type`, `day`, `night`, `seller`, `adult_price`, `child_price`, `avg_user_rating`, `terms_and_policy`) VALUES
(13, 'sajek.jpg', 'sajek valley tour', 'sajek valley tour includes 2 days and 3 nights package in addition with transport facility, hotel reservation and complementary breakfast', 'Fee Includes:\r\n     Dhaka- Khagrachori –Dhaka (Non AC Bus)\r\n    1 Night stay at Khagrachori and 1 Night stay at Sajek (Double Shearing)\r\n    All Local Transport\r\n    BBQ Dinner at Sajek\r\n    Kanglak Para,Alutila Cave,Richhang Water ', 'Adventure', 4, 2, 'tour.com.bd', 4768, 4999, 4, '\r\nBooking Policy:\r\n\r\n     Please pay 50 % advance for booking confimation and rest of the amount pay 3 day before tour start.\r\n    Booking money is not refundable. \r\n\r\nCancellation Policy:\r\n\r\nTour company''s cancellation policy apply.\r\nRefund Policy:\r\n\r\nTour company''s refund policy apply.'),
(18, 'centmartin.jpg', 'Daruchini Dip:Saint Martin (AC) ', 'St. Martin Island is a small island (area only 8 km2) in the northeastern part of the Bay of Bengal, about 9 km south of the tip of the Cox''s Bazar-Teknaf peninsula, and forming the southernmost part ', '', 'Educational', 3, 4, 'Tour.com.bd', 4999, 3000, 0, '\r\nBooking Policy:\r\n\r\n     Please pay 50 % advance for booking confimation and rest of the amount pay 3 day before tour start.\r\n    Booking money is not refundable. \r\n\r\nCancellation Policy:\r\n\r\nTour company''s cancellation policy apply.\r\nRefund Policy:\r\n\r\nTour company''s refund policy apply.'),
(26, '4.jpg', 'Sylhet: ( Ratargul + Bisanakandi)', 'Sylhet: Group Tour ( Ratargul  Bisanakandi Jaflong Dargah Shariff )  Package Price: BDT. 6,500 ( Per person) Tour Itinerary...', '', 'Educational', 3, 2, 'Tour.com.bd', 5000, 4999, 0, '\r\nBooking Policy:\r\n\r\n     Please pay 50 % advance for booking confimation and rest of the amount pay 3 day before tour start.\r\n    Booking money is not refundable. \r\n\r\nCancellation Policy:\r\n\r\nTour company''s cancellation policy apply.\r\nRefund Policy:\r\n\r\nTour company''s refund policy apply.'),
(24, '3.jpg', 'Sylhet: ( Ratargul + Bisanakandi)', 'Sylhet: Group Tour ( Ratargul Bisanakandi  Jaflong Dargah Shariff ) ? Package Price: BDT. 6,500 ( Per person) Tour Itinerary: Journey start from Dhaka at  12.', '', 'Couples', 3, 2, 'Tour.com.bd', 6000, 4000, 0, '\r\nBooking Policy:\r\n\r\n     Please pay 50 % advance for booking confimation and rest of the amount pay 3 day before tour start.\r\n    Booking money is not refundable. \r\n\r\nCancellation Policy:\r\n\r\nTour company''s cancellation policy apply.\r\nRefund Policy:\r\n\r\nTour company''s refund policy apply.'),
(22, '5.jpg', 'Cox''s Bazar Inani Beach..', 'Coxs bazar  Inani  Himchori  Teknaf  St.Martins  Tour   Package Price: BDT. 7,999 ( Per person) Package Includes: Dhaka - Coxs Bazar Teknaf', '', 'family', 3, 2, 'Tour.com.bd', 4999, 3999, 5, '\r\nBooking Policy:\r\n\r\n     Please pay 50 % advance for booking confimation and rest of the amount pay 3 day before tour start.\r\n    Booking money is not refundable. \r\n\r\nCancellation Policy:\r\n\r\nTour company''s cancellation policy apply.\r\nRefund Policy:\r\n\r\nTour company''s refund policy apply.'),
(25, '6.jpg', 'Sylhet: ( Ratargul + Bisanakandi)', 'Sylhet: Group Tour ( Ratargul to Bisanakandi to Jaflong to Dargah Shariff ) ? Package Price: BDT. 6,500 ( Per person) Tour Itinerary', 'Sylhet: Group Tour ( Ratargul – Bisanakandi – Jaflong –Dargah Shariff ) ?  Package Price: BDT. 4,750 Per Person (With Mini Bus)  Package Price: BDT. 6,250 Per Person (With Noah)    ***This price is for 35pax**   Tour Itinerary:  Night-1:  Overnight j', 'Couples', 3, 2, 'Tour.com.bd', 5000, 3500, 3, '\r\nBooking Policy:\r\n\r\n     Please pay 50 % advance for booking confimation and rest of the amount pay 3 day before tour start.\r\n    Booking money is not refundable. \r\n\r\nCancellation Policy:\r\n\r\nTour company''s cancellation policy apply.\r\nRefund Policy:\r\n\r\nTour company''s refund policy apply.');

-- --------------------------------------------------------

--
-- Table structure for table `tour_guest_order`
--

CREATE TABLE `tour_guest_order` (
  `tour_guest_order_id` int(11) NOT NULL,
  `tour_order_id_two` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_guest_order`
--

INSERT INTO `tour_guest_order` (`tour_guest_order_id`, `tour_order_id_two`, `fname`, `lname`, `email`, `phone`, `address`) VALUES
(30, 0, 'yiyiy', 'jhkhk', 'ml@gmail.com', 657, 'gjtu'),
(31, 0, 'dgh', 'hjhkj', 'ml@gmail.com', 0, 'gjhk'),
(32, 0, 'fghj', 'hkjhjhk', 'b@gmail.com', 438758, 'hjh'),
(33, 0, 'arafat', 'rahman', 'shariful@gmail.com', 111, 'tt66'),
(34, 0, 'ggggggggg', 'gggggggg', 'eva@gmail.com', 88, 'nkk'),
(35, 0, 'ddddddddd', 'dddddddddddd', 'eva@gmail.com', 2222222, 'ddddddddddd'),
(36, 0, 'wee', 'eew', 'w@gmail.com', 21212, 'dd'),
(37, 0, 'wee', 'wrr', 'w@gmail.com', 55534, 'wde3'),
(38, 0, 'rrrrr', 'tttt', 'w@gmail.com', 32323, 'dwd3'),
(39, 0, 'wwww', 'eeee', 'a@g.com', 2222, 'as33aa'),
(40, 0, 'wwwwwwwwwww', 'eeeeeeeeee', 'a@gmail.com', 2222, '222'),
(41, 0, 'wwwwwww', 'wweee', 'a@g.com', 22222, 's3'),
(42, 0, '', '', 'sayla@gmail.com', 0, ''),
(43, 0, 'dhgsj', 'fdhfk', 'h@gmail.com', 2147483647, 'hfj'),
(44, 0, 'bb', 'bb', 'lamia@gmail.com', 767668, 'bb');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fname`, `lname`, `phone`, `email`, `password`) VALUES
(1, 'sayla', 'surovi', 1620, 'sayla@gmail.com', '123'),
(3, 'shariful', 'arafat', 16, 'shariful@gmail.com', '1234'),
(4, 'maliha', 'rahman', 999, 'maliharahman21@gmail.com', '123'),


-- --------------------------------------------------------

--
-- Table structure for table `user_bank`
--

CREATE TABLE `user_bank` (
  `user_bank_id` int(11) NOT NULL,
  `user_email` varchar(1000) NOT NULL,
  `total_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_bank`
--

INSERT INTO `user_bank` (`user_bank_id`, `user_email`, `total_amount`) VALUES
(3, 'sayla@gmail.com', 150229),
(4, 'maliha@gmail.com', 200000),
(5, 'shariful@gmail.com', 100),
(6, 'eva@gmail.com', 1000),
(7, 'mukti@gmail.com', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `user_contact`
--

CREATE TABLE `user_contact` (
  `user_contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `user_text` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_contact`
--

INSERT INTO `user_contact` (`user_contact_id`, `name`, `email`, `subject`, `user_text`) VALUES
(1, 'saya', 'sayla@gmail.com', '', 'Some jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj');

-- --------------------------------------------------------

--
-- Table structure for table `user_rating`
--

CREATE TABLE `user_rating` (
  `user_rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_rating`
--

INSERT INTO `user_rating` (`user_rating_id`, `user_id`, `tour_id`, `rating`) VALUES
(1, 1, 13, 4),
(2, 1, 16, 5),
(3, 4, 25, 3),
(4, 4, 22, 5),
(5, 4, 16, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dulax_double_image`
--
ALTER TABLE `dulax_double_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `full_tour_details`
--
ALTER TABLE `full_tour_details`
  ADD PRIMARY KEY (`full_tour_details_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `hotel_guest_order`
--
ALTER TABLE `hotel_guest_order`
  ADD PRIMARY KEY (`hotel_guest_order_id`);

--
-- Indexes for table `hotel_place_details`
--
ALTER TABLE `hotel_place_details`
  ADD PRIMARY KEY (`hotel_place_details_id`),
  ADD KEY `hotel_place` (`hotel_place`);

--
-- Indexes for table `hotel_user_rating`
--
ALTER TABLE `hotel_user_rating`
  ADD PRIMARY KEY (`user_rating_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `order_hotel`
--
ALTER TABLE `order_hotel`
  ADD PRIMARY KEY (`order_hotel_id`);

--
-- Indexes for table `order_tour`
--
ALTER TABLE `order_tour`
  ADD PRIMARY KEY (`tour_order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`tour_id`);

--
-- Indexes for table `tour_guest_order`
--
ALTER TABLE `tour_guest_order`
  ADD PRIMARY KEY (`tour_guest_order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_bank`
--
ALTER TABLE `user_bank`
  ADD PRIMARY KEY (`user_bank_id`);

--
-- Indexes for table `user_contact`
--
ALTER TABLE `user_contact`
  ADD PRIMARY KEY (`user_contact_id`);

--
-- Indexes for table `user_rating`
--
ALTER TABLE `user_rating`
  ADD PRIMARY KEY (`user_rating_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dulax_double_image`
--
ALTER TABLE `dulax_double_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `full_tour_details`
--
ALTER TABLE `full_tour_details`
  MODIFY `full_tour_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hotel_guest_order`
--
ALTER TABLE `hotel_guest_order`
  MODIFY `hotel_guest_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `hotel_place_details`
--
ALTER TABLE `hotel_place_details`
  MODIFY `hotel_place_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hotel_user_rating`
--
ALTER TABLE `hotel_user_rating`
  MODIFY `user_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `order_hotel`
--
ALTER TABLE `order_hotel`
  MODIFY `order_hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `order_tour`
--
ALTER TABLE `order_tour`
  MODIFY `tour_order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tour_guest_order`
--
ALTER TABLE `tour_guest_order`
  MODIFY `tour_guest_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_bank`
--
ALTER TABLE `user_bank`
  MODIFY `user_bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_contact`
--
ALTER TABLE `user_contact`
  MODIFY `user_contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_rating`
--
ALTER TABLE `user_rating`
  MODIFY `user_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
