-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 18 2023 г., 16:05
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bbc`
--

CREATE TABLE `bbc` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `bbc`
--

INSERT INTO `bbc` (`article`, `link`) VALUES
('Three key priorities in crucial US-China talks', 'https://www.bbc.com//news/world-us-canada-65941187'),
('War must end, South African president tells Putin', 'https://www.bbc.com//news/world-europe-65940655'),
('Gove says sorry over Tory lockdown party video', 'https://www.bbc.com//news/uk-politics-65941549'),
('Watch: Huge fire breaks out on Philippines ferry', 'https://www.bbc.com//news/world-asia-65942742'),
('Dozens of pupils killed in Uganda school attack', 'https://www.bbc.com//news/world-africa-65937484'),
('Deadly air strikes kill 17 in Sudan\'s capital', 'https://www.bbc.com//news/world-africa-65938868'),
('I\'ll expose my children to homelessness - Prince William', 'https://www.bbc.com//news/uk-65941931'),
('Quake damages French homes, schools and churches', 'https://www.bbc.com//news/world-europe-65940654'),
('Tens of thousands march in Warsaw for LGBT rights', 'https://www.bbc.com//news/world-europe-65941658'),
('Quake damages French homes, schools and churches', 'https://www.bbc.com//news/world-europe-65940654'),
('Tens of thousands march in Warsaw for LGBT rights', 'https://www.bbc.com//news/world-europe-65941658'),
('Suspended Conservative MP David Warburton resigns', 'https://www.bbc.com//news/uk-politics-65941710'),
('Spanish drought forces flamingos to leave home', 'https://www.bbc.com//news/world-europe-65938869'),
('Watch: The King\'s birthday parade... in 57 seconds', 'https://www.bbc.com//news/uk-65937832');

-- --------------------------------------------------------

--
-- Структура таблицы `cnn`
--

CREATE TABLE `cnn` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cnn`
--

INSERT INTO `cnn` (`article`, `link`) VALUES
('Leah Millis/Reuters', 'https://edition.cnn.com//2023/06/17/politics/blinken-beijing-visit-expectations/index.html'),
('Blinken begins high-stakes talks in China amid rising tensions between world’s two superpowers', 'https://edition.cnn.com//2023/06/17/politics/blinken-beijing-visit-expectations/index.html'),
('Trump-appointed judge blocks parts of Indiana ban on gender-affirming care for trans youth', 'https://edition.cnn.com//2023/06/17/politics/indiana-transgender-youth-care-ban-judge/index.html'),
('Biden kicks off reelection bid with union rally in Philadelphia', 'https://edition.cnn.com//2023/06/17/politics/biden-pennsylvania-campaign-rally/index.html'),
('Nikki Haley calls husband’s National Guard deployment a ‘moment of pride’', 'https://edition.cnn.com//2023/06/17/politics/nikki-haley-michael-deployment-ceremony-africa/index.html'),
('This Pennsylvania city hopes Biden’s infrastructure law can help revitalize its downtown', 'https://edition.cnn.com//2023/06/17/politics/ev-chargers-biden-infrastructure-reading-pennsylvania/index.html'),
('Another historic week in the investigation and prosecution of Donald Trump', 'https://edition.cnn.com//2023/06/17/politics/trump-week-ahead-explainer-indictments/index.html'),
('Trump lawyer who bailed on documents case says in separate lawsuit he is withdrawing due to ‘irreconcilable differences’', 'https://edition.cnn.com//2023/06/16/politics/trump-lawyer-withdraw-jim-trusty/index.html'),
('Special counsel seeks court order to ensure Trump and his defense don’t share materials turned over in discovery', 'https://edition.cnn.com//2023/06/16/politics/justice-trump-prosecution-protective-order/index.html'),
('Millions of Americans’ personal data exposed in global hack', 'https://edition.cnn.com//2023/06/16/politics/cyberattack-us-government/index.html'),
('Chip Somodevilla/Getty Images', 'https://edition.cnn.com//2023/06/16/politics/2024-election-trump-rivals-what-matters/index.html'),
('While Trump capitalizes, his rivals calculate', 'https://edition.cnn.com//2023/06/16/politics/2024-election-trump-rivals-what-matters/index.html'),
('The debate on the American right isn’t about classified documents. It’s about fear of transgender rights', 'https://edition.cnn.com//2023/06/15/politics/conservatives-lgbtq-rights-what-matters/index.html'),
('Trump’s main 2024 election goal is now to save himself', 'https://edition.cnn.com//2023/06/14/politics/donald-trump-indictment-2024-campaign/index.html'),
('Trump’s arraignment on federal charges is a grave moment for the nation', 'https://edition.cnn.com//2023/06/13/politics/president-trump-arraignment-grave-moment/index.html'),
('Trump is not a spy. Why is he charged under the Espionage Act?', 'https://edition.cnn.com//2023/06/13/politics/espionage-act-trump-what-matters/index.html'),
('How Republicans are stitching their own straitjacket on Trump indictment', 'https://edition.cnn.com//2023/06/13/politics/republican-response-trump-indictment/index.html'),
('Why Chris Christie’s presidential bid remains a long shot', 'https://edition.cnn.com//2023/06/13/politics/chris-christie-2024-president-long-shot/index.html'),
('Here’s what to know about GOP claims of a Biden scandal', 'https://edition.cnn.com//2023/06/09/politics/hunter-biden-republicans-what-matters/index.html'),
('Trump documents case is a test for the justice system he wants to dismantle', 'https://edition.cnn.com//2023/06/12/politics/trump-documents-case-justice-system/index.html');

-- --------------------------------------------------------

--
-- Структура таблицы `cnn_sport`
--

