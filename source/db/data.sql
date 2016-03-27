-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2016 at 04:10 PM
-- Server version: 5.7.9
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `idcategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(80) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NULL DEFAULT NULL,
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web',
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`idcategory`, `title`, `description`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 'Business', 'Business news from all around the world', '2016-03-20 08:42:51', 'sri', '0000-00-00 00:00:00', 'sri1458579601'),
(2, 'Sports', 'Are you a sports fanatic?', '2016-03-20 08:42:51', 'sri', '0000-00-00 00:00:00', 'sri'),
(3, 'Technology', 'All the cutting edge technology news', '2016-03-20 08:42:51', 'sri', '0000-00-00 00:00:00', 'sri'),
(4, 'Movie', 'Hollywood movies details', '2016-03-20 08:42:51', 'sri', '0000-00-00 00:00:00', 'sri'),
(5, 'World', 'World News', '2016-03-20 13:16:39', 'sri', NULL, 'sri');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `idpost` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `iduser` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `body` text COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NULL DEFAULT NULL,
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web',
  PRIMARY KEY (`idpost`),
  KEY `FK_posts_user` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`idpost`, `iduser`, `title`, `body`, `image`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 13, 'Spain Crash: Bus Carrying Students', 'Over a dozen people were killed and several injured in a deadly accident in Spain when a bus collided with a car on one of the main highways in the country’s northeastern Catalonia province, according to an Associated Press (AP) report. The bus was carrying 50 people at the time of the accident, and rescue workers reportedly rushed to the spot.\r\n\r\nAgencia EFE, a Spanish news agency, reported that at least 14 people were killed in the crash, citing a Spanish government agency. The report also said that the bus collided with a car on AP7 highway, which connects Spain to France along the Mediterranean coast near the Spanish municipality of Freginals between Valencia and Barcelona.\r\n\r\nAccording to Spanish media reports, the highway was cordoned off and traffic diverted.\r\n\r\nThe AP report said that emergency workers were trying to rescue those in the bus, but a statement from the regional Catalonia government did not give an estimate of the casualties. The statement also reportedly said that the bus was carrying students back from a fireworks festival in Valencia.\r\n\r\nThe region’s Interior Minister Jordi Jané said in a press conference, according to the Guardian, that the victims were aged between 22 and 29 and added that “the majority are Erasmus students of various nationalities. We are trying to draw up a list of the victims.” He was also unable to confirm reports suggesting that all the students were from the University of Barcelona.', 'bd0b8963a2f66ad6e314d43ab3ed06dd.jpg', '2016-03-20 13:17:55', 'web', NULL, 'web'),
(2, 13, 'Tata Motors: Strike at Sanand plant', 'More than 350 workers of Tata Motors were detained by the Gujarat police Saturday for holding demonstration outside the company''s small car factory in Sanand, near Ahmedabad. The workers are on strike for the past 27 days demanding the reinstatement of 28 suspended co-workers. \r\n\r\nThe other demand of the workers -- recognition of their union by the Gujarat government -- which was the initial cause of the strike between the company and its workers has been met. The workers now want their 28 suspended colleagues to be taken back by the company, the Indian Express reported. \r\n\r\n"We are happy that the union has been recognised. However, our major demand remains to have our 28 suspended colleagues reinstated, and our agitation will continue until a compromise is reached over the matter," the daily quoted Hitesh Rabari, president of the newly formed and recognised union, the Bhartiya Kamdar Ekta Sangh (BKES), as saying.\r\n\r\nBesides Nano, the Sanand factory manufactures the company''s hatchback Tiago. \r\n\r\nThe 300 workers went on an "illegal" flash-strike Feb. 22 demanding the reinstatement of their 28 colleagues, who, Tata Motors said, were suspended for "serious misconduct." The company also said the strike "does not have a material impact" on its operations. Media reports had put the number of striking workers at 422 of a total strength of about 2,200 workers. \r\n\r\nHowever, a PTI report said that production of Nano has been curtailed to 10 percent of the Sanand unit''s small car capacity. The company manufactures about 2,000 Nano cars on an average every month, statistics revealed. \r\n\r\nThe plant has an annual production capacity of about two lakh units. \r\n\r\nThe company set up the Sanand factory in 2010 since it faced problems in acquiring land for the plant in Singur, West Bengal. \r\n\r\nTata Motors appointed Guenter Butschek as chief executive officer and managing director Jan. 18. His last assignment was with Airbus Group where he worked as CEO at Airbus, according to Tata Motors.', 'bcc1d2510dd06e9b0efd900aac4e7d9b.jpg', '2016-03-20 13:20:01', 'web', NULL, 'web'),
(3, 13, 'Airbus To Sell Unit To KKR For $1.2B', 'Private equity firm KKR & Co. agreed to buy Airbus Group SE’s defense electronics business for $1.2 billion Friday as the European plane maker looks to scale back on its defense and space units as part of an overhaul announced in September last year.\r\n\r\nAirbus may decide to retain a minority stake in the unit, which makes military sensors, electronic warfare and avionics equipment to ensure a seamless transition, the plane maker said in a statement. Bernhard Gerwert, CEO of Airbus’s defense and space division, termed the KKR pact as an “excellent outcome,” adding that the deal was expected to close in the first quarter of next year.\r\n\r\nThe defense electronics unit, part of the group''s Airbus Defense and Space arm, has a global staff of 4,000 and annual revenues of roughly 1 billion euro ($1.2 billion).\r\n\r\n"Defense Electronics is a strong, profitable business with significant growth potential, and we are convinced that KKR and the Defense Electronics management team and employees will continue to strongly develop the business," Gerwert, said.\r\n\r\nIn September last year, Airbus had announced plans to dispose of assets with combined annual revenue of about  2 billion euros ($2.25 billion) due to lower defense spending in Europe. As part of the restructuring, the company said it would sell half a dozen businesses and slash thousands of jobs.\r\n\r\nEurope''s largest aerospace group had said that going forward, it would focus its defense division on warplanes, missiles, launchers and satellites. \r\n\r\nKKR’s stock fell 1.73 percent in New York on Friday while Airbus’ stock rose 1.8 percent in Paris.', 'b208eec596060e0f8889aa37087c5e6c.JPG', '2016-03-20 13:25:45', 'web', NULL, 'web'),
(4, 13, 'World T20: India beat Pakistan', 'Hosts India revived their World Twenty20 hopes by beating fierce rivals Pakistan by six wickets in Kolkata.\r\n\r\nOn a difficult surface in a rain-affected match of 18 overs a side, Virat Kohli’s unbeaten 55 took India to their target of 119 in 15.5 overs.\r\n\r\nPakistan scraped 28 from their first six overs, but were dragged to 118-5 by Shoaib Malik (26) and Umar Akmal (22).\r\n\r\nIndia have now played Pakistan in 10 matches at World Cups and World T20s without ever being defeated.\r\n\r\nThe pre-tournament favourites, who lost their first match to New Zealand, can still reach the semi-finals if they beat Australia and Bangladesh.\r\n\r\nPakistan too are still in the hunt for a last-four spot, but face tougher tests against the Australians and unbeaten Kiwis.\r\n\r\nThis was the most eagerly anticipated match of the competition, between two fierce rivals who seldom meet outside of international tournaments because of political tensions.\r\n\r\nIndeed, the contest was moved from the Himalayan city of Dharmasala to Kolkata on security grounds, with Pakistan only agreeing to participate in the tournament on 11 March after receiving assurances from the Indian government.\r\n\r\nMore than 60,000 raucous fans packed into Eden Gardens, with crowds queuing outside well after play began, while some estimations put the global TV audience at one billion.\r\n_88857842_edengardens\r\n\r\nFans at Eden Gardens.\r\n\r\n \r\n\r\nHowever, the contest itself was not particularly memorable, with the wicket making batting difficult for all but the brilliant Kohli.\r\n\r\nThe match was dominated by the surface on which it was played, with the amount of assistance offered to the slow bowlers at times making batting impossible.\r\n\r\nIndia spinners Ravichandran Ashwin and Ravi Jadeja in particular found sharp, spitting turn, often leaving the batsmen some distance from making contact with the ball.\r\n\r\nFor their part, Pakistan misread the conditions, omitting left-arm spinner Imad Wasim in favour of Mohammad Sami, who did at least justify his selection by bowling both Shikhar Dhawan and Suresh Raina in successive deliveries.\r\n\r\nIt was a pitch that divided opinion, with some believing that T20 cricket should be about scoring runs, while others found it refreshing that bowlers were given the advantage.\r\n\r\nAfter struggling against Ashwin and Jadeja, Pakistan were only taken to a competitive total by Malik and Akmal, who finally found regular boundaries against the pace bowlers later in the innings.\r\n\r\nPakistan’s hopes were further raised when Sami extracted extra bounce to have Dhawan and Raina play on to their stumps in almost identical fashion.\r\n\r\nKohli remained, though, and took the sting out the situation in a stand of 61 with Yuvraj Singh.\r\n\r\nThe right-hander played some superb cover drives and guides behind point, bowing down to former India batsman Sachin Tendulkar, who was in the crowd, when he passed 50.\r\n\r\nIn the next over, MS Dhoni hit the winning runs, and Kohli celebrated with more adulation of Tendulkar.\r\n\r\nPakistan face the challenge of New Zealand, who have won their opening two games, in Chandigarh on Tuesday, while India will be confident of beating Bangladesh in Bangalore a day later.', 'ef54081675ec13ab6a57eec554b7e67d.jpg', '2016-03-20 13:40:23', 'web', NULL, 'web'),
(5, 13, 'News and Telstra discuss Foxtel and Fox Sports', 'Foxtel and Fox Sports could be merged ahead of a multi-billion dollar initial public offering of most of Telstra''s stake in a combined pay TV behemoth in the second half of 2016 under a deal being discussed by Foxtel''s 50: 50 shareholders Telstra and News Corp.\r\n\r\nThe Australian Financial Review understands that Telstra has indicated to News Corp, which owns 100 per cent of Fox Sports, that it wishes to integrate Fox Sports into Foxtel ahead of floating 60 per cent stake of the telco''s stake in the pay TV giant.\r\n\r\nRupert Murdoch''s News Corp, which is being advised by Goldman Sachs and Citi, is understood to be open to the idea. Sources said that there are no official banking mandates and it remains possible that no deal or IPO eventuates.\r\n\r\nThe Australian Financial Review revealed last Thursday that Telstra is considering a $4.5 billion float or sale of its 50 per cent stake in Foxtel, which is under threat from a flurry of digital competitors.\r\nAdvertisement\r\n\r\nFox Sports, which makes money from Foxtel subscribers that buy its sports programming, made US$135 million in earnings before interest, tax depreciation and amortisation (EBITDA) at the last full-year on revenues of US$500 million, according to News Corp''s last annual accounts for the year ended June 2015.\r\n\r\nFoxtel, which is Australia''s most profitable media company and its cable and satellite television monopoly, reported EBITDA down 16 per cent to US$760 million on revenues down 8 per cent to US$2.66 billion for 2015. Media experts say Foxtel could be worth between $8 billion and $9 billion in total alone.\r\n\r\nIntegrating Fox Sports could make Foxtel a more attractive investment given the importance of live sports viewing to Australians at a time when other content such as drama and comedy is also available on many cheaper platforms.\r\n\r\nIt is understood that several different potential structures are being discussed for a merger of Foxtel and Fox Sports: Foxtel could buy Fox Sports, or Fox Sports could be blended into Foxtel with Telstra either paying a balancing payment and getting 50 per cent of the combined entity, or paying nothing and getting a reduced stake in the combined entity.\r\n\r\nFormer News Corp Australia chief executive Peter Tonagh will today start as the new Foxtel chief executive replacing CEO of nearly five years Richard Freudenstein at a critical moment for the cable and satellite giant.\r\n\r\nFoxtel is considering radical options to tackle competition from cheaper video streaming services led by Netflix by becoming more of a technology-led company. \r\n\r\nNews Corp could move to increase its stake in Foxtel as it has pre-emptive rights under the joint venture''s shareholder agreement. Such a move would be likely to stoke the interest of the competition watchdog.\r\n\r\nWhile it is understood that there is no formal mandate, and it is possible that no deal eventuates, Telstra has previously used UBS and Credit Suisse as banking advisors and both have been linked to a potential IPO or sale to News Corp in the second half of 2016.\r\n\r\nFoxtel''s fortunes are critical to the performance of News Corporation in Australia as its profits support its financially-challenged newspaper operations.\r\n\r\nNews Corp and Telstra declined to comment. Telstra has consistently said Foxtel is "strategically important" to the company.\r\n\r\nRead more: http://www.smh.com.au/business/media-and-marketing/news-and-telstra-discuss-foxtel-and-fox-sports-merger-20160320-gnmqi5.html#ixzz43RzQyNAo\r\nFollow us: @smh on Twitter | sydneymorningherald on Facebook', '8d709e4d5e3e21e424eee0cd8caba3dd.jpg', '2016-03-20 13:42:37', 'web', NULL, 'web'),
(6, 13, 'Airlander 10: The world’s longest aircraft', 'New photographs of the world’s longest aircraft have been revealed in anticipation of its official unveiling and first UK test flight.\r\n\r\nThe Airlander 10, which is part plane, part airship and part helicopter, is 92m long - around 15m longer than the biggest passenger jets.\r\n\r\nThe British firm Hybrid Air vehicles (HAV) have designed the craft to stay airborne for up to three weeks using helium and the vessel is able to travel at a speed of 92mph.\r\n\r\nHAV will unveil the aircraft, standing at 26m high and 44m wide, in a First World War aircraft hangar in Bedfordshire on Monday and it will undergo its first test flight in a few weeks’ time.\r\nairlander-10-3.jpg\r\nThe third fin being attached to the Airlander 10 PA\r\n\r\nAs it is heavier than air, the Airlander 10 is able to land without tethers on a variety of surfaces, including water and ice, Sky News reports.  \r\n\r\nIt was first developed in 2009 for the US government as a long-endurance surveillance aircraft but its manufacture was hindered by defence cut-backs.\r\n\r\nHAV believe the craft could be used for a host of functions including surveillance, communications, delivering aid and even passenger travel.\r\n\r\nIt is hoped the Airlander 10 will eventually be developed to be able to transport 50 tonnes of freight.\r\nairlander-10-1.jpg\r\nThe Airlander 10 in a First World War aircraft hangar in Bedfordshire PA\r\nairlander-10.jpg\r\nThe Airlander 10 PA\r\n\r\nThe British firm have also stressed how the vessel, which is silent and emits no pollution, could be a breakthrough for air travel.\r\n\r\nThe firm is hoping to build 12 Airlanders a year by 2018, some of which can be used as passenger aircraft able to carry up to 48 people at a time, the BBC reports.\r\n\r\nChris Daniels, HAV’s head of partnerships, said: “This fantastic story of British innovation getting a unique aircraft fully assembled to do something both useful and commercially viable.\r\n\r\n“We are ready to show the world the potential it can achieve in monitoring, search and rescue, cargo, aid distribution and even passenger roles.”', 'c2354211c22efe4c996a5ea701bc1866.jpg', '2016-03-20 13:45:35', 'web', NULL, 'web'),
(7, 13, 'Pizza has replaced porn as the testing ground', 'Once upon a time, the porn industry was famous for being the first to adopt new technology.\r\n\r\nPorn was early to the web. And before that, the story (perhaps apocryphal) goes that the porn industry''s use of VHS videotapes caused the rival Betamax format to fall out of favor.\r\n\r\nBut a new industry has stolen porn''s role as the vanguard for new technology: Pizza.\r\n\r\nIt''s no exaggeration to say that the makers of the lactose-laden fast food are on the cutting edge of technology.\r\n\r\nLast week, Domino''s announced plans to test rolling delivery robots in Australia that will ferry pies directly to customers'' doorsteps. Other companies are experimenting with robo-deliveries, including Amazon and Google, which are developing drones. But Domino''s claim that it will be offering the service in some areas in six months means it will beat everyone to the punch.\r\n\r\nHow widely Domino''s ultimately deploys the robots remains to be seen, and sure, the announcement, which resulted in a wave of media coverage, is as much about marketing as it is about new business models.\r\nTech pioneers\r\n\r\nBut the pizza industry has been ahead of the curve on technology for years, going back to the early mobile apps and social media efforts that the companies offered.\r\n\r\nSome of the technology might seem kind of silly, like the so-called Easy Order button that Domino''s gave to some customers in the UK in November. Press the big plastic button, and an order is instantly transmitted to a nearby franchise. Yet it''s basically the same thing as the Dash instant-order buttons that Amazon introduced last year for many of the products it sells.\r\n\r\nDominos easy order\r\n\r\nDomino''s\r\n\r\nBoth Dominos and Pizza Hut offer pizza tracking smartphone apps that allow you to follow your pie''s progress, from the oven to your house, in real time.\r\n\r\nBut there''s more.\r\n\r\n    Want to order a pizza by tweeting an emoji? Check.\r\n    Want to order a pizza by talking to a Siri-like virtual assistant? Check.\r\n    The Apple Watch is still trying to prove itself as a must-have consumer gadget. But Domino''s already has an app for it.\r\n    Pizza Hut even experimented with eye-tracking technology last year, with an electronic menu that displays an image of various toppings and lets you select toppings just by looking at them.\r\n\r\nWhy is pizza the new porn?\r\n\r\nBoth products cater to the most primal of urges. Both involve a product that''s basically a commodity, with little to distinguish one offering from another. And in the modern, on-demand world we live in, those conditions beg for technology.\r\n\r\nPapa John''s and Domino''s each generate about half of their US sales from digital platforms. Papa John''s lists keeping up with information technology among the key "risk factors" in its annual report, while the Domino''s annual report cites technological innovation as "vital" to the company''s brand and long-term success.\r\n\r\nSo as you order your pizza this weekend, using a smartphone app or by tweeting an emoji, take comfort in the fact that you''re not just satisfying a primal urge - you''re helping to advance the state of technology.', 'ee28b2395afb7d9932b42d76489d6e01.png', '2016-03-20 13:48:08', 'web', NULL, 'web'),
(8, 13, 'Technology that may be actually killing you', 'Scaremongering BY using tech headlines is as old as time itself. We see it around us every day. The death beams of radiation emitting from our phones, irreversible addiction to our digital devices, how online friendships are destroying real relationships and how artificial intelligence mated with robotics will soon make humans redundant. It’s always a smattering of facts mixed up with a sprinkling of exaggeration – and voila! a fantastic tech-based headline that sends a shiver down our spine is ready. Unfortunately, this column and its headline isn’t one of those. This one is very real.\r\n\r\nThe dark world of blue light\r\n\r\nAll our devices emit a certain blue light. Since almost all our devices have backlighting and are much bigger now, the amount of blue light that hits our eyes and our body has increased manifold. This blue light is at a HEV (High Energy Visible) wavelength that directly enters the eye and also creates more flicker and glare than any other light. It’s also the main reason for eye strain, headaches as well as physical and mental fatigue.\r\n\r\nHave you been rubbing your eyes more often as they feel very dry? Been waking up in the morning and feeling like you could go back to sleep for another two days? Well, it may just be the killer blue light at play!\r\n\r\nIf it looks like the devil...\r\n\r\nBefore we vilify Mr Blue Light completely and an aandolan is launched to demand ‘Azaadi from Blue Light’, let me put things in perspective. This same blue light during the day is very beneficial to us. Till the time we didn’t invent artificial lighting and devices, the sun was pretty much the only thing that would light up our lives. When it went down in the evening, we set up our beds too. That set up our body’s biological clock (circadian rhythm for the sticklers who love jargon) perfectly.\r\n\r\nThat’s not the case anymore. Now, when the sun goes down, all kinds of light-emitting technology gets switched on – throwing all those perfectly evolved body systems completely out of whack.\r\n\r\nColour matters\r\n\r\nStudies over the years have shown that bright, cool blue wave-length-based lights in work environments boost attention, reaction times and lift your mood. This trick is now used by almost everybody in the corporate world. Unfortunately, the very same blue light shining into our eyes all through the day and continuing long into the night can become disruptive. Prolonged exposure to blue light can cause retinal damage and sight degeneration, which can lead to a permanent loss of vision.\r\n\r\nA recent study cited evidence that half the world’s population will be myopic by 2050. Harvard researchers have also linked this blue light to lowering the production of melatonin, the hormone that regulates sleep. It also has close links to several types of cancer, diabetes, heart disease, obesity and an increased risk of depression. Well, I did start by saying this wasn’t a scare-mongering column – only much worse!\r\n\r\nThe killer’s killer\r\n\r\nThis is an important topic to bring into mainstream awareness. We all seem to have taken to a lifestyle where excessive usage of electronics has become a factor for bragging rights. Working late into the night with emails, web browsing or reading a book on an electronic screen just before sleeping, binge-watching a TV show on a large screen in absolute darkness, playing games for long hours without a single break – these are all accepted as a part of our new-found digital lifestyle. Well, it’s time to wake up from the self-delusion that there isn’t much we can do about it.\r\nThe Google Play books showcase blue-light reduction at different times\r\n\r\nHelp is at hand\r\n\r\nThe first part towards change is being mindful. Be aware that there is a harmful blue light beaming into your eyes, face and body every time you crank up a device. Reduce it as much as you can. You don’t really have to check your phone or turn on your tablet every few minutes out of sheer habit. Break the habit.\r\n\r\nThe second critical factor is to reduce the difference between the brightness of the screen and your environment. Reduce bright areas by using a dark theme such as white-on-black. Never use a device in total darkness and reduce the brightness on the screen to as low as possible (you’ll be surprised at how your eye adapts within seconds).\r\nBlue-light reducing glasses make on-screen colours look a bit warped\r\n\r\nThere are some apps and blue-light-reducing glasses that can make the colours on your screen look warped. The only real way to truly battle this blue-light issue is to force device manufacturers to step up.\r\n\r\nAcer’s laptops have Blue-light shield technolog\r\n\r\nThere are companies such as BenQ with their low-blue-light Eyegonomic monitors that do a fantastic job at reducing bluelight harm. Acer has a series of laptop screen with their Bluelightshield technology that also does the same. If we give our business to companies such as these, we could force other manufacturers to also come up with blue-light reduction on all our devices. The technology is out there: we just have to demand it!', '48c2b35b480ed0a49703ed66189d7701.jpg', '2016-03-20 13:49:12', 'web', NULL, 'web'),
(9, 13, 'Netflix reportedly signs major $90 million movie', 'Netflix service has won a bidding war for the rights to fantasy cop thriller Bright, starring Will Smith, according to Deadline. Over $3 million is going to screenwriter Max Landis (Chronicle, American Ultra) for the script, and Netflix is setting aside $90 million to make the film — about half of that in production costs, and another half for talent. That makes this by far Netflix''s largest movie deal.\r\n\r\nBright has some star power behind it — in addition to Will Smith, there are plans for David Ayer (End of Watch, Fury) to direct it and for Joel Edgerton (Exodus: Gods and Kings) to co-star. News of the deal was first reported earlier this month, but the terms have not been nailed down until now. Netflix reportedly beat out Warner Bros. for the rights to the film after an extended bidding war. That''s notable, because Warner Bros. just finished working with both Smith and Ayer on Suicide Squad.\r\n\r\n"Film could see limited theatrical run"\r\n\r\nNetflix apparently sees Bright as a possible franchise designed to provide value to its subscribers around the world. That means it might get a limited theatrical run alongside a day-and-date release online, though theater chains have resisted such arrangements in the past. Either way, this type of distribution model means the stars won''t be getting residuals from ticket sales after release, like a traditional movie. That''s why Netflix is guaranteeing money up front for the big names involved in lieu of a cut of ticket sales.\r\n\r\nIn the film, Smith will play a (human) police officer who joins up with an orc played by Edgerton to find a magic wand that could do some damage in the wrong hands. In the world of the film, humans live alongside fantastical beings (like orcs and fairies). Naturally, the police have a unit committed to solving supernatural crime. Deadline reports that it will be rated R and will try to rekindle some of the magic of Men in Black. Shooting is pegged to start this fall in Los Angeles.', '6bf2a734eb976cafe1ca6bed1b6de721.jpg', '2016-03-20 13:51:17', 'web', NULL, 'web'),
(10, 13, 'How Batman v Superman Sets the Tone', 'Some of the biggest questions about Batman v Superman: Dawn of Justice have to do with the shared universe it sets in motion. How will it affect future DC Comics movies, and who is steering the ship? The film’s director, Zack Snyder, explained all that and more at a press conference today.\r\n\r\n“The thing that’s interesting about the process with this movie is once we committed to the idea of having Batman fight Superman it was only then that we were like, ‘Okay, that implies that a universe exists,’” Snyder told a group of reporters.\r\n\r\n“[Also] I was obsessed with the Trinity. I really wanted to see the Trinity, that being Batman, Superman and Wonder Woman, in a single moment,” Snyder added. “That was a thing I was really interested in trying to get into this movie. And those conversations are really what lead to this ‘Dawn of Justice’ subheading for the film. That we could now have conversations about the fact that the Justice League and or the DC Universe now could evolve from this.”\r\n\r\nAnd of course, this universe is already in the works. Warner Bros. currently has nine more DC movies on its schedule after Batman v Superman. Charles Roven, who has been producing DC movies since Batman Begins, explained further how that’s all going to work.\r\n\r\n“It’s a team of us,” he said. “The team is Debbie [Snyder], Zack [Snyder], myself, Geoff Johns is part of it and obviously the [Warner Bros.] creative guys, Greg Silverman and John Berg, they’re all a part of it.\r\n\r\nThat means that in addition to thinking about how to make each movie stand on its own, the DC brain trust is constantly figuring out how these films can become interconnected, said Roven. Each film has to make sense as part of a shared continuity, and “leave room for other great filmmakers to be involved.”\r\nHow Batman v Superman Sets the Tone For the Entire DC Movie Universe\r\n\r\nThis involves a huge trade-off: “While we want to get to a certain place, we don’t stay too rigid and too fixed, on exactly the methodology of how we get there,” said Roven. “We have to leave room for the creative process to allow it to evolve.”\r\n\r\nDC already has filmmakers David Ayer (Suicide Squad), Patty Jenkins (Wonder Woman), and James Wan (Aquaman) as part of its team. And Snyder is coming back for Justice League: Part One. But another filmmaker Warner Bros. has long been rumored to want in the mix is Batman himself, Ben Affleck. When asked if he was interested in helming a DC film, Affleck said yes—depending on the material—but it was observing Snyder on Batman v Superman that brought him to that decision.\r\n\r\n“I learned a lot from Zack on this movie,” Affleck said. “One of the really valuable things about it for me was watching a guy who really understands how to make films on this level, with cutting edge technology, combining in camera stuff with visual effects and and all the tools at a director’s disposal.” Affleck added that he’d always wondered about directing movies like this, so it was great to see one up close. “So I felt like, if that day did come, that I definitely picked up a lot of valuable information and tricks.”\r\n\r\nOne of the biggest tricks any filmmaker in the DC movie universe will have to master is capturing a consistent tone and Snyder explained that, for him, was the biggest challenge. And he described the tone of the DC films as serious, but with a tinge of irony.\r\nHow Batman v Superman Sets the Tone For the Entire DC Movie Universe\r\n\r\n“Tone, to me, is the number one aspect of a film that I really interested in,” he said. “We take it heart-attack serious, but at the same time there’s a self awareness to the movie that I think you have to have, in order for the movie to resonate on any kind of second level beyond just ‘Oh look, these two superheroes are fighting and that’s cool.’”\r\n\r\nAs for where that story might go, Batman v Superman offers plenty of hints about the future of the universe—but audiences can also look at the development of Superman himself, from Man of Steel to Batman v Superman.\r\n\r\n“This felt like the development of Superman, the character we know and love from the comics,” said actor Henry Cavill. “We’re still not there yet. We are looking at the guy growing up. He’s become this ‘Super Man’ after discovering he was Kal El in the first movie, and now he’s facing his second guy and it’s a tough outing for him, because it’s against a psychological enemy as opposed to a physical enemy, like Zod was. And we see him make mistakes, and we see him grow from his mistakes, and learn from them.”', '2880833ceb693b320648cc4445541eed.jpg', '2016-03-20 13:51:59', 'web', NULL, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE IF NOT EXISTS `post_categories` (
  `idpost_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idpost` int(10) UNSIGNED NOT NULL,
  `idcategory` int(10) UNSIGNED NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NULL DEFAULT NULL,
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web',
  PRIMARY KEY (`idpost_category`),
  KEY `FK_post_categories_post` (`idpost`),
  KEY `FK_post_categories_category` (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`idpost_category`, `idpost`, `idcategory`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 1, 5, '2016-03-20 13:17:55', '13', NULL, 'sri1458579602'),
(2, 2, 1, '2016-03-20 13:20:01', '13', NULL, 'web'),
(3, 3, 1, '2016-03-20 13:25:45', '13', NULL, 'web'),
(4, 4, 2, '2016-03-20 13:40:23', '13', NULL, 'web'),
(5, 5, 2, '2016-03-20 13:42:37', '13', NULL, 'web'),
(6, 6, 5, '2016-03-20 13:45:35', '13', NULL, 'web'),
(7, 7, 3, '2016-03-20 13:48:08', '13', NULL, 'web'),
(8, 8, 3, '2016-03-20 13:49:13', '13', NULL, 'web'),
(9, 9, 4, '2016-03-20 13:51:18', '13', NULL, 'web'),
(10, 10, 4, '2016-03-20 13:51:59', '13', NULL, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE IF NOT EXISTS `post_tags` (
  `idpost_tag` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idpost` int(10) UNSIGNED NOT NULL,
  `idtag` int(10) UNSIGNED NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NULL DEFAULT NULL,
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web',
  PRIMARY KEY (`idpost_tag`),
  KEY `FK_post_tags_post` (`idpost`),
  KEY `FK_post_tags_tag` (`idtag`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`idpost_tag`, `idpost`, `idtag`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 1, 1, '2016-03-20 13:17:55', '13', NULL, 'web'),
