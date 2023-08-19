-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Aug 2023 um 14:43
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `symfony_test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `client`
--


--
-- Daten für Tabelle `client`
--

INSERT INTO `client` (`id`, `firstname`, `lastname`) VALUES
(1, 'FirstName 0', 'LastName 0'),
(2, 'FirstName 1', 'LastName 1'),
(3, 'FirstName 2', 'LastName 2'),
(4, 'FirstName 3', 'LastName 3'),
(5, 'FirstName 4', 'LastName 4'),
(6, 'FirstName 5', 'LastName 5'),
(7, 'FirstName 6', 'LastName 6'),
(8, 'FirstName 7', 'LastName 7'),
(9, 'FirstName 8', 'LastName 8'),
(10, 'FirstName 9', 'LastName 9'),
(11, 'FirstName 10', 'LastName 10'),
(12, 'FirstName 11', 'LastName 11'),
(13, 'FirstName 12', 'LastName 12'),
(14, 'FirstName 13', 'LastName 13'),
(15, 'FirstName 14', 'LastName 14'),
(16, 'FirstName 15', 'LastName 15'),
(17, 'FirstName 16', 'LastName 16'),
(18, 'FirstName 17', 'LastName 17'),
(19, 'FirstName 18', 'LastName 18'),
(20, 'FirstName 19', 'LastName 19'),
(21, 'FirstName 20', 'LastName 20'),
(22, 'FirstName 21', 'LastName 21'),
(23, 'FirstName 22', 'LastName 22'),
(24, 'FirstName 23', 'LastName 23'),
(25, 'FirstName 24', 'LastName 24');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `client_course`
--


--
-- Daten für Tabelle `client_course`
--

INSERT INTO `client_course` (`id`, `client_id`, `course_id`) VALUES
(11, 1, 1001),
(12, 1, 1002),
(13, 1, 1003),
(14, 2, 1001),
(15, 2, 1013),
(16, 3, 1015),
(17, 3, 1007),
(18, 25, 1008),
(19, 24, 1007),
(20, 23, 1006),
(21, 22, 1010),
(22, 21, 1011),
(23, 20, 1012),
(24, 19, 1013),
(25, 18, 1014),
(26, 17, 1015),
(27, 16, 1009),
(28, 15, 1002),
(29, 14, 1003),
(30, 13, 1004),
(31, 12, 1005),
(32, 11, 1006),
(33, 4, 1005),
(34, 4, 1014),
(35, 5, 1012),
(36, 5, 1013),
(37, 6, 1011),
(38, 6, 1009),
(39, 7, 1001),
(40, 7, 1010),
(41, 8, 1001),
(42, 8, 1009),
(43, 9, 1008),
(44, 9, 1012),
(47, 10, 1007),
(48, 10, 1002);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `course`
--


--
-- Daten für Tabelle `course`
--

INSERT INTO `course` (`id`, `title`, `content`) VALUES
(1001, 'Help a test! - Testing correctly in practice', 'Standardised tests should also provide assistance in everyday therapeutic practice for therapy planning, progress and success monitoring.'),
(1002, 'Bobath - Refresher - Course', 'Treatment of infants according to the Bobath concept\r\nTreatment of infants until they can walk\r\n\r\nThe Bobath concept in relation to the infant is a wonderful way to support the little ones in their development.\r\nThe main part in this advanced training is taken over by the Bobath teaching therapists Mrs. Kirsten Bejarano, Kathrin Krüger and Alexandra Weinreich, because the \"refreshing\" and extending of the therapeutic procedure in the Bobath concept for infants and small children should be in the foreground.\r\nFurther topics are intrauterine and early childhood development, damage at this time and its consequences, as well as the consequences of this for our therapeutic approach. We will work together on the infant findings in the Bobath concept in combination with the ICF criteria and the corresponding infant checklist.\r\nUlrich Kohns, MD, will add the increasingly important topic of attachment to the course.'),
(1003, 'The Autism-Spectrum and the TEACCH® – Approach – Introduction Course', 'In this training we will deal with the special features of people from the autism spectrum (AS) and convey the basics and possibilities of the TEACCH® approach. We meet people from the AS in all areas of life: daycare, school, residential groups and in working life. The TEACCH® approach was developed in the USA at the University of North Carolina to better understand, accompany and support people with AS. It is now used very successfully worldwide. Based on the individual understanding of the AS, the basis of the TEACCH® approach is the method of \"structuring and visualizing\", \"structured teaching\", with the aim of increasing the individual independence of the people concerned.'),
(1004, 'Affolter', 'According to Dr F. Affolter, learning takes place in interaction with the environment. People with perceptual disorders are impaired in this interaction and thus also in the acquisition of information. The Affolter method supports these people in their search for qualitatively appropriate sensory information within problem-solving everyday events through guided interaction therapy. Thus, progress in the overall development becomes possible. The improvement of participation and performance in the areas of self-care, productivity and leisure are the goal of the intervention.'),
(1005, 'Parental work - dealing with parents', 'In therapeutic work with children, the quality of the interaction between therapists and parents plays an important role. Good cooperation between the adults supports the success of the treatment and the satisfaction of all involved grows with the success of the treatment. What seems so logical, however, sometimes proves to be difficult in everyday practice. For example, parents often have different expectations and ideas than the professionals. Moreover, emotional involvement and vulnerability vary. If communication is successful, this difference can lead to enriching cooperation. If, on the other hand, communication is contrary, stressful situations develop which are experienced as exhausting and draining.\r\n\r\nThe training aims to look at the interaction between therapists and parents from different perspectives. The aim is to reflect on one\'s own effectiveness as well as to support the individual \"style\".'),
(1006, 'Brain-Gym I', 'In the advanced training Brain-Gym® I you will get to know the kinesiological muscle test and noticing. Action balances on positive attitudes, seeing, hearing, writing and body movement are performed. The \'Miracle Balance\' and the \'Dennison Laterality Pathway\' round off the course. The focus of the training is on crossing the midline, connecting the left and right sides of the body and the two brain hemispheres. The learning process of crossing the midline is fundamental to skills such as binocular vision, hearing with both ears and integrated, coordinated body movements. Each of these skills is essential for academic performance and helps to achieve stress-free learning. The Brain-Gym® exercises also support therapeutic processes and help in everyday life situations.'),
(1007, 'Brain-Gym II', 'In this training, the brain model is expanded from the right-left dimension to the front and back areas and the connections from above and below in our brain and body. Here you will get further possibilities to activate, support and integrate learning processes of any kind in depth by specifically addressing and activating the three dimensions of learning: laterality - centring - focusing. The Dennison laterality pathway is learned in the three dimensions. The training culminates in the X-SPAN balance, which brings together everything learned from Brain-Gym® I & II into one overall balance. When the three dimensions of learning work together we are able to communicate, organise and understand. Easy learning, clear thinking, prolonged attention and concentration, improved body coordination are possible again.'),
(1008, 'Crisis intervention, mourning and delimitation - a method workshop', 'In therapeutic and educational work, situations arise again and again that can be very challenging. Every person has problems in the course of his or her life that can lead to an existential crisis. But what are difficult situations? Every day, the children, young people and adults we accompany can get into acute crises or open up in the course of working together with great burdens or stand out due to unusual behaviour, intense emotions or refusal. How can I deal with this? What can I do within my professional framework? Where should I draw boundaries? What do I need? In this training, every question has its space, because it is about maintaining the joy of work, acting safely, staying healthy and feeling well.'),
(1009, 'Introduction to different methods of systemic work', 'Systemic work is helpful in our work - from \"crime scenes to ministerial talks\", systemic work is used everywhere. The aim of this training is for you to get to know different aspects of systemic work and to be able to use them in your own context.\r\nMethods such as task clarification, systemic questioning techniques, collegial case consultation, time-line, genogram work etc. will be introduced. They can then apply these directly in their work with patients/clients, with parents and in the team.'),
(1010, 'Children of mentally ill parents', 'In Germany, about 3.8 million children and adolescents (as of 2017) grow up with addicted or mentally ill parents. The illness of the parents has a great impact on the children, as their upbringing is affected. They may have to take on a lot of responsibility, cannot understand the parents\' behaviour, feel lonely or worry about what they supposedly did wrong. In the course of their development, they have a significantly increased risk of reacting with abnormalities or developing clinically relevant mental disorders themselves.\r\nThe probability of being in contact with children of mentally ill parents in the educational-therapeutic field of work, and not infrequently without knowing about it \"officially\", is enormously high. Even professionals are subject to the danger of avoiding the taboo subject of \"mental illness\" out of fear of the families\' withdrawal and possible insecurity of their own. This can mean that meaningful and necessary help for the affected children is not initiated.'),
(1011, 'McMillan - Swimming Course', 'McMillan Swimming, a concept often associated with the Halliwick Method, was developed in 1964 by James McMillan for people with mental and/or physical disabilities. \r\nFor James McMillan, a natural experience of water was important. With the help of hydromechanical principles, he developed a concept, the 10-point programme, which should enable people with disabilities (e.g. multiple sclerosis, fractures, orthopaedic diseases, cerebral palsy) to build up trust in water and to experience safety and independence. Since the focus is on the water experience and the goal is safe independent movement without buoyancy aids and aids, 1:1 supervision is initially indispensable in practice.\r\nIn addition to the water experience, the 10-point programme enables the improvement of coordination skills, balance, posture and body awareness.'),
(1012, 'Introduction to Rheumatology', 'In this advanced training course, the basics of rheumatology are worked out. The most important inflammatory rheumatic diseases are introduced, the bio- and pathomechanics are explained on the basis of the clinical pictures and treatment options are shown. Psychological aspects and splint construction round off the theoretical part.\r\nIn the practical part, the basics of treatment are developed and practical exercises for the upper and lower extremities are carried out.'),
(1013, 'Treatment planning in paediatrics', 'Ergotherapeutic treatment in paediatrics is one of the most complex requirements in our professional field of activity. In this training, a case study is used to work out how a structured and model-based approach can be used to plan and design treatment successfully and transparently. You will learn about the Canadian content model CMOP-E and the practical application of the Canadian process model CPPF. With the COPM assessment tool, we will show how the assessment of findings can also succeed in paediatrics in a client-centred, activity-oriented and simple way. Together we will derive therapy goals and work out their formulation according to COAST. The final part of this training is therapy planning, which includes counselling and environmental adaptation. Questions and case studies from your personal everyday therapeutic work are an integral part of the training in order to deepen the contents listed.'),
(1014, 'First Aid', 'Every day we work with our special patients. Normally, everything goes well. But what happens when the patient is affected by a life-threatening event? How do I deal with this as a therapist? Is my first aid knowledge sufficient? How can I help my patient in the best possible way, taking into account his or her very special needs, and what do the emergency services need to know from me?\r\nThis training teaches you from the perspective of a therapist and from the perspective of a nurse how to deal with unforeseen circumstances during your work with the patient with disabilities/pre-existing conditions, how to recognise a life-threatening event and what you can do in the time until the emergency services arrive.'),
(1015, 'Graphomotor skills - Introduction to writing', 'The process of learning to write requires basic emotional, sensory, cognitive and motor skills in their integration. The process proceeds from the first scribble to the production and reproduction of graphemes.');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `client_course`
--
ALTER TABLE `client_course`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT für Tabelle `client_course`
--
ALTER TABLE `client_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81650;

--
-- AUTO_INCREMENT für Tabelle `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