CREATE TABLE `cnn_sport` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cnn_sport`
--

INSERT INTO `cnn_sport` (`article`, `link`) VALUES
('Rickie Fowler’s agonizing finish sees Wyndham Clark take share of US Open lead into final round', '/2023/06/18/golf/fowler-clark-third-round-us-open-spt-intl/index.html'),
('Romeo Beckham signs one-year contract with Premier League club Brentford', '/2023/06/18/golf/fowler-clark-third-round-us-open-spt-intl/index.html'),
('Bob Brown, Hall of Fame offensive lineman in pro and collegiate football, dies at 81', '/2023/06/18/sport/romeo-beckham-premier-league-brentford-spt-intl/index.html'),
('West Virginia men’s basketball coach Bob Huggins resigns and announces retirement following his DUI arrest', '/2023/06/18/sport/romeo-beckham-premier-league-brentford-spt-intl/index.html'),
('Patriots’ Jack Jones arrested after two loaded guns found in carry-on luggage, police say', '/2023/06/18/sport/bob-brown-football-death-spt/index.html'),
('Deion Sanders is at risk of having his left foot amputated due to circulation issues, doctors say', '/2023/06/18/sport/bob-brown-football-death-spt/index.html'),
('Kylian Mbappé: What next for French superstar as questions over his PSG future rumble on?', '/2023/06/17/sport/bob-huggins-dui-coach-west-virginia-basketball/index.html'),
('Tiger Woods set to miss Open Championship, his third straight major absence', '/2023/06/17/sport/bob-huggins-dui-coach-west-virginia-basketball/index.html'),
('Cyclist Gino Mäder has died after Tour de Suisse crash, his team says', '/2023/06/17/sport/patriots-jack-jones-luggage-airport-guns/index.html'),
('Fiery soccer game between US and Mexico ends early amid homophobic chants', '/2023/06/17/sport/patriots-jack-jones-luggage-airport-guns/index.html'),
('NBA suspends Memphis Grizzlies’ star Ja Morant for 25 games without pay for ‘conduct detrimental to the league’', '/2023/06/17/sport/deion-sanders-foot-amputation-risk-spt/index.html'),
('Ray Lewis III, son of Hall of Famer Ray Lewis, dies at 28', '/2023/06/17/sport/deion-sanders-foot-amputation-risk-spt/index.html');

-- --------------------------------------------------------

--
-- Структура таблицы `deadspin`
--

CREATE TABLE `deadspin` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `deadspin`
--

INSERT INTO `deadspin` (`article`, `link`) VALUES
('Bob Huggins stepping down after DUI arrest [Updated]', 'https://deadspin.com/bob-huggins-dui-west-virginia-basketball-wvu-1850550493'),
('Michael Jordan failed as Charlotte Hornets owner', 'https://deadspin.com/bob-huggins-dui-west-virginia-basketball-wvu-1850550493'),
('Ja Morant fittingly suspended 25 games for a couple moments of idiocy', 'https://deadspin.com/michael-jordan-nba-charlotte-hornets-lamelo-ball-1850550311'),
('The New York Yankees are running out of numbers to issue', 'https://deadspin.com/michael-jordan-nba-charlotte-hornets-lamelo-ball-1850550311'),
('El Tri comes through in all its embarrassing, pathetic glory on an interesting night for the USMNT', 'https://deadspin.com/ja-morant-nba-memphis-grizzlies-suspension-adam-silver-1850547850');

-- --------------------------------------------------------

--
-- Структура таблицы `euronews`
--

CREATE TABLE `euronews` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `euronews`
--

INSERT INTO `euronews` (`article`, `link`) VALUES
('The week in pictures: Mediterranean tragedy, Ukraine fights on, goodbye to Berlusconi', 'https://www.euronews.com//2023/06/18/the-week-in-pictures-mediterranean-tragedy-ukraine-fights-on-goodbye-to-berlusconi'),
('Serbia: Seventh week of mass demonstrations against the government', 'https://www.euronews.com//2023/06/18/serbia-seventh-week-of-mass-demonstrations-against-the-government'),
('French police use tear gas during protests in Savoy against Lyon-Turin rail link', 'https://www.euronews.com//2023/06/18/french-police-use-tear-gas-during-protests-in-savoy-against-lyon-turin-rail-link'),
('Cyberbullying: Can Europe and social media do better?', 'https://www.euronews.com//2023/06/18/cyberbullying-can-europe-and-social-media-do-better'),
('Latest news bulletin | June 18th – Morning', 'https://www.euronews.com//video/2023/06/18/latest-news-bulletin-june-18th-morning'),
('African leaders meet President Putin in Russia on \"peace mission\"', 'https://www.euronews.com//2023/06/17/african-leaders-meet-president-putin-in-russia-on-peace-mission'),
('At least 17 killed in Sudan in one of the deadliest strikes of the war', 'https://www.euronews.com//2023/06/17/at-least-17-killed-in-sudan-in-one-of-the-deadliest-strikes-of-the-war'),
('Montenegro wants to join the EU but \"something needs to be done\"', 'https://www.euronews.com//2023/06/17/montenegro-wants-to-join-the-eu-but-something-needs-to-be-done'),
('Why Europe\'s centre parties are being outflanked by extremists', 'https://www.euronews.com//2023/06/17/why-europes-centre-parties-are-being-outflanked-by-extremists'),
('Latest news bulletin | June 17th – Evening', 'https://www.euronews.com//video/2023/06/17/latest-news-bulletin-june-17th-evening'),
('Village near west coast of France evacuated after tremors', 'https://www.euronews.com//2023/06/17/village-near-west-coast-of-france-evacuated-after-tremors'),
('Trooping the Colour: Charles III on horseback for his first birthday parade', 'https://www.euronews.com//2023/06/17/trooping-the-colour-charles-iii-on-horseback-for-his-first-birthday-parade'),
('\"Senseless act of violence\": At least 41 killed in rebel attack on Ugandan school near Congo border', 'https://www.euronews.com//2023/06/17/senseless-act-of-violence-at-least-25-killed-in-rebel-attack-on-ugandan-school-near-congo-'),
('Ukraine update: Putin claims to be \'ready for dialogue\' as Biden downplays Kyiv\'s NATO hopes', 'https://www.euronews.com//2023/06/17/ukraine-update-african-leaders-to-meet-with-putin-as-russia-reinforces-military-hardware'),
('Climate activists mount pressure on German government to sign heating bill', 'https://www.euronews.com//2023/06/17/climate-activists-mount-pressure-on-german-government-to-sign-heating-bill'),
('Vietnam War whistleblower Daniel Ellsberg dies at 92', 'https://www.euronews.com//2023/06/17/vietnam-war-whistleblower-daniel-ellsberg-dies-at-92'),
('Ukraine in pictures: An African peace plan, protests in Europe and Putin in public', 'https://www.euronews.com//2023/06/17/ukraine-in-pictures-an-african-peace-plan-protests-in-europe-and-putin-in-public'),
('Teachers in Hungary protest \'revenge\' education reform bill', 'https://www.euronews.com//2023/06/17/teachers-in-hungary-protest-revenge-education-reform-bill');

-- --------------------------------------------------------

--
-- Структура таблицы `euronews_sport`
--

CREATE TABLE `euronews_sport` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `euronews_sport`
--

INSERT INTO `euronews_sport` (`article`, `link`) VALUES
('Is Mbappé set to leave PSG this summer? French star rejects contract extension', 'https://www.euronews.com//2023/06/13/is-mbappe-set-to-leave-psg-this-summer-french-star-rejects-contract-extension'),
('Meet the Qatari sportsman reviving the ancient tradition of horse archery', 'https://www.euronews.com//culture/2023/06/12/meet-the-qatari-sportsman-reviving-the-ancient-tradition-of-horse-archery'),
('Novak Djokovic parades his record-breaking 23rd Grand Slam title in Paris', 'https://www.euronews.com//2023/06/11/french-open-djokovic-becomes-first-man-to-win-23-grand-slam-titles'),
('Mission completed: Man City beats Inter Milan to end wait for first Champions League title', 'https://www.euronews.com//2023/06/11/mission-completed-man-city-beats-inter-milan-to-end-wait-for-first-champions-league-title'),
('Rhythms of the Gulf: The singing star bringing Khaliji music to the world', 'https://www.euronews.com//next/2023/06/10/rhythms-of-the-gulf-the-singing-star-bringing-khaliji-music-to-the-world'),
('Green Week: Which clubs are doing their bit for the climate?', 'https://www.euronews.com//2023/06/08/green-week-which-clubs-are-doing-their-bit-for-the-climate'),
('Football star Lionel Messi set to join US side Inter Miami', 'https://www.euronews.com//2023/06/07/football-star-lionel-messi-set-to-join-us-side-inter-miami'),
('PGA and LIV Golf announce stunning merger', 'https://www.euronews.com//2023/06/06/pga-and-liv-golf-announce-stunning-merger'),
('Saudi Arabia\'s quest to become a sport kingdom', 'https://www.euronews.com//2023/06/06/saudi-arabias-quest-to-become-a-sport-kingdom'),
('UEFA\'s \'undercover fans\' track racism at football matches', 'https://www.euronews.com//2023/06/05/uefas-undercover-fans-track-racism-at-football-matches'),
('Delight as Tajikistan strikes triple gold in Dushanbe', 'https://www.euronews.com//2023/06/04/delight-as-tajikistan-strikes-triple-gold-in-dushanbe'),
('Epic Tajik Judo final in Dushanbe', 'https://www.euronews.com//2023/06/03/epic-tajik-judo-final-in-dushanbe'),
('Judo-loving Tajikistan is victorious at its first-ever Grand Prix in Dushanbe', 'https://www.euronews.com//2023/06/02/judo-loving-tajikistan-is-victorious-at-its-first-ever-grand-prix-in-dushanbe'),
('Meet the football clubs growing their brand through the media', 'https://www.euronews.com//2023/06/01/meet-the-football-clubs-growing-their-brand-through-the-media'),
('Lionel Messi to leave French club Paris Saint-Germain after two difficult years', 'https://www.euronews.com//2023/06/01/lionel-messi-to-leave-french-club-paris-saint-germain-after-two-difficult-years'),
('Mauricio Pochettino confirmed as new Chelsea manager', 'https://www.euronews.com//2023/05/29/mauricio-pochettino-confirmed-as-new-chelsea-manager'),
('Verstappen breaks Red Bull win record at Monaco Grand Prix', 'https://www.euronews.com//2023/05/29/verstappen-breaks-red-bull-win-record-at-monaco-grand-prix'),
('Judo legends triumph in Upper Austria', 'https://www.euronews.com//2023/05/27/judo-legends-triumph-in-upper-austria');

-- --------------------------------------------------------

--
-- Структура таблицы `gamespot`
--

CREATE TABLE `gamespot` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gamespot`
--

