-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 03:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(12) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `name`, `description`) VALUES
(1, 'Java Programming', 'Java is one of the most popular language.'),
(2, 'Python Programming', 'Python is easy to understand and use for data science.'),
(3, 'Web Technology', 'about html ,css ,javascript,xml,jsp,servlet,core java ,Ajax'),
(4, 'Computer Network', 'detail about OSI/TCP model'),
(5, 'Database Management System', 'Database management system is software that is used to manage the database.DBMS includes all topics of DBMS such as introduction, ER model, keys, relational model, join operation, SQL, functional dependency, transaction, concurrency control, etc.'),
(6, 'Cloud Computing', 'Cloud computing is the on-demand delivery of IT resources over the Internet with pay-as-you-go pricing. Instead of buying, owning, and maintaining physical data centers and servers, you can access technology services, such as computing power, storage, and databases, on an as-needed basis from a clou'),
(7, 'C++', 'C++ is a powerful general-purpose programming language. It can be used to develop operating systems, browsers, games, and so on. C++ supports different ways of programming like procedural, object-oriented, functional, and so on. This makes C++ powerful as well as flexible.Our C++ programming tutoria'),
(8, 'Artificial Intelligence (AI)', 'artificial intelligence (AI), the ability of a digital computer or computer-controlled robot to perform tasks commonly associated with intelligent beings. The term is frequently applied to the project of developing systems endowed with the intellectual processes characteristic of humans, such as the'),
(9, 'Compiler design', 'A compiler translates the code written in one language to some other language without changing the meaning of the program. It is also expected that a compiler should make the target code efficient and optimized in terms of time and space.'),
(10, 'internet of things (IoT)', 'The internet of things, or IoT, is a system of interrelated computing devices, mechanical and digital machines, objects, animals or people that are provided with unique identifiers (UIDs) and the ability to transfer data over a network without requiring human-to-human or human-to-computer interactio');

-- --------------------------------------------------------

--
-- Table structure for table `likepost`
--