(2, 2, 2, '2016-03-20 13:20:01', '13', NULL, 'web'),
(3, 3, 3, '2016-03-20 13:25:45', '13', NULL, 'web'),
(4, 4, 4, '2016-03-20 13:40:23', '13', NULL, 'web'),
(5, 5, 5, '2016-03-20 13:42:37', '13', NULL, 'web'),
(6, 6, 6, '2016-03-20 13:45:35', '13', NULL, 'web'),
(7, 7, 7, '2016-03-20 13:48:08', '13', NULL, 'web'),
(8, 8, 7, '2016-03-20 13:49:13', '13', NULL, 'web'),
(9, 9, 8, '2016-03-20 13:51:18', '13', NULL, 'web'),
(10, 10, 9, '2016-03-20 13:51:59', '13', NULL, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `idprofile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `iduser` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NULL DEFAULT NULL,
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web',
  PRIMARY KEY (`idprofile`),
  KEY `unique_iduser` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`idprofile`, `iduser`, `first_name`, `last_name`, `display_name`, `gravatar_email`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 13, 'Sridhar', 'Balasubramanian', 'Sam', 'sridhar.posnic@gmail.com', '2016-03-20 13:13:06', 'web', NULL, 'web'),
(2, 34, 'Sridhar', 'Balasubramanian', 'Sri', 'sridharkalaibala@gmail.com', '2016-03-22 15:32:41', 'web', NULL, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `idtag` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NULL DEFAULT NULL,
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web',
  PRIMARY KEY (`idtag`),
  UNIQUE KEY `unique_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`idtag`, `title`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 'accident', '2016-03-20 13:17:55', '13', NULL, 'web'),