INSERT INTO `gamespot` (`article`, `link`) VALUES
('Diving Deep Into Alan Wake 2', 'https://www.gamespot.com/a/uploads/screen_small/1632/16320660/4152573-alanwake2_det_4k_035.png'),
('Get Ghostwire: Tokyo And 7 More Games For $8 With GameSpot\'s Promo Code', 'https://www.gamespot.com/a/uploads/screen_small/1701/17013431/4148668-gsjunehumblechoiceheader.jpg'),
('Best Buy\'s 4K Blu-Ray Weekend Sale Includes Steelbooks For Cheap', 'https://www.gamespot.com/a/uploads/screen_small/1601/16018044/4154190-the-batman.jpg'),
('Skyrim Grandma Isn\'t In Starfield And Will \"Never\" Play It', 'https://www.gamespot.com/a/uploads/screen_small/1725/17256179/4154101-starfieldfeatured.jpg'),
('No, The Flash Doesn\'t Really Reset the DC Universe', 'https://www.gamespot.com/a/uploads/screen_small/1757/17577455/4154248-batmanandtheflashandtheflash.jpg'),
('There Are So Many Great Nintendo Switch Deals This Week', 'https://www.gamespot.com/a/uploads/screen_small/1595/15950357/4153961-nintendoswitchdeals.png'),
('All Dry Steppes Altar Of Lilith Locations In Diablo 4', 'https://www.gamespot.com/a/uploads/screen_small/1599/15997278/4148224-gulraan_dry_steppeslarge.jpeg'),
('Diablo 4 - Best Barbarian Builds Guide', 'https://www.gamespot.com/a/uploads/screen_small/1745/17457013/4147596-barb2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `guardiansport`
--

CREATE TABLE `guardiansport` (
  `article` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `guardiansport`
--

INSERT INTO `guardiansport` (`article`, `link`) VALUES
('The Ashes – England v Australia, first Test, day three', 'https://www.theguardian.com/sport/live/2023/jun/18/the-ashes-2023-england-vs-australia-live-updates-first-test-cricket-eng-v-aus-latest-score-day-three-egdbaston'),
('McIlroy and Fowler to vie for redemption in Hollywood finale', 'https://www.theguardian.com/sport/2023/jun/18/rory-mcilroy-and-rickie-fowler-redemption-stories-to-inspire-final-round-duel-at-us-open'),
('Tyler’s voice and love for the game are a constant between eras', 'https://www.theguardian.com/football/blog/2023/jun/18/martin-tylers-voice-and-love-for-the-game-are-a-constant-between-football-eras'),
('Refugee athlete Dominic Lobalu on race to find a home', 'https://www.theguardian.com/sport/2023/jun/18/im-born-to-suffer-refugee-athlete-dominic-lobalu'),
('Ecclestone steps up with Ashes success in her sights', 'https://www.theguardian.com/sport/2023/jun/18/sophie-ecclestone-ashes-england-cricket'),
('Moeen fined 25% of match fee over use of drying agent', 'https://www.theguardian.com/sport/2023/jun/18/england-moeen-ali-australia-fined-first-test-ashes'),
('Security staff suffer in the silence of broken promises', 'https://www.theguardian.com/football/2023/jun/18/world-cup-security-staff-suffer-in-the-silence-of-qatars-broken-promises'),
('Verstappen on Canadian GP pole ', 'https://www.theguardian.com/sport/2023/jun/17/dominant-max-verstappen-claims-canadian-f1-gp-pole'),
('I told Saka just to curtsy when he sees me!', 'https://www.theguardian.com/football/2023/jun/18/beth-mead-book-roar-bukayo-saka-mbe-interview'),
('Boulter to face Burrage in historic Nottingham final', 'https://www.theguardian.com/sport/2023/jun/17/nottingham-tennis-wta-katie-boulter-jodie-burrage-report'),
('Tszyu delivers 72-second knockout of Ocampo', 'https://www.theguardian.com/sport/2023/jun/18/australias-tim-tszyu-delivers-72-second-knockout-of-carlos-ocampo-in-title-defence'),
('Prograis eyes Haney after beating Zorrilla', 'https://www.theguardian.com/sport/2023/jun/18/regis-prograis-eyes-devin-haney-after-beating-hometown-jitters-and-zorrilla'),
('Saints into Challenge Cup semis as Griffin sees red', 'https://www.theguardian.com/sport/2023/jun/17/hull-st-helens-rugby-league-challenge-cup-match-report'),
('Alex Scott on standing up for LGBTQ+ rights', 'https://www.theguardian.com/football/2023/jun/17/alex-scott-interview-womens-world-cup-hatred-because-i-wore-an-armband'),
('Son of Baltimore Ravens legend died of suspected overdose', 'https://www.theguardian.com/sport/2023/jun/18/ray-lewis-iii-death-suspected-overdose-police'),
('Evenepoel leads tributes to Mäder after stage win', 'https://www.theguardian.com/sport/2023/jun/17/tour-de-suisse-cycling-gino-mader-death-bahrain-victorious'),
('Sky commentator steps down after 33 years', 'https://www.theguardian.com/football/2023/jun/17/martin-tyler-steps-down-as-sky-sports-lead-football-commentator-after-33-years'),
('Mbappé’s extraordinary gifts are being wasted at PSG', 'https://www.theguardian.com/football/blog/2023/jun/17/kylian-mbappe-is-a-victim-of-the-psg-honeypot-and-his-talents-are-being-wasted'),
('Hats and tails still de rigueur but Ascot will feel different', 'https://www.theguardian.com/sport/blog/2023/jun/17/royal-ascot-post-elizabethan-era-horse-racing'),
('Dyche’s rebuild stalls with Everton in limbo', 'https://www.theguardian.com/football/2023/jun/17/sean-dyches-rebuild-stalls-as-broken-everton-remain-locked-in-limbo'),
('Ferrari’s Le Mans success cannot mask their ongoing F1 struggles', 'https://www.theguardian.com/sport/2023/jun/16/ferraris-le-mans-success-cannot-mask-their-f1-struggles'),
('Writer and subeditor was a Guardian mainstay for 57 years', 'https://www.theguardian.com/sport/2023/jun/16/jeremy-alexander-died-guardian-sport-mainstay-for-57-years'),
('Drury joins to cover Premier League in place of Tyler', 'https://www.theguardian.com/football/2023/jun/18/peter-drury-joins-sky-sports-to-cover-premier-league-in-place-of-martin-tyler'),
('Dykes and McLean strike late to nab win', 'https://www.theguardian.com/football/2023/jun/17/norway-scotland-euro-2024-qualifier-match-report'),
('England must not waste Alexander-Arnold\'s talent', 'https://www.theguardian.com/football/2023/jun/16/alexander-arnold-shows-again-he-is-a-talent-england-cannot-afford-to-waste'),
('Club step up Jackson and Caicedo pursuit', 'https://www.theguardian.com/football/2023/jun/17/chelsea-will-step-up-efforts-to-sign-nicolas-jackson-and-moises-caicedo'),
('Arsenal chase Havertz deal as Bayern join race', 'https://www.theguardian.com/football/2023/jun/17/arsenal-kai-havertz-bayern-munich-transfers'),
('Georgia keep pressure on Scotland with win in Cyprus', 'https://www.theguardian.com/football/2023/jun/17/georgia-keep-pressure-on-scotland-ahead-of-glasgow-showdown'),
('Wales left with much to prove after loss to Armenia', 'https://www.theguardian.com/football/2023/jun/17/wales-euro-2024-qualifying-turkey-armenia'),
('Matildas midfielder Wheeler dreaming of World Cup debut', 'https://www.theguardian.com/football/2023/jun/17/matildas-midfielder-clare-wheeler-dreaming-of-world-cup-debut'),
('Greece jolt Irish hopes, Northern Ireland beaten', 'https://www.theguardian.com/football/2023/jun/16/masouras-winner-for-greece-jolts-irish-hopes-as-var-denies-northern-ireland'),
('Tour de Suisse riders pay tribute to cyclist after death', 'https://www.theguardian.com/sport/video/2023/jun/16/tour-de-suisse-riders-pay-tribute-to-gino-mader-video'),
('Bellingham unveiled by Real Madrid', 'https://www.theguardian.com/football/video/2023/jun/15/jude-bellingham-unveiled-real-madrid-video'),
('Dettori ready for his final Royal Ascot after more than 30 years', 'https://www.theguardian.com/sport/video/2023/jun/14/i-will-cry-frankie-dettori-ready-for-his-final-royal-ascot-after-more-than-30-years-video'),
('Why this Ashes is critical for the future of the sport', 'https://www.theguardian.com/sport/video/2023/jun/13/why-this-ashes-is-critical-for-the-future-of-cricket-video-explainer'),
('Manchester City celebrate treble with open-top bus parade', 'https://www.theguardian.com/football/video/2023/jun/12/weve-got-guardiola-manchester-city-celebrate-historic-treble-with-fans-video'),
('Man City fans celebrate Champions League victory', 'https://www.theguardian.com/football/video/2023/jun/11/best-night-ever-manchester-city-fans-celebrate-champions-league-victory-video'),
('Eminency well set to mount challenge at York', 'https://www.theguardian.com/sport/2023/jun/16/talking-horses-eminency-well-set-to-mount-challenge-at-york-horse-racing-tips'),
('Chelsea to target Amadou Onana and Osimhen?', 'https://www.theguardian.com/football/2023/jun/16/transfer-news-rumours-chelsea-liverpool-bayern-munich'),
('New women’s boots – a step forward or marketing ploy?', 'https://www.theguardian.com/football/2023/jun/14/new-womens-football-boots-big-step-forward-or-marketing-ploy'),
('Everton, a club that’s become a byword for angst', 'https://www.theguardian.com/football/2023/jun/15/football-daily-everton-legal-action'),
('Bellingham joins Madrid and Croatia go deep again', 'https://www.theguardian.com/football/audio/2023/jun/15/bellingham-joins-madrid-and-croatia-go-deep-again-football-weekly-extra-podcast'),
('Big picture means Ashes not just about winning', 'https://www.theguardian.com/sport/2023/jun/14/ashes-england-australia-cricket-the-spin'),
('When Motherwell won a Copa del Rey', 'https://www.theguardian.com/football/2023/jun/14/when-motherwell-won-a-copa-del-rey-and-other-foreign-cup-triumphs'),
('Featuring Mbappé, Wales and plenty more', 'https://www.theguardian.com/football/2023/jun/13/football-daily-kylian-mbappe-psg'),
('Can women\'s sport stay true to roots in uncharted waters?', 'https://www.theguardian.com/sport/blog/2023/jun/16/womens-sport-is-entering-uncharted-waters-can-it-remain-true-to-its-roots'),
('Bellingham makes pitch-perfect start to Real Madrid adventure', 'https://www.theguardian.com/football/2023/jun/15/jude-bellingham-makes-pitch-perfect-start-to-epic-adventure-at-real-madrid'),
('A bluffer’s guide to the Ashes series', 'https://www.theguardian.com/sport/2023/jun/15/england-australia-and-an-urn-a-bluffers-guide-to-the-ashes'),
('The cyclist who raced men across America … and won', 'https://www.theguardian.com/sport/2023/jun/13/leah-goldstein-the-cyclist-who-raced-men-across-america-and-won'),
('Follow Guardian Sport now', 'https://www.instagram.com/guardian_sport/'),
('The Ashes 2023: England v Australia, first Test, day three – live', 'https://www.theguardian.com/sport/live/2023/jun/18/the-ashes-2023-england-vs-australia-live-updates-first-test-cricket-eng-v-aus-latest-score-day-three-egdbaston'),
('Moeen Ali fined 25% of match fee over use of unauthorised drying agent', 'https://www.theguardian.com/sport/2023/jun/18/england-moeen-ali-australia-fined-first-test-ashes'),
('Rory McIlroy and Rickie Fowler to vie for redemption in US Open finale', 'https://www.theguardian.com/sport/2023/jun/18/rory-mcilroy-and-rickie-fowler-redemption-stories-to-inspire-final-round-duel-at-us-open'),
('Max Verstappen easily takes Canadian F1 GP pole but Lewis Hamilton happy', 'https://www.theguardian.com/sport/2023/jun/17/dominant-max-verstappen-claims-canadian-f1-gp-pole'),
('Australia’s Tim Tszyu delivers 72-second knockout of Carlos Ocampo in title defence', 'https://www.theguardian.com/sport/2023/jun/18/australias-tim-tszyu-delivers-72-second-knockout-of-carlos-ocampo-in-title-defence'),
('‘I’m born to suffer’: refugee athlete Dominic Lobalu on race to find a home', 'https://www.theguardian.com/sport/2023/jun/18/im-born-to-suffer-refugee-athlete-dominic-lobalu'),
('A day of Total Moeen is the perfect example of England’s new approach', 'https://www.theguardian.com/sport/blog/2023/jun/17/a-day-of-total-moeen-is-the-perfect-example-of-englands-new-approach'),
('The Ashes 2023: Usman Khawaja digs in as England toil – as it happened', 'https://www.theguardian.com/sport/live/2023/jun/17/the-ashes-2023-england-vs-australia-live-updates-first-test-cricket-eng-v-aus-latest-score-day-two-egdbaston'),
('England’s No 1: Ecclestone steps up with Ashes success in her sights', 'https://www.theguardian.com/sport/2023/jun/18/sophie-ecclestone-ashes-england-cricket'),
('‘It’s nothing personal’: Katie Boulter in row at net with Harriet Dart after win', 'https://www.theguardian.com/sport/2023/jun/16/tennis-nottingham-open-katie-boulter-harriet-dart-andy-murray');

-- --------------------------------------------------------

--
-- Структура таблицы `kotaku`
--

CREATE TABLE `kotaku` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `kotaku`
--

INSERT INTO `kotaku` (`article`, `link`) VALUES
('Diablo IV Devs Say Future Update Will Fix Annoying Gems', 'https://kotaku.com/diablo-4-gem-bag-inventory-filled-update-season-2-1850549357'),
('Diablo IV Fans Won\'t Stop Trying To Find The Cow Level That Likely Isn\'t There', 'https://kotaku.com/diablo-4-gem-bag-inventory-filled-update-season-2-1850549357'),
('Someone At Nintendo Snuck Pride Month Into The Switch\'s eShop', 'https://kotaku.com/diablo-iv-secret-cow-level-hidden-mysterious-portal-1850549258'),
('Diablo IV Fans Think It’s Stingy With XP, So Blizzard Is Promising Changes', 'https://kotaku.com/diablo-iv-secret-cow-level-hidden-mysterious-portal-1850549258'),
('This Tears Of The Kingdom Randomizer Is Perfect Chaos', 'https://kotaku.com/nintendo-switch-eshop-hidden-gems-sale-pride-queer-1850549209'),
('The West\'s First Fire Emblem Comes To Nintendo Switch Online', 'https://kotaku.com/nintendo-switch-eshop-hidden-gems-sale-pride-queer-1850549209'),
('Why Is Starfield 30FPS? Space Sandwiches, Probably', 'https://kotaku.com/diablo-4-nightmare-dungeons-xp-grind-elite-monsters-1850549033'),
('The Real-Life Dog Behind Red Dead Redemption 2’s Cain Has Died', 'https://kotaku.com/diablo-4-nightmare-dungeons-xp-grind-elite-monsters-1850549033'),
('Final Fantasy XVI Devs List Their Top 3 FF Games, And The Top One Is Surprising Fans', 'https://kotaku.com/zelda-tears-of-the-kingdom-randomizer-youtube-mod-1850548536'),
('The Last Of Us Comes To Universal Studios’ Halloween Horror Nights', 'https://kotaku.com/zelda-tears-of-the-kingdom-randomizer-youtube-mod-1850548536'),
('Nintendo Switch Piracy Subreddit Banned After Giant Tears Of The Kingdom Leak', 'https://kotaku.com/fire-emblem-nintendo-switch-online-the-blazing-blade-1850548494'),
('Diablo IV Player Can’t Believe What Just Killed Perma-Killed His 172-Hour Druid', 'https://kotaku.com/fire-emblem-nintendo-switch-online-the-blazing-blade-1850548494'),
('Tears Of The Kingdom Fans Are Fighting With Beyblades Now', 'https://kotaku.com/starfield-60fps-30fps-performance-mode-xbox-series-x-pc-1850548127'),
('Reddit\'s CEO Is Just Making Everything Worse', 'https://kotaku.com/starfield-60fps-30fps-performance-mode-xbox-series-x-pc-1850548127'),
('Playboy Founder’s Son Funds His Pokémon Obsession With An OnlyFans', 'https://kotaku.com/red-dead-redemption-2-real-dog-died-einstein-cain-rdr2-1850548051'),
('Save A Bunch On Great Switch Games In Nintendo\'s Latest Summer Sale', 'https://kotaku.com/red-dead-redemption-2-real-dog-died-einstein-cain-rdr2-1850548051'),
('Halo Infinite Finally Adding Fan-Favorite Zombies Mode', 'https://kotaku.com/final-fantasy-xvi-ranking-devs-favorite-games-ps5-1850547789'),
('Tears Of The Kingdom Glitch Lets Link Double-Jump Infinitely', 'https://kotaku.com/final-fantasy-xvi-ranking-devs-favorite-games-ps5-1850547789'),
('Microsoft Is Done Making Games For Xbox One', 'https://kotaku.com/the-last-of-us-tlou-universal-studios-halloween-horror-1850547558'),
('Tears Of The Kingdom Players Are Making Music With Lasers And Zonai Stakes', 'https://kotaku.com/the-last-of-us-tlou-universal-studios-halloween-horror-1850547558');

-- --------------------------------------------------------

--
-- Структура таблицы `politico`
--

CREATE TABLE `politico` (
  `article` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `politico`
--

INSERT INTO `politico` (`article`, `link`) VALUES
('Ukraine counteroffensive inches forward; Putin dismisses prospects of peace talks', 'https://www.politico.eu/article/ukraine-counteroffensive-war-russia-invasion-piatykhatky-zaporizhzhia-vladimir-putin-peace-talks/'),
('After escaping the Taliban, hundreds of Afghans languish in Albania in a prolonged U.S. visa process', 'https://www.politico.com/news/2023/06/18/escaping-taliban-afghans-languish-albania-visa-process-00102533'),
('Israel\'s Netanyahu says he will move ahead on contentious judicial overhaul plan after talks crumble', 'https://www.politico.com/news/2023/06/18/israels-netanyahu-says-he-will-move-ahead-on-contentious-judicial-overhaul-plan-after-talks-crumble-00102532'),
('Build better ties instead of only asking for microchips, Taiwan tells Europe', 'https://www.politico.eu/article/taiwan-better-relations-microchip-technology-tsmc-europe-germany-joseph-wu/'),
('Ozempic, Wegovy-maker hires lobbying firm to push for Medicare coverage', 'https://www.politico.com/news/2023/06/16/ozempic-lobbying-medicare-coverage-00102482'),
('Texas Gov. Abbott signs ban on transgender women in college sports', 'https://www.politico.com/video/2023/06/15/texas-gov-abbott-signs-ban-on-transgender-women-in-college-sports-950391'),
('‘Blood on your hands’: Duckworth blasts Sinema for pilot training proposal', 'https://www.politico.com/news/2023/06/15/duckworth-sinema-pilot-training-rules-00102228'),
('Truck driver guilty of killing 11 at Pittsburgh synagogue in deadliest attack on Jews in U.S. history', 'https://www.politico.com/news/2023/06/16/truck-driver-guilty-of-killing-11-at-pittsburgh-synagogue-in-deadliest-attack-on-jews-in-us-history-00102434'),
('De Blasio hit with historic fine over use of NYPD for presidential run', 'https://www.politico.com/news/2023/06/15/de-blasio-historic-fine-00102213');

-- --------------------------------------------------------

--
-- Структура таблицы `rt`
--

CREATE TABLE `rt` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `rt`
--

INSERT INTO `rt` (`article`, `link`) VALUES
('Kremlin promises punishment for threats to kill Russians', 'https://www.rt.com//news/578241-peskov-podoliak-ukraine-kremlin/'),
('NATO chief doesn’t want ‘frozen conflict’ in Ukraine', 'https://www.rt.com//news/578237-nato-jens-stoltenberg-ukraine-frozen-conflict/'),
('‘No chance’ of extending Black Sea grain deal – Kremlin', 'https://www.rt.com//russia/578225-grain-deal-ukraine-peskov/'),
('US lawmakers oppose Pentagon military spending plans – Politico', 'https://www.rt.com//news/578226-politico-us-house-missile-program-spending/'),
('UK minister apologizes over ‘Partygate’ video', 'https://www.rt.com//news/578240-uk-gove-partygate-apology/'),
('Russia sees another surge in yuan trade', 'https://www.rt.com//business/578236-russia-surge-yuan-trade-dollar/'),
('Italy’s state debt soars to all-time high', 'https://www.rt.com//business/578239-italy-state-debt-record-high/'),
('Ukraine peace initiative shows Africa has seat at the table – Zambian politician', 'https://www.rt.com//africa/578224-africa-ukraine-russia-zambia/'),
('Putin reveals details of draft treaty on Ukraine’s neutrality', 'https://www.rt.com//russia/578220-putin-ukraine-neutrality-plan/'),
('More than half of Americans want Trump to be pardoned – poll', 'https://www.rt.com//news/578235-trump-biden-us-pardon/'),
('‘Using nuclear war to save the world is like using a guillotine for a headache’: Russian experts respond to call for atomic strike', 'https://www.rt.com//russia/578218-experts-respond-to-call-for-atomic-strike/'),
('Kremlin clarifies Ukraine ‘demilitarization’ goal', 'https://www.rt.com//russia/578223-peskov-demilitarization-ukraine-achied/'),
('Joe Biden has no serious plan for the student loan crisis', 'https://www.rt.com//news/577711-biden-student-loan-crisis/');

-- --------------------------------------------------------

--
-- Структура таблицы `skysports`
--

CREATE TABLE `skysports` (
  `article` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `skysports`
--

INSERT INTO `skysports` (`article`, `link`) VALUES
('England begin second innings leading Australia by seven LIVE!', 'https://www.skysports.com//cricket/live-blog/12123/12902816/the-ashes-2023-england-vs-australia-build-up-live'),
('Who will win the US Open? Sunday storylines to follow', 'https://www.skysports.com//golf/news/12176/12904621/sunday-storylines-to-follow-at-us-open-rickie-fowler-rory-mcilroy-scottie-scheffler-and-more'),
('Alonso targets Canada win | \'Red Bull can\'t do everything perfect\'', 'https://www.skysports.com//f1/news/12433/12904612/fernando-alonso-targeting-max-verstappen-at-canadian-gp-and-says-red-bull-cant-do-everything-perfect'),
('Commentator Peter Drury to join Sky Sports from 2023/24 season', 'https://www.skysports.com//football/news/11095/12904739/peter-drury-sky-sports-announce-signing-of-experienced-commentator-from-2023-24-season'),
('World Cup of Darts LIVE! Scotland & England in action after Belgium win epic', 'https://www.skysports.com//darts/live-blog/12288/12904752/world-cup-of-darts-live-wales-scotland-australia-and-england-vs-germany-on-quarter-finals-afternoon'),
('Murray clinches Nottingham Open title after 10th win in a row', 'https://www.skysports.com//tennis/news/12110/12904755/andy-murray-clinches-nottingham-open-title-with-6-4-6-4-victory-vs-arthur-cazaux-in-10th-win-in-a-row'),
('Moeen fined for applying spray to bowling hand in Ashes opener', 'https://www.skysports.com//cricket/news/12123/12904725/the-ashes-england-spinner-moeen-ali-fined-25-per-cent-of-match-fee-for-spraying-substance-on-fingers'),
('Transfer Centre LIVE! \'Man Utd preparing £45m bid for Pickford\'', 'https://www.skysports.com//football/live-blog/31771/12476234/transfer-centre-live-declan-rice-mason-mount-ilkay-gundogan-latest'),
('Fowler: I\'m not scared of US Open failure | McIlroy \'stress-free\'', 'https://www.skysports.com//golf/news/12176/12904638/rickie-fowler-the-most-comfortable-he-has-ever-felt-as-he-leads-us-open-heading-into-final-day'),
('Clarke hails Scotland character | Robertson: We have to qualify now', 'https://www.skysports.com//football/news/11095/12904481/steve-clarke-hails-scotland-character-after-norway-comeback-win-andrew-robertson-we-have-to-qualify-for-euro-2024-now'),
('Leclerc \'frustrated\' again by Ferrari | \'Not making our life any easier\'', 'https://www.skysports.com//f1/news/20876/12904599/charles-leclerc-frustrated-with-ferrari-strategy-in-qualifying-for-canadian-grand-prix-after-q2-exit'),
('Papers: Arteta holds PSG talks | Man City want Kimmich', 'https://www.skysports.com//football/transfer-paper-talk/12709/12904602/arsenal-boss-mikel-arteta-holds-talks-over-psgs-vacant-managerial-role-paper-talk'),
('McIlroy one off US Open lead after Fowler\'s three-putt finish', 'https://www.skysports.com//golf/news/12176/12904522/us-open-wyndham-clark-rickie-fowler-take-one-shot-lead-over-rory-mcilroy-into-final-day'),
('Burrow pushed around Leeds fun run by daughters on Father\'s Day', 'https://www.skysports.com//rugby-league/live-blog/11070/12553980/rugby-league-news-bradford-bulls-part-ways-with-head-coach-mark-dunning-after-humiliating-defeat'),
('News: Brazil wear black shirts for first time in stand against racism', 'https://www.skysports.com//football/live-blog/11095/12507208/who-should-start-for-england-against-malta-and-at-euro-2024-next-summer-send-us-your-line-ups-and-views'),
('England vs Australia | Day three, morning session highlights', 'https://www.skysports.com//watch/video/sports/12904819/england-vs-australia-day-three-morning-session-highlights'),
('US Open | Round Three highlights', 'https://www.skysports.com//watch/video/sports/12904636/us-open-round-three-highlights'),
('Tyler\'s most iconic moments from \'Agueroooo\' to Rooney\'s overhead kick', 'https://www.skysports.com//watch/video/sports/12904175/martin-tylers-greatest-moments'),
('\'You can\'t make that up\' | Young incredibly hits ball into golf buggy!', 'https://www.skysports.com//watch/video/sports/12904656/cameron-youg-hits-ball-into-golf-buggy'),
('\'They should be banned!\' | Gasly fumes after Q1 exit', 'https://www.skysports.com//watch/video/sports/12904528/they-should-be-banned-pierre-gasly-fumes-after-q1-exit'),
('Nominate Your Real No.1', 'https://www.skysports.com/https://m.skybet.com/lp/football-real-no-1s'),
('Nominate Your Real No.1', 'https://www.skysports.com/https://m.skybet.com/lp/football-real-no-1s'),
('Nominate Your Real No.1', 'https://www.skysports.com/https://m.skybet.com/lp/football-real-no-1s'),
('Get Sky Sports Cricket', 'https://www.skysports.com/https://www.sky.com/tv/sports?dcmp=ssf.com-homepage-getskysports'),
('Sky Sports F1', 'https://www.skysports.com/https://www.sky.com/tv/sports?dcmp=ssf.com-homepage-getskysports'),
('Jamie Lynch\'s Prix de Diane runner guide and big-race verdict!', 'https://www.skysports.com//racing/news/12426/12904224/prix-de-diane-jamie-lynchs-big-race-verdict-ahead-of-french-oaks-at-chantilly-on-sky-sports-racing'),
('Idiakez: Why Derby was best year of my career', 'https://www.skysports.com//football/news/11095/12901636/inigo-idiakez-exclusive-interview-why-derby-was-best-year-of-his-career-tough-love-at-leicester-and-life-in-mexico'),
('Maresca to Leicester: Can success at Man City be replicated?', 'https://www.skysports.com//football/news/11095/12901083/enzo-maresca-pep-guardiolas-assistant-and-roberto-de-zerbis-pal-but-replicating-man-city-success-takes-time-and-support'),
('When is the US Open live on Sky? Key TV times', 'https://www.skysports.com//golf/news/12176/12894146/us-open-2023-when-is-coverage-live-on-sky-sports-key-tv-times-and-ways-to-watch-from-los-angeles'),
('When to watch the Canadian GP on Sky Sports', 'https://www.skysports.com//f1/news/12433/12898916/canadian-gp-2023-when-to-watch-practice-qualifying-and-grand-prix-from-montreal-live-on-sky-sports-f1'),
('Video showing Tory staff at Christmas party during lockdown is \'terrible\', Michael Gove admits ', 'https://www.skysports.com/https://news.sky.com/story/video-showing-tory-staff-at-christmas-party-during-lockdown-is-terrible-michael-gove-admits-12904674'),
('Nicola Sturgeon speaks for the first time since arrest; Gove reveals how he\'ll vote on Boris Johnson report | Politics latest', 'https://www.skysports.com/https://news.sky.com/story/politics-latest-boris-johnson-privileges-committee-report-on-lied-to-parliament-12593360'),
('Ex-Tesco boss says he has been \'propelled under the nearest bus\' after being accused of misconduct', 'https://www.skysports.com/https://news.sky.com/story/former-tesco-chairman-john-allan-tells-sky-news-he-is-completely-innocent-of-misconduct-claims-12904697');

-- --------------------------------------------------------

--
-- Структура таблицы `sportingnews`
--

CREATE TABLE `sportingnews` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sportingnews`
--

INSERT INTO `sportingnews` (`article`, `link`) VALUES
('Where is the College World Series played? History of Omaha hosting college baseball\'s biggest tournament', 'https://www.sportingnews.com/us/us/mlb/news/omaha-college-world-series-history/e4fm1v6smq3cms6aww9ruho1'),
('USA vs Canada live stream: Watch Nations League final online without cable', 'https://www.sportingnews.com/us/us/soccer/news/usa-vs-canada-live-stream-watch-nations-league-final-online/vlffrnmjcbbwjmjs3s3vnpw2'),
('The Ashes First Test: Australia all out for 386', 'https://www.sportingnews.com/us/us/cricket/news/ashes-england-vs-australia-first-test-live-score-result-highlights/xgrb7qio4hyg88r78rnhgwqf'),
('What channel is Mexico vs. Panama? How to watch third-place match', 'https://www.sportingnews.com/us/us/soccer/news/what-channel-mexico-vs-panama-tv-watch-nations-league-3rd/nx3lhvp4uxwokqabaudwrunb'),
('How many rounds are in the NBA Draft?', 'https://www.sportingnews.com/us/us/nba/news/how-many-rounds-nba-draft/jxjnbiyounit6okj3xkeu3bf'),
('What time is USA vs. Canada? Kickoff for 2023 Nations League final', 'https://www.sportingnews.com/us/us/soccer/news/what-time-usa-vs-canada-nations-league-final-tv-live-stream/s0isvm1axjqbpn6qspfdszcp'),
('Mexico vs Panama live stream: Watch Nations League match online', 'https://www.sportingnews.com/us/us/soccer/news/mexico-vs-panama-live-stream-watch-online-nations-league/hyjdls1mj5ntclo2c3c1d2ix'),
('More News', 'https://www.sportingnews.com/us/us/news');

-- --------------------------------------------------------

--
-- Структура таблицы `stopgame`
--

CREATE TABLE `stopgame` (
  `article` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `stopgame`
--

INSERT INTO `stopgame` (`article`, `link`) VALUES
('На полное прохождение Immortals of Aveum потребуется 30–40 часов', 'https://stopgame.ru//newsdata/58769/na_polnoe_prohozhdenie_immortals_of_aveum_potrebuetsya_30_40_chasov'),
('Ох уж эти детки — набор Wards & Wardens для Crusader Kings III стартует 22 августа', 'https://stopgame.ru//newsdata/58768/oh_uzh_eti_detki_nabor_wards_wardens_dlya_crusader_kings_iii_startuet_22_avgusta'),
('Сюжетное DLC для The Callisto Protocol выпустят в конце июня', 'https://stopgame.ru//newsdata/58767/syuzhetnoe_dlc_dlya_the_callisto_protocol_vypustyat_v_konce_iyunya'),
('Издатель Focus Entertainment открыл новую игровую студию', 'https://stopgame.ru//newsdata/58766/izdatel_focus_entertainment_otkryl_novuyu_igrovuyu_studiyu'),
('Шпионский симулятор Sigma Theory: Global Cold War бесплатно отдают в GOG', 'https://stopgame.ru//newsdata/58765/shpionskiy_simulyator_sigma_theory_global_cold_war_besplatno_otdayut_v_gog'),
('Разработчики ARC Raiders начнут закрытую «альфу» 29 июня', 'https://stopgame.ru//newsdata/58764/razrabotchiki_arc_raiders_nachnut_zakrytuyu_alfu_29_iyunya'),
('«Мы не говорили, что любим играть в 30 fps» — DF о критике разбора Starfield', 'https://stopgame.ru//newsdata/58763/my_ne_govorili_chto_lyubim_igrat_v_30_fps_df_o_kritike_razbora_starfield'),
('Экшен-RPG Flintlock: The Siege of Dawn от авторов Ashen переехала на 2024-й', 'https://stopgame.ru//newsdata/58762/ekshen_rpg_flintlock_the_siege_of_dawn_ot_avtorov_ashen_pereehala_na_2024_y'),
('Видеоэкскурсия по Нижнему Новгороду в «Смуте»', 'https://stopgame.ru//newsdata/58761/videoekskursiya_po_nizhnemu_novgorodu_v_smute'),
('Blasphemous II выйдет на PS4 и Xbox One осенью', 'https://stopgame.ru//newsdata/58760/blasphemous_ii_vyydet_na_ps4_i_xbox_one_osenyu'),
('Valheim получила настройки сложности и свежий контент', 'https://stopgame.ru//newsdata/58759/valheim_poluchila_nastroyki_slozhnosti_i_svezhiy_kontent'),
('Выручка мобильной Diablo Immortal превысила $500 млн', 'https://stopgame.ru//newsdata/58758/vyruchka_mobilnoy_diablo_immortal_prevysila_500_mln'),
('В симулятор ограблений Teardown добавили творческий режим', 'https://stopgame.ru//newsdata/58757/v_simulyator_ogrableniy_teardown_dobavili_tvorcheskiy_rezhim'),
('В War Thunder появился французский флот', 'https://stopgame.ru//newsdata/58756/v_war_thunder_poyavilsya_francuzskiy_flot'),
('Lara Croft and the Guardian of Light и The Temple of Osiris поселятся на Switch 29 июня', 'https://stopgame.ru//newsdata/58755/lara_croft_and_the_guardian_of_light_i_the_temple_of_osiris_poselyatsya_na_switch_29_iyunya'),
('Отказ от Xbox One, судьба Halo и Redfall — интервью с боссом Xbox Game Studios', 'https://stopgame.ru//newsdata/58754/otkaz_ot_xbox_one_sudba_halo_i_redfall_interview_s_bossom_xbox_game_studios'),
('Причудливый симулятор переезда Moving Out 2 стартует 15 августа', 'https://stopgame.ru//newsdata/58753/prichudlivyy_simulyator_pereezda_moving_out_2_startuet_15_avgusta'),
('Открылись предзаказы Marvel\'s Spider-Man 2', 'https://stopgame.ru//newsdata/58752/otkrylis_predzakazy_marvel_s_spider_man_2'),
('RGG Summit — детали о Like a Dragon: Infinite Wealth и спин-оффе про Кадзуму Кирю', 'https://stopgame.ru//newsdata/58751/rgg_summit_detali_o_like_a_dragon_infinite_wealth_i_spin_offe_pro_kadzumu_kiryu'),
('Красочный платформер Koa and the Five Pirates of Mara выйдет 27 июля', 'https://stopgame.ru//newsdata/58750/krasochnyy_platformer_koa_and_the_five_pirates_of_mara_vyydet_27_iyulya');

-- --------------------------------------------------------

--
-- Структура таблицы `thegamer`
--

CREATE TABLE `thegamer` (
  `article` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `thegamer`
--

INSERT INTO `thegamer` (`article`, `link`) VALUES
('Final Fantasy 16 Takes Up 90GB Of Space, Preload Starts June 20', 'https://www.thegamer.com//final-fantasy-16-takes-up-90gb-of-space-preload-starts-june-20/'),
('Final Fantasy 16\'s Hardest Difficulty Includes A Craftable Ultima Weapon', 'https://www.thegamer.com//final-fantasy-16-hardest-difficulty-craftable-ultima-weapon/'),
('Mass Effect Fan Turns First Game Into An FPS', 'https://www.thegamer.com//mass-effect-first-person-fps-camera-mod-legenary-edition/'),
('Final Fantasy 16 Was Almost The PS5\'s First Two-Disc Release', 'https://www.thegamer.com//final-fantasy-16-almost-ps5-first-two-disk-disc-release/'),
('Sonic Origins Plus Finally Makes Super Amy Canon After 30 Years', 'https://www.thegamer.com//sonic-origins-plus-super-amy-playable/'),
('Overwatch 2\'s \"On Fire\" System Is Absolutely Broken', 'https://www.thegamer.com//overwatch-2-on-fire-buggy-broken-starts-before-match/'),
('Persona 3 Reload Has The Highest Number Of Voiced Scenes In The Series', 'https://www.thegamer.com//persona-3-reload-highest-number-voiced-lines-in-series/'),
('Street Fighter 6 Players Are Making Their Gear Huge To Cheese Fights', 'https://www.thegamer.com//street-fighter-6-world-tour-avatar-exploit-giant-accessories/'),
('Mortal Kombat 1\'s Kameo Fighters Might Include Guest Characters', 'https://www.thegamer.com//mortal-kombat-1-kameo-fighters-could-include-guest-characters/'),
('Starfield Has \"More Handcrafted Content Than Skyrim And Fallout 4 Combined\"', 'https://www.thegamer.com//starfield-handcrafted-content-more-than-skyrim-fallout-4-procedurally-generated/'),
('Alleged GTA 6 Actor Is Trolling Fans With A Tommy Vercetti Cosplay', 'https://www.thegamer.com//gta-6-alleged-lead-actor-teasing-trolling-fans-with-tommy-vercetti-cosplay/'),
('Final Fantasy Fans Discuss What Games Need To Be Considered Final Fantasy', 'https://www.thegamer.com//final-fantasy-fans-discuss-what-final-fantasy-games-should-have/'),
('Tears Of The Kingdom Fans Share What They Miss Most About Breath Of The Wild', 'https://www.thegamer.com//ther-legend-of-zelda-tears-of-the-kingdom-fans-share-miss-most-breath-of-the-wild/'),
('xQc Is Ditching Twitch For Kick After Signing $100 Million Deal', 'https://www.thegamer.com//xqc-is-ditching-twitch-kick-100-million-deal/'),
('Sonic Superstars Won\'t Include Shadow, But He Might Feature In A New Game', 'https://www.thegamer.com//sonic-superstars-shadow-new-game/'),
('Todd Howard Compares Starfield To Red Dead Redemption 2', 'https://www.thegamer.com//todd-howard-compares-starfield-red-dead-redemption-2/'),
('Spider-Man 2 Collector\'s Edition Pre-Orders Are An Absolute Mess', 'https://www.thegamer.com//spider-man-2-collectors-edition-pre-order-mess-sold-out-queue/'),
('Xbox Admits Redfall Was A \"Miss\", Blames Itself', 'https://www.thegamer.com//redfall-failure-xboxs-fault-arkane-blame/'),
('Skarlet Voice Actor Seemingly Confirms She Won\'t Be In Mortal Kombat 1', 'https://www.thegamer.com//mortal-kombat-1-skarlet-deconfirmed-by-voice-actor/'),
('Xbox Is \"Unlikely\" To Put Another Studio On Halo', 'https://www.thegamer.com//xbox-unlikely-put-another-studio-on-halo/');

-- --------------------------------------------------------

--
-- Структура таблицы `vg247`
--

CREATE TABLE `vg247` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `vg247`
--

INSERT INTO `vg247` (`article`, `link`) VALUES
('Warning: Final Fantasy 16 spoilers unleashed, stay alert to preserve the mystery', 'https://www.vg247.com/beware-final-fantasy-16-spoilers-have-hit-the-internet'),
('Star Trek: Infinite honors Picard Day with new gameplay trailer and insights', 'https://www.vg247.com/star-trek-infinite-honors-picard-day-with-new-gameplay-trailer-and-insights'),
('Lies of P demo surpasses one million downloads, demonstrating massive player interest', 'https://www.vg247.com/lies-of-p-demo-surpasses-one-million-downloads'),
('The Callisto Protocol receiving a “heart-pounding final chapter\" to the story through DLC', 'https://www.vg247.com/the-callisto-protocol-receiving-a-heart-pounding-final-chapter-to-the-story-through-dlc'),
('Looks like Final Fantasy 16 will have a minor day-one patch after all', 'https://www.vg247.com/looks-like-final-fantasy-16-will-have-a-minor-day-one-patch-after-all'),
('Microsoft and People Can Fly collaborating on Project Maverick,  a game based on an existing IP', 'https://www.vg247.com/microsoft-and-people-can-fly-collaborating-on-project-maverick-a-game-based-on-an-existing-ip'),
('Classic GBA title Fire Emblem ignites Nintendo Switch Online + Expansion Pack on June 22', 'https://www.vg247.com/classic-gba-title-fire-emblem-ignites-nintendo-switch-online-expansion-pack-on-june-22'),
('Valheim\'s Hildir\'s Request update introduces hard mode, additional customizations, and a new vendor', 'https://www.vg247.com/valheims-hildirs-request-update-introduces-hard-mode-additional-customizations-and-a-new-vendor'),
('Microsoft shifts development focus of first-party games to Xbox Series X/S, leaving Xbox One behind', 'https://www.vg247.com/microsoft-shifts-development-focus-of-first-party-games-to-xbox-series-xs-leaving-xbox-one-behind'),
('Steam Next Fest brings an array of new demos to try next week', 'https://www.vg247.com/steam-next-fest-brings-an-array-of-new-demos-to-try-next-week');

-- --------------------------------------------------------

--
-- Структура таблицы `voanews`
--

CREATE TABLE `voanews` (
  `article` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `voanews`
--

INSERT INTO `voanews` (`article`, `link`) VALUES
('Bakhmut Lives in Memories of Former Residents', 'https://www.voanews.com//a/bakhmut-lives-in-memories-of-former-residents-/7141301.html'),
('FLASHPOINT UKRAINE: Air Raid Sirens As A Delegation Of African Leaders Visit Kyiv For Peace Efforts Seek Shelter', 'https://www.voanews.com//a/flashpoint-ukraine-air-raid-sirens-as-a-delegation-of-african-leaders-in-kyiv-for-peace-efforts-seek-shelter-/7140563.html'),
('Blinken Supports Efforts Toward \'Mature\' China-South Korea Ties', 'https://www.voanews.com//a/blinken-supports-efforts-toward-mature-china-south-korea-ties-/7141514.html'),
('Tensions High as Chinese Vessels Shadow Vietnam\'s Oil, Gas Operations', 'https://www.voanews.com//a/tensions-high-as-chinese-vessels-shadow-vietnam-s-oil-and-gas-operations-/7141273.html');

-- --------------------------------------------------------

--
-- Структура таблицы `xfire`
--

CREATE TABLE `xfire` (
  `article` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `xfire`
--

INSERT INTO `xfire` (`article`, `link`) VALUES
('xQc signs groundbreaking $100M deal to stream with Kick', 'https://www.xfire.com/xqc-100m-deal-stream-kick/'),
('Leaker confirms 19 characters for Mortal Kombat 1', 'https://www.xfire.com/leaker-confirms-characters-mortal-kombat-1/'),
('Atlus confirms that Metaphor: ReFantazio will be a multi-platform release', 'https://www.xfire.com/metaphor-refantazio-will-be-multi-platform-release/'),
('More proof that a Nintendo Direct is happening on or before June 23', 'https://www.xfire.com/more-proof-nintendo-direct-june-23/'),
('PlayStation gets first dibs on The Callisto Protocol: Final Transmission DLC', 'https://www.xfire.com/playstation-first-the-callisto-protocol-final-transmission-dlc/'),
('Phil Spencer addresses Halo absence at the Xbox Games Showcase', 'https://www.xfire.com/phil-spencer-halo-absence-xbox-games-showcase/'),
('Blizzard confirms big plans for Diablo 4 Season 1 and beyond', 'https://www.xfire.com/blizzard-plans-diablo-4-season-1-and-beyond/'),
('Final Fantasy 16 is going to have a Day One patch, after all', 'https://www.xfire.com/final-fantasy-16-to-have-day-one-patch/'),
('Final Fantasy V is a favorite among Final Fantasy 16 developers', 'https://www.xfire.com/final-fantasy-v-favorite-among-final-fantasy-16-developers/'),
('Stardew Valley community lashes out against Reddit blackout', 'https://www.xfire.com/stardew-valley-community-against-reddit-blackout/'),
('Final Fantasy 16 leak alert - spoilers abound online, warns Square Enix', 'https://www.xfire.com/final-fantasy-16-spoilers-online-warns-square-enix/'),
('Final Fantasy 16 review embargo lifts next week', 'https://www.xfire.com/final-fantasy-16-review-embargo-lifts-next-week/'),
('An angry Skyrim Grandma confirms she is not in Starfield', 'https://www.xfire.com/skyrim-grandma-not-in-starfield/'),
('Mortal Kombat 2 taps Martyn Ford as Shao Kahn actor', 'https://www.xfire.com/mortal-kombat-2-taps-martyn-ford-as-shao-kahn-actor/'),
('Blizzard is charging $15 for Overwatch 2 story missions', 'https://www.xfire.com/blizzard-is-charging-15-for-overwatch-2-story-missions/'),
('Fans complain about \"nightmarish\" Marvel\'s Spider-Man 2 pre-orders', 'https://www.xfire.com/fans-complain-nightmarish-marvels-spider-man-2-pre-orders/'),
('No, a Days Gone sequel is definitely not in development', 'https://www.xfire.com/days-gone-sequel-not-in-development/'),
('Nintendo confirms Summer of Play amidst Direct rumors', 'https://www.xfire.com/nintendo-confirms-summer-of-play-amidst-direct-rumors/'),
('Blizzard bites back against Bungie for calling Diablo 4 \"lazy\"', 'https://www.xfire.com/blizzard-bites-back-bungie-calling-diablo-4-lazy/'),
('Marvel\'s Spider-Man 2 is now available for preorder today', 'https://www.xfire.com/marvels-spider-man-2-is-now-available-for-preorder-today/'),
('Who is the director of Cyberpunk 2077 sequel?', 'https://www.xfire.com/who-is-the-director-of-cyberpunk-2077-sequel/'),
('A loading screen just killed a 173-hour Diablo 4 Hardcore character', 'https://www.xfire.com/loading-screen-killed-diablo-4-hardcore-character/'),
('User drops negative review on Starfield months before its launch', 'https://www.xfire.com/user-drops-negative-review-starfield-before-launch/'),
('Players are upset that Blizzard nerfed Diablo 4 loot caves again', 'https://www.xfire.com/players-are-upset-that-blizzard-nerfs-diablo-4-loot-caves-again/');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
