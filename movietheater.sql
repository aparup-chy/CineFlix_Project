SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `Bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(12, 'BKID6369842', 4, 4, 17, 3, 1, 500, '2023-11-25', '2023-11-25', 1),
(13, 'BKID2313964', 6, 5, 21, 6, 4, 2400, '2023-11-26', '2023-11-26', 1),
(14, 'BKID1766021', 6, 5, 22, 6, 2, 1200, '2023-11-26', '2023-11-26', 1);

CREATE TABLE `Contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;








INSERT INTO `Login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'password', 0),
(2, 3, 'theatre', 'password', 1),
(3, 4, 'theatre2', 'password', 1),
(12, 2, 'simantoshahriar7@gmail.com', '21301086', 2),
(15, 14, 'sajidrahman@gmail.com', '21201111', 1),
(17, 4, 'faizatasfia00@gmail.com', '21301489', 2),
(18, 6, 'THR760801', 'PWD649976', 1),
(19, 5, 'ishikamehrab@gmail.com', '21202792', 2);


CREATE TABLE `Movies` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Movies` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(1, 3, 'Mujib: The Making of Nation', 'Arifin Shuvoo, Nusraat Faria Mazhar, Imam Hossain Saju', 'A biography film about Bangabandhu Sheikh Mujibur Rahman, Bangabandhu is an upcoming Bangladeshi Bengali film, directed by Shyam Benegal. This is a biopic of Bangabandhu Sheikh Mujibur Rahman. Arifin Shuvoo will play the role of Sheikh Mujibur Rahman.', '2023-10-13', 'images/Mujib.jpg', 'https://www.youtube.com/watch?time_continue=1&v=givLtqsybMo&embeds_referring_euri=https%3A%2F%2Fwww.cineplexbd.com%2F&source_ve_path=Mjg2NjY&feature=emb_logo', 0),
(11, 6, 'The Marvels', 'Brie Larson, Samuel L. Jackson, Teyonah Parris', 'Carol Danvers gets her powers entangled with those of Kamala Khan and Monica Rambeau, forcing them to work together to save the universe.', '2023-11-10', 'images/Marvels.jpg', 'https://www.youtube.com/watch?v=wS_qbDztgVY', 0),
(12, 6, 'The Nun II', 'Taissa Farmiga, Bonnie Aarons', '1956 - France. A priest is murdered. An evil is spreading. The sequel to the worldwide smash hit follows Sister Irene as she once again comes face-to-face with Valak, the demon nun.', '2023-09-08', 'images/Nun.jpg', 'https://www.youtube.com/watch?v=QF-oyCwaArU&t=1s', 0),
(13, 6, 'The Exorcist; Believer', 'Ellen Burstyn, Max Von Sydow, Linda Blair', 'When two girls disappear into the woods and return three days later with no memory of what happened to them, the father of one girl seeks out Chris MacNeil, who has been forever altered by what happened to her daughter fifty years ago.', '2022-10-13', 'images/Exorcist.jpg', 'https://www.youtube.com/watch?v=PIxpPMyGcpU&t=2s', 0);



CREATE TABLE `Upcoming` (
  `upcoming_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `upcoming_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Upcoming` (`upcoming_id`, `name`, `cast`, `upcoming_date`, `description`, `attachment`) VALUES
(3, 'Aquaman and the lost kingdom', 'Jason Momoa, Ben Affleck, Patrick Wilson, Amber Heard', '2023-12-22', 'Aquaman balances his duties as king and as a member of the Justice League, all while planning a wedding. Black Manta is on the hunt for Atlantean tech to help rebuild his armour. Orm plots to escape his Atlantean prison.', 'upcoming_images/Aquaman.jpg'),
(9, 'Dune: Part Two', 'Timothee Chalamet, Zendaya, Rebecca Ferguson, Florence Pugh, Lea Seydoux', '2023-11-3', 'Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.', 'upcoming_images/Dune.jpg'),
(10, 'Wonka', 'Timothee Chalamet, Olivia Colman, Hugh Grant, Rowan Atkinson', '2023-12-15', 'With dreams of opening a shop in a city renowned for its chocolate, a young and poor Willy Wonka discovers that the industry is run by a cartel of greedy chocolatiers.', 'upcoming_images/Wonka.jpg');


CREATE TABLE `Registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(2, 'Simanto Shahriar', 'simantoshahriar@gmail.com', '01721076666', 24, 'gender'),
(4, 'Faiza Tasfia', 'faizatasfia@gmail.com', '01451112450', 24, 'gender'),
(5, 'Ishika Mehrab', 'ishikamehrab@gmail.com', '01324445696', 24, 'gender'),
(6, 'Sajid Rahman', 'sajidrahman@gmail.com', '01123335696', 24, 'gender');


CREATE TABLE `Halls` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Halls` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Dolby Atmos', 100, 750),
(2, 3, 'Experimental Hall', 150, 500),
(3, 4, 'Hall 6', 200, 600),
(4, 14, 'VIP 1', 34, 1250),
(5, 6, 'Hall 2', 150, 1000),
(6, 6, 'Hall 3', 200, 800);


CREATE TABLE `Shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(19, 15, 6, 11, '2023-11-25', 0, 1),
(20, 20, 6, 13, '2023-04-25', 0, 1),
(21, 19, 6, 12, '2023-12-1', 1, 1),
(22, 18, 6, 17, '2023-11-26', 1, 1);


CREATE TABLE `ShowTime` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `ShowTime` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00'),
(2, 1, 'Evening', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Night', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Night', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00'),
(15, 5, 'First', '20:30:00'),
(16, 5, 'Second', '15:10:00'),
(17, 5, 'Others', '18:10:00'),
(18, 6, 'Noon', '12:00:00'),
(19, 6, 'First', '15:35:00'),
(20, 6, 'Second', '11:30:00'),
(21, 5, 'Night', '20:04:00');


CREATE TABLE `Theater` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Theater` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(3, 'BuxFliX', 'Bashundhara Shopping Complex', 'Panthapath', 'Dhaka', 1216),
(4, 'Sony Square', 'Sony Square', 'Mirpur', 'Dhaka', 1216),
(5, 'Bali Arcade', 'Aue', 'Nawab Siraj Ud Dawla Road, Chattogram', 'Chattogram', 1509),
(6, 'BuxFliX', 'Hi-Tech Park', 'Nabibagar', 'Rajshahi', 2204);


ALTER TABLE `Bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `Upcoming`
--
ALTER TABLE `Upcoming`
  ADD PRIMARY KEY (`upcoming_id`);

--
-- Indexes for table `Registration`
--
ALTER TABLE `Registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `Halls`
--
ALTER TABLE `Halls`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `Shows`
--
ALTER TABLE `Shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `ShowTime`
--
ALTER TABLE `ShowTime`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `Theater`
--
ALTER TABLE `Theater`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bookings`
--
ALTER TABLE `Bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Contact`
--
ALTER TABLE `Contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Login`
--
ALTER TABLE `Login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `Movies`
--
ALTER TABLE `Movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `Upcoming`
--
ALTER TABLE `Upcoming`
  MODIFY `upcoming_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Registration`
--
ALTER TABLE `Registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Halls`
--
ALTER TABLE `Halls`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Shows`
--
ALTER TABLE `Shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `ShowTime`
--
ALTER TABLE `ShowTime`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `Theater`
--
ALTER TABLE `Theater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