CREATE TABLE `likepost` (
  `lid` int(20) NOT NULL,
  `pid` int(20) NOT NULL,
  `uid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likepost`
--

INSERT INTO `likepost` (`lid`, `pid`, `uid`) VALUES
(34, 42, 1),
(35, 41, 1),
(38, 42, 1),
(39, 42, 1),
(40, 42, 1),
(41, 42, 1),
(42, 41, 1),
(43, 41, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(12) NOT NULL,
  `pTitle` text DEFAULT NULL,
  `pContent` text NOT NULL,
  `pCode` text NOT NULL,
  `pPic` varchar(100) NOT NULL,
  `pDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `cid` int(12) NOT NULL,
  `userId` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pid`, `pTitle`, `pContent`, `pCode`, `pPic`, `pDate`, `cid`, `userId`) VALUES
(40, 'Working of JDBC ', 'Java application that needs to communicate with the database has to be programmed using JDBC API. JDBC Driver supporting data sources such as Oracle and SQL server has to be added in java application for JDBC support which can be done dynamically at run time. ', 'package com.vinayak.jdbc;\r\n  \r\nimport java.sql.*;\r\n  \r\npublic class JDBCDemo {\r\n    \r\n    public static void main(String args[])\r\n        throws SQLException, ClassNotFoundException\r\n    {\r\n        String driverClassName\r\n            = \"sun.jdbc.odbc.JdbcOdbcDriver\";\r\n        String url = \"jdbc:odbc:XE\";\r\n        String username = \"scott\";\r\n        String password = \"tiger\";\r\n        String query\r\n            = \"insert into students values(109, \'bhatt\')\";\r\n  \r\n        // Load driver class\r\n        Class.forName(driverClassName);\r\n  \r\n        // Obtain a connection\r\n        Connection con = DriverManager.getConnection(\r\n            url, username, password);\r\n  \r\n        // Obtain a statement\r\n        Statement st = con.createStatement();\r\n  \r\n        // Execute the query\r\n        int count = st.executeUpdate(query);\r\n        System.out.println(\r\n            \"number of rows affected by this query= \"\r\n            + count);\r\n  \r\n        // Closing the connection as per the\r\n        // requirement with connection is completed\r\n        con.close();\r\n    }\r\n} // class', 'Architecture-of-JDBC2.jpg', '2022-05-27 17:58:32', 3, 1),
(41, 'Django Forms', 'When one creates a Form class, the most important part is defining the fields of the form. Each field has custom validation logic, along with a few other hooks. This article revolves around various fields one can use in a form along with various features and techniques concerned with Django Forms. Forms are basically used for taking input from the user in some manner and using that information for logical operations on databases. For example, Registering a user by taking input as his name, email, password, etc.', 'from django import forms\r\n\r\n# creating a form\r\nclass GeeksForm(forms.Form):\r\n	title = forms.CharField()\r\n	description = forms.CharField()\r\n', 'flowChart-1-1024x682.png', '2022-05-27 18:01:39', 2, 1),
(42, 'Goals of Networks', 'Computer Network means an interconnection of autonomous (standalone) computers for information exchange. The connecting media could be a copper wire, optical fiber, microwave, or satellite.  A computer network is a set of computers sharing resources located on or provided by network nodes. The computers use common communication protocols over digital interconnections to communicate with each other. Network addresses serve for locating and identifying the nodes by communication protocols such as the Internet Protocol.\n', 'from django import forms\r\n\r\n# creating a form\r\nclass GeeksForm(forms.Form):\r\n	title = forms.CharField()\r\n	description = forms.CharField()\r\n', 'man-300x192.png', '2022-05-27 18:03:58', 4, 1),
(46, 'Java List', 'The List interface in Java provides a way to store the ordered collection. It is a child interface of Collection. It is an ordered collection of objects in which duplicate values can be stored. Since List preserves the insertion order, it allows positional access and insertion of elements. \r\n\r\nThe List interface is found in java.util package and inherits the Collection interface. It is a factory of ListIterator interface. Through the ListIterator, we can iterate the list in forward and backward directions. The implementation classes of the List interface are ArrayList, LinkedList, Stack, and Vector. ArrayList and LinkedList are widely used in Java programming. The Vector class is deprecated since Java 5.', '// Java program to Demonstrate List Interface\r\n\r\n// Importing all utility classes\r\nimport java.util.*;\r\n\r\n// Main class\r\n// ListDemo class\r\nclass GFG {\r\n\r\n	// Main driver method\r\n	public static void main(String[] args)\r\n	{\r\n\r\n		// Creating an object of List interface\r\n		// implemented by the ArrayList class\r\n		List<Integer> l1 = new ArrayList<Integer>();\r\n\r\n		// Adding elements to object of List interface\r\n		// Custom inputs\r\n\r\n		l1.add(0, 1);\r\n		l1.add(1, 2);\r\n\r\n		// Print the elements inside the object\r\n		System.out.println(l1);\r\n\r\n		// Now creating another object of the List\r\n		// interface implemented ArrayList class\r\n		// Declaring object of integer type\r\n		List<Integer> l2 = new ArrayList<Integer>();\r\n\r\n		// Again adding elements to object of List interface\r\n		// Custom inputs\r\n		l2.add(1);\r\n		l2.add(2);\r\n		l2.add(3);\r\n\r\n		// Will add list l2 from 1 index\r\n		l1.addAll(1, l2);\r\n\r\n		System.out.println(l1);\r\n\r\n		// Removes element from index 1\r\n		l1.remove(1);\r\n\r\n		// Printing the updated List 1\r\n		System.out.println(l1);\r\n\r\n		// Prints element at index 3 in list 1\r\n		// using get() method\r\n		System.out.println(l1.get(3));\r\n\r\n		// Replace 0th element with 5\r\n		// in List 1\r\n		l1.set(0, 5);\r\n\r\n		// Again printing the updated List 1\r\n		System.out.println(l1);\r\n	}\r\n}\r\n', 'list.png', '2022-09-16 18:22:21', 1, 1),
(47, 'Functions Defined', 'Lists (known as arrays in other languages) are one of the compound data types that Python understands. Lists can be indexed, sliced and manipulated with other built-in functions. More about lists in Python 3', '# Python 3: List comprehensions\r\n>>> fruits = [\'Banana\', \'Apple\', \'Lime\']\r\n>>> loud_fruits = [fruit.upper() for fruit in fruits]\r\n>>> print(loud_fruits)\r\n[\'BANANA\', \'APPLE\', \'LIME\']\r\n\r\n# List and the enumerate function\r\n>>> list(enumerate(fruits))\r\n[(0, \'Banana\'), (1, \'Apple\'), (2, \'Lime\')]', 'python.png', '2022-09-16 18:25:51', 2, 1),
(48, 'Types of Transmission Media', 'In data communication terminology, a transmission medium is a physical path between the transmitter and the receiver i.e. it is the channel through which data is sent from one place to another. Transmission Media is broadly classified into the following types:  ', '', 'TypesOfTransmissionMedia.jpg', '2022-09-17 05:07:10', 4, 1),
(49, 'Goals of Networks', 'Computer Network means an interconnection of autonomous (standalone) computers for information exchange. The connecting media could be a copper wire, optical fiber, microwave, or satellite. ', '', 'Goals-of-Network-1-1.webp', '2022-09-17 05:09:10', 4, 1),
(50, 'The Internet and the Web', 'The Internet is the network of networks and the network allows to exchange of data between two or more computers.  \r\n\r\nThe Web is a way to access information through the Internet.', '', '500004969.jpg', '2022-09-17 05:11:21', 4, 1),
(51, 'Collections in Java', 'The Collection in Java is a framework that provides an architecture to store and manipulate the group of objects.\r\n\r\nJava Collections can achieve all the operations that you perform on a data such as searching, sorting, insertion, manipulation, and deletion.', 'import java.util.*;  \r\nclass TestJavaCollection1{  \r\npublic static void main(String args[]){  \r\nArrayList<String> list=new ArrayList<String>();//Creating arraylist  \r\nlist.add(\"Ravi\");//Adding object in arraylist  \r\nlist.add(\"Vijay\");  \r\nlist.add(\"Ravi\");  \r\nlist.add(\"Ajay\");  \r\n//Traversing list through Iterator  \r\nIterator itr=list.iterator();  \r\nwhile(itr.hasNext()){  \r\nSystem.out.println(itr.next());  \r\n}  \r\n}  \r\n}  ', 'java-collection-hierarchy.png', '2022-09-17 05:13:08', 1, 1),
(52, 'Servlets', 'Servlet can be described in many ways, depending on the context.\r\n\r\nServlet is a technology which is used to create a web application.\r\nServlet is an API that provides many interfaces and classes including documentation.\r\nServlet is an interface that must be implemented for creating any Servlet.\r\nServlet is a class that extends the capabilities of the servers and responds to the incoming requests. It can respond to any requests.\r\nServlet is a web component that is deployed on the server to create a dynamic web page.', 'import javax.servlet.http.*;  \r\nimport javax.servlet.*;  \r\nimport java.io.*;  \r\npublic class DemoServlet extends HttpServlet{  \r\npublic void doGet(HttpServletRequest req,HttpServletResponse res)  \r\nthrows ServletException,IOException  \r\n{  \r\nres.setContentType(\"text/html\");//setting the content type  \r\nPrintWriter pw=res.getWriter();//get the stream to write the data  \r\n  \r\n//writing html in the stream  \r\npw.println(\"<html><body>\");  \r\npw.println(\"Welcome to servlet\");  \r\npw.println(\"</body></html>\");  \r\n  \r\npw.close();//closing the stream  \r\n}}  ', 'response.jpg', '2022-09-17 05:15:11', 3, 1),
(53, 'What is Database', 'The database is a collection of inter-related data which is used to retrieve, insert and delete the data efficiently. It is also used to organize the data in the form of a table, schema, views, and reports, etc.\r\n\r\nFor example: The college Database organizes the data about the admin, staff, students and faculty etc.', 'Database Schema for a student-Lab scenario\r\n\r\nSQL> desc stu;\r\n\r\n \r\n\r\nName                                    null?                   Type\r\n\r\nSTUD_NO                          NOT NULL         NUMBER(5)\r\n\r\nSTUD_NAM                                               VARCHAR2(20)\r\n\r\nCLASS                                                      VARCHAR2(20)\r\n\r\nValid Data Sets:\r\n\r\n \r\n\r\nSQL> insert into stu values(&stud_no,â&stud_namâ,â&classâ);\r\n\r\nSQL> select * from stu;', 'Database-Management-System.jpg', '2022-09-17 05:17:31', 5, 1),
(54, 'Transaction in DBMS', 'Transactions refer to a set of operations that are used for performing a set of logical work. Usually, a transaction means the data present in the DB has changed. Protecting the user data from system failures is one of the primary uses of DBMS.', 'Xâs Account\r\n\r\nOpen_Account(X)\r\n\r\nOld_Bank_Balance = X.balance\r\n\r\nNew_Bank_Balance = Old_Bank_Balance â 1000\r\n\r\nA.balance = New_Bank_Balance\r\n\r\nClose_Bank_Account(X)\r\n\r\nYâs Account\r\n\r\nOpen_Account(Y)\r\n\r\nOld_Bank_Balance = Y.balance\r\n\r\nNew_Bank_Balance = Old_Bank_Balance + 1000\r\n\r\nB.balance = New_Bank_Balance\r\n\r\nClose_Bank_Account(Y)', 'download.png', '2022-09-17 05:18:44', 5, 1),
(55, 'c++', 'C++ is a popular programming language.\r\n\r\nC++ is used to create computer programs, and is one of the most used language in game development.', '#include <iostream>\r\nusing namespace std;\r\n\r\nint main() {\r\n  cout << \"Hello World!\";\r\n  return 0;\r\n}', 'Features-of-C-1024x499.png', '2022-09-17 05:20:35', 7, 1),
(56, 'What Is Artificial Intelligence (AI)?', 'Artificial intelligence (AI) refers to the simulation of human intelligence in machines that are programmed to think like humans and mimic their actions. The term may also be applied to any machine that exhibits traits associated with a human mind such as learning and problem-solving.', '', 'ai-v2-img3.jpg', '2022-09-17 05:21:49', 8, 1),
(57, 'What is the internet of things (IoT)?', 'The internet of things, or IoT, is a system of interrelated computing devices, mechanical and digital machines, objects, animals or people that are provided with unique identifiers (UIDs) and the ability to transfer data over a network without requiring human-to-human or human-to-computer interaction.', '', '1_92OdlxNqI3iChI5kNl1MFg.jpeg', '2022-09-17 05:22:56', 10, 1),
(58, 'Phases of a Compiler', 'Analysis Phase: An intermediate representation is created from the given source code : \r\n\r\nLexical Analyzer\r\nSyntax Analyzer\r\nSemantic Analyzer\r\nIntermediate Code Generator', '', 'compiler_phases.jpg', '2022-09-17 13:01:10', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `about` varchar(1000) NOT NULL DEFAULT '''hi there ! i am admin''',
  `rdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile` varchar(500) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `gender`, `about`, `rdate`, `profile`) VALUES
(1, 'Ayush Rastogi', 'rastogi.ayush2000@gmail.com', 'Ayush@123', 'male', 'java developer', '2022-05-25 14:50:19', 'IMG_20200501_165359.JPG'),
(4, 'Saarthak Rastogi', 'rsarthak49@gmail.com', 'rSaarthak', 'male', 'YouTuber', '2022-09-17 05:28:30', 'IMG_20200226_003915.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `likepost`
--
ALTER TABLE `likepost`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `likepost_ibfk_1` (`pid`),
  ADD KEY `likepost_ibfk_2` (`uid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `likepost`
--
ALTER TABLE `likepost`
  MODIFY `lid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likepost`
--
ALTER TABLE `likepost`
  ADD CONSTRAINT `likepost_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likepost_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