(2, 'tata', '2016-03-20 13:20:01', '13', NULL, 'web'),
(3, 'airbus', '2016-03-20 13:25:45', '13', NULL, 'web'),
(4, 'cricket', '2016-03-20 13:40:23', '13', NULL, 'web'),
(5, 'sports', '2016-03-20 13:42:37', '13', NULL, 'web'),
(6, 'airlander', '2016-03-20 13:45:35', '13', NULL, 'web'),
(7, 'technology', '2016-03-20 13:48:08', '13', NULL, 'web'),
(8, 'netflix', '2016-03-20 13:51:18', '13', NULL, 'web'),
(9, 'batman', '2016-03-20 13:51:59', '13', NULL, 'web'),
(10, 'test', '2016-03-22 15:12:47', '34', NULL, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) CHARACTER SET latin1 NOT NULL DEFAULT 'web',
  `edit_date` timestamp NULL DEFAULT NULL,
  `edited_by` varchar(80) CHARACTER SET latin1 DEFAULT 'web',
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `unique_email` (`email`),
  UNIQUE KEY `unique_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`iduser`, `email`, `password`, `code`, `status`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(13, 'sridhar.posnic@gmail.com', '9f32a49b0998e3a62085abb091d6a54b', '3fdedb526d9f311420f792b173b44aad', 1, '2016-03-20 13:06:11', 'web', '2016-03-20 07:37:11', 'web'),
(18, 'xyz10702@gmail.com', 'ae1631ef1e7e1e6015aa7d44bd76736f', '4fa2293b031b191d539dcf74e01b4458', 0, '2016-03-20 17:38:37', 'web', NULL, 'web'),
(19, '26495xyz29516@gmail28565.com', '2d18461fb1a71a8234f424706f506e98', '7b7071a1fc504bfd879aa548fa6d7ae2', 0, '2016-03-21 13:29:03', 'web', NULL, 'web'),
(20, '24880xyz12713@gmail21294.com', '44395e8a0c978a046f991f8ad30e23f6', 'ed4cd2d4195fdbe96fadb7cf89af90c3', 0, '2016-03-21 13:30:50', 'web', NULL, 'web'),
(21, 'testtest@pluskb.com', 'ef63c545e4d00c4192f538bb370c60b2', 'fdd969a55d16bdb122c2267fd0f55186', 0, '2016-03-21 13:31:57', 'web', NULL, 'web'),
(22, '20569xyz1054@gmail5375.com', '5bef14deab7689d2ee997f4063cbe698', '4c564d2e81837b2ebf27ef0fa91aefc7', 0, '2016-03-21 13:43:41', 'web', NULL, 'web'),
(23, '23094xyz3383@gmail4772.com', '2b2f1a9e206f03dc8691591d4ee02f5e', '01c88b96306f6b2403f1125e34bebe6d', 0, '2016-03-21 13:50:14', 'web', NULL, 'web'),
(24, '5913xyz9182@gmail6591.com', 'a8b9e2e6b61461393ee97a64fe5e3bcd', '9b8a576519c945fe573433da5fe61db5', 0, '2016-03-21 14:11:43', 'web', NULL, 'web'),
(25, '10101xyz8970@gmail10107.com', '9eb3bad51808623b678d0ab8459dae74', '5a77a09ffca0f1085baed0752a82daa5', 0, '2016-03-21 14:14:43', 'web', NULL, 'web'),
(26, '19283xyz3216@gmail27017.com', '93ff0a1df825dc912fe3000860fda133', '2fd41c097124365639898ac0c4b38401', 0, '2016-03-21 14:20:04', 'web', NULL, 'web'),
(27, '2875xyz29272@gmail12209.com', 'bbdee1a44db221bb7b64f866c67d88c0', 'ff62fe0947598931cb54c790e09fe71d', 0, '2016-03-21 14:26:15', 'web', NULL, 'web'),
(28, '3929xyz22302@gmail27647.com', '0a17bfed1e025f0819c354626769dcae', '3fae23e4e8da1d9c01f21703a56126e1', 0, '2016-03-21 14:29:29', 'web', NULL, 'web'),
(29, '24218xyz25547@gmail1960.com', '05bf910d80415ca67c42294a51a402c9', '7a83bf4e2c2fc6e8245a44b3ea07fc2d', 0, '2016-03-21 14:32:23', 'web', NULL, 'web'),
(30, '21236xyz23069@gmail25746.com', '3e034f513f162a795c505a2037dab6a2', 'ff856998422a348c0a3d7f9c76e1651b', 0, '2016-03-21 14:39:54', 'web', NULL, 'web'),
(31, '24539xyz14968@gmail9553.com', '1586e31263d58d4438f332513f6e27e2', 'e48b013539daefc10c324612217fe312', 0, '2016-03-21 16:40:41', 'web', NULL, 'web'),
(32, '32295xyz18644@gmail19069.com', '7f265ed4a645f738c0802ffdfbe988b4', '7dc4beeeef8355f1fae956c632f6b802', 0, '2016-03-21 16:43:37', 'web', NULL, 'web'),
(33, '31743xyz11724@gmail22549.com', 'b44d1a0732f64432078f3f4cbd12f863', 'bea5ec55d845daad643bf9155b282bed', 0, '2016-03-21 16:59:02', 'web', NULL, 'web'),
(34, 'sridharkalaibala@gmail.com', '9f32a49b0998e3a62085abb091d6a54b', '344ca99679012eea883faaba3f2bd12f', 1, '2016-03-22 15:09:09', 'web', '2016-03-22 09:40:16', 'web'),
(35, 'netnet123@pluskb.com', '9f32a49b0998e3a62085abb091d6a54b', '966adcd7bd12168b2c7235e12fb0fea1', 1, '2016-03-22 15:34:36', 'web', '2016-03-22 10:09:11', 'web');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_posts_user` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD CONSTRAINT `FK_post_categories_category` FOREIGN KEY (`idcategory`) REFERENCES `categories` (`idcategory`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_post_categories_post` FOREIGN KEY (`idpost`) REFERENCES `posts` (`idpost`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `FK_post_tags_post` FOREIGN KEY (`idpost`) REFERENCES `posts` (`idpost`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_post_tags_tag` FOREIGN KEY (`idtag`) REFERENCES `tags` (`idtag`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `FK_profiles_users` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
