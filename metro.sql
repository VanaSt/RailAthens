DROP DATABASE IF EXISTS metro;
CREATE DATABASE metro DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE metro;



CREATE TABLE IF NOT EXISTS `grammi` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `grammi` (`id`, `name`) VALUES
(1, 'Γραμμή 1: Πειραιάς - Κηφισιά (Πράσινη Γραμμή)'),
(2, 'Γραμμή 2: Ελληνικό - Ανθούπολη (Κόκκινη Γραμμή)'),
(3, 'Γραμμή 3: Αγία Μαρίνα - Αεροδρόμιο Ελ. Βενιζέλος (Μπλε Γραμμή)');



CREATE TABLE IF NOT EXISTS `stathmos` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `onoma` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stathmos` (`id`, `onoma`) VALUES
(1, 'Πειραιας'),
(2, 'Φαληρο'),
(3, 'Μοσχατο'),
(4, 'Καλλιθεα'),
(5, 'Ταυρος'),
(6, 'Πετραλωνα'),
(7, 'Θησειο'),
(8, 'Μοναστηρακι'),
(9, 'Ομονοια'),
(10, 'Βικτωρια'),
(11, 'Αττικη'),
(12, 'Αγιος Νικολαος'),
(13, 'Κατω Πατησια'),
(14, 'Αγιος Ελευθεριος'),
(15, 'Ανω Πατησια'),
(16, 'Περισσος'),
(17, 'Πευκακια'),
(18, 'Νεα Ιωνια'),
(19, 'Ηρακλειο'),
(20, 'Ειρηνη'),
(21, 'Νερατζιωτισσα'),
(22, 'Μαρουσι'),
(23, 'ΚΑΤ'),
(24, 'Κηφισια'),
(25, 'Ανθουπολη'),
(26, 'Περιστερι'),
(27, 'Αγιος Αντωνιος'),
(28, 'Σεπολια'), 
(29, 'Σταθμος Λαρισης'),
(30, 'Μεταξουργειο'), 
(31, 'Πανεπιστημιο'),
(32, 'Συνταγμα'),
(33, 'Ακροπολη'),
(34, 'Συγγρου/Φιξ'),
(35, 'Νεος Κοσμος'),
(36, 'Αγιος Ιωαννης'),
(37, 'Δαφνη'),
(38, 'Αγιος Δημητριος'),
(39, 'Ηλιουπολη'),
(40, 'Αλιμος'),
(41, 'Αργυρουπολη'),
(42, 'Ελληνικο'),
(43, 'Αγια Μαρινα'),
(44, 'Αιγαλεω'),
(45, 'Ελαιωνας'),
(46, 'Κεραμεικος'), 
(47, 'Ευαγγελισμος'),
(48, 'Μεγαρο Μουσικης'),
(49, 'Αμπελοκηποι'),
(50, 'Πανορμου'),
(51, 'Κατεχακη'),
(52, 'Εθνικη Αμυνα'),
(53, 'Χολαργος'),
(54, 'Νομισματοκοπειο'),
(55, 'Αγια Παρασκευη'),
(56, 'Χαλανδρι'),
(57, 'Δουκισσης Πλακεντιας'),
(58, 'Παλληνη'),
(59, 'Παιανια/Καντζα'),
(60, 'Κορωπι'),
(61, 'Αεροδρομιο');



CREATE TABLE IF NOT EXISTS `grammi_stathmos` (
  `id_stathmos` int(3) unsigned DEFAULT NULL,
  `id_grammi` int(3) unsigned DEFAULT NULL,
  primary key (id_stathmos, id_grammi),
  foreign key (id_stathmos) references stathmos(id) on update cascade on delete cascade,
  foreign key (id_grammi) references grammi(id) on update cascade on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `grammi_stathmos` (`id_stathmos`, `id_grammi`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(8, 3),
(9, 1),
(9, 2),
(10, 1),
(11, 1),
(11, 2),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(32, 3),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3);




CREATE TABLE IF NOT EXISTS `protasi` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_stathmos` int(3) unsigned NOT NULL,
  `firma` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  address  varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  phone varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bio` text NOT NULL,
  xartis text COLLATE utf8_unicode_ci NOT NULL,
  url varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  primary key (id),
  foreign key (id_stathmos) references stathmos(id) on update cascade on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `protasi` (`id`, `id_stathmos`, `firma`, `photo`, `address`, `phone`, `bio`, `xartis`, `url`) VALUES
(NULL, '1', 'Ρακάδικο ΣΤΟΑ Κούβελου', 'assets/images/protasi/1.jpg', 'Καραολή και Δημητρίου 5, Πειραιάς 185 31', '21 0417 8470', '<p>Σε αυτό το περιβάλλον που ταξιδεύει σε άλλες εποχές, μπορείτε να γευθείτε ιδιαίτερες δημιουργικές και παραδοσιακές γεύσεις απο ολη την Ελλάδα. Η  Κουζίνα μας βασίζεται σε επιλεγμένα εποχιακά προϊόντα νέων παραγωγών και υψηλής ποιότητας πρώτες ύλες από την διεθνή και εγχώρια αγορά. Οι νέες τεχνολογίες (SOUS VIDE, ψηφιακό καπνιστήριο BRADLEY και σύντομα 3D-ΕΚΤΥΠΩΤΗΣ) μας βοηθούν στην παρασκευή ιδιαίτερα γευστικών πίατων.</br> ΤΟ ΡΑΚΑΔΙΚΟ
πήρε το όνομα του από ένα παλιό αποστακτήριο με ρακοκάζανο, υπολείμματα του οποίου βρέθηκαν στη  μεγάλη αίθουσα και βρίσκονται στο στάδιο αποκατάστασης. Στο περιβάλλον που ταξιδεύει σε άλλες εποχές δημιουργήσαμε ένα ΡΑΚΑΔΙΚΟ λίγο “πειραγμένο” γευστικά που πατάει γερά σε παραδοσιακές γεύσεις απ΄όλη την Ελλάδα και σας προσκαλεί να συνοδεύσετε τη Ρακί σας και ότι άλλο αγαπάτε με τα ΤΣΙΜΠΟΛΟΓΗΜΑΤΑ που σας προσφέρουμε καθημερινά σε χαμηλες τιμες. </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d935.4061048971789!2d23.644860543548546!3d37.94635016531526!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4285b6a652b976cf!2sRakadiko+STOA+Kouvelou!5e0!3m2!1sel!2sgr!4v1497437427215" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://rakadiko.gr/new/index.php/el/to-rakadiko' ),

(NULL, '2', 'Στάδιο Ειρήνης και Φιλίας', 'assets/images/protasi/2.jpg', 'Εθνάρχου Μακαρίου 1, Πειραιάς - Νέο Φάληρο 185 47', '+30 210 4893435', '<p>Πλήθος δραστηριοτητων και εκδηλώσεων, φιλοξενεί αγώνες μπάσκετ, κλειστού στίβου αλλά και συναυλίες και εκθέσεις! Επίσης γίνονται προπονήσεις από διάφορες ακαδημίες στους εσωτερικούς του χώρους.</br>Ωραίο μέρος για να χαλαρώσεις δίπλα στη θάλασσα, να περπατήσεις, να γυμναστείς, να πιεις ένα καφέ. Ανακαλύψτε το!</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1573.2557419018428!2d23.666058368074133!3d37.94184153050999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1516cdc07638bfbf!2zzqPPhM6szrTOuc6_IM6VzrnPgc6uzr3Ot8-CIM66zrHOuSDOps65zrvOr86xz4I!5e0!3m2!1sel!2sgr!4v1497463677085" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.sef-stadium.gr/el/' ),

(NULL, '3', 'LDRAFT BEER STREET', 'assets/images/protasi/3.jpg', 'Κοραή 30, Μοσχάτο 183 45', '21 0948 3135', '<p>Σας καλωσορίζουμε στον ιστότοπο της μπυραρίας L.Draft Beer street. Περιηγηθείτε στην νέα μας ιστοσελίδα και γνωρίστε την μεγάλη ποικιλία μας από μπύρες καθώς και τα νόστιμα φαγητά με τα οποία μπορείτε να τις συνοδέψετε. Πιστεύουμε πως το καλό φαγητό και η δροσερή μπύρα πρέπει να συνοδεύονται και από καλή μουσική. Γιa αυτόν το λόγο στην μπυραρία μας έχουμε κάθε Πέμπτη, Παρασκευή και Σάββατο, Live bands και φυσικά αρκετές εκπλήξεις με γνωστούς καλλιτέχνες!</br> Σας περιμένουμε να γνωριστούμε από κοντά!  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d786.5085857381341!2d23.68131594847804!3d37.95298408606257!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x99919c42bdb4ff1d!2zTERSQUZUIEJFRVIgU1RSRUVUIM6czqDOpc6hzpHOoc6ZzpE!5e0!3m2!1sel!2sgr!4v1497465949640" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.beerstreet.gr' ),

(NULL, '4', 'Αμοργιανό Πέρασμα', 'assets/images/protasi/4.jpg', '
Πατριάρχου Γρηγορίου, Καλλιθέα 176 75', '21 0959 2080', '<p>Το ''Αμοργιανό Πέρασμα'' ήρθε με τον αέρα του Αιγαίου για να μας ταξιδέψει σε γεύσεις και μυρωδιές της Αμοργού. Σπιτικοί νησιώτικοι μεζέδες και παραδοσιακή ψημένη ρακί δένουν αρμονικά και φτιάχνουν τη διάθεση σε ένα μοτίβο γεμάτο μεράκι.</br></p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d786.4314730677489!2d23.696611239671427!3d37.960185782329354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbd42cae04f130b4a!2zzpHOvM6_z4HOs865zrHOvc-MIM6gzq3Pgc6xz4POvM6x!5e0!3m2!1sel!2sgr!4v1497467425182" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'amorgianoperasma.gr' ),

(NULL, '5', 'Massa Massa', 'assets/images/protasi/5.jpg', 'Αναξαγόρα 4, Ταύρος 177 78', '21 0342 0554', '<p>Καλή σχέση ποιότητας-χρημάτων, φρέσκα υλικά, σωστή εξυπηρέτηση και όμορφο κλίμα. </br>Δοκιμάστε το!!</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d321.2282334078357!2d23.703616080659664!3d37.96302120135671!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x80f369b9319fe0f6!2sMassa+Massa!5e0!3m2!1sel!2sgr!4v1497510515706" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/massamassa.cafe/' ),

(NULL, '6', 'BRAZILIANA', 'assets/images/protasi/6.jpg', 'Αρκάδων 4, Πλ. Μερκούρη, Αθήνα 118 52', '21 1710 8428', '<p>Κέφι με κονσόλα που αγαπά την afro-jazz-latin μουσική και διακόσμηση που ιντριγκάρει.Η «Braziliana» χωρίζεται σε δύο ίδια σε μέγεθος δωμάτια. Το ένα, εκεί όπου βρίσκεται και η μπάρα, ανήκει σε όσους καπνίζουν. Το άλλο σ’ εκείνους που απέχουν από το ευγενές ελληνικό σπορ. Σωστά μαντέψατε: οι πρώτοι είναι συντριπτικά περισσότεροι από τους δεύτερους.</br>  Και στους δύο χώρους μπορείς να δοκιμάσεις μεζέδες σε μικρά πιατάκια και ν’ ακούσεις reggae, soul, afrobeat και ό,τι-να-ναι (με την καλή έννοια ) μουσική από το shuffle του laptop. Στο τέλος της εβδομάδας, τέλος, οι DJs θα φροντίζουν πάντα να φτιάξουν ατμόσφαιρα πάρτι, σαν να είναι η τελευταία ημέρα των διακοπών.  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d786.3569525118108!2d23.712123092959057!3d37.967144293935625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xacc143938e930a2f!2sBRAZILIANA!5e0!3m2!1sel!2sgr!4v1497511122658" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/pages/Βραζιλιανα/212707472089339' ),

(NULL, '7', 'Λουξ', 'assets/images/protasi/7.jpg', 'Θεσσαλονίκης 9, Αθήνα 118 51', '21 0745 0745', '<p>Από τα καλύτερα μαγαζιά της Αθήνας για να ακούσεις ψαγμένα και μη ρεμπέτικα το Σάββατο βράδυ. Ιδιαίτερα ζεστό κλίμα και φιλική ατμόσφαιρα. Πολύ γραφικό, ακριβώςς από δίπλα περνάνε οι ράγες του τρένου και είναι πάνω σε πεζόδρομο. Είναι εξίσου ωραία για ένα ήρεμο και ήσυχο καφεδάκι έξω το μεσημέρι …</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d524.760210604985!2d23.71548213154788!3d37.97694948831311!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf0e07d990fbc08d6!2zzpvOv8-Fzr4!5e0!3m2!1sel!2sgr!4v1497514810043" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/pages/Καφενείο-Λουξ/196801253699831' ),

(NULL, '8', 'Boiler', 'assets/images/protasi/8.jpg', '105 51, Βλαχάβα 9, Αθήνα 105 51', '21 0333 0444', '<p>Από πότε είχατε να δείτε μπαράκι self service; Μήπως από την τελευταία φορά που ταξιδέψατε μέχρι το Λονδίνο ή το Βερολίνο; Τώρα έχετε την ευκαιρία να ταξιδέψετε μέχρι εκεί, με μια μόνο επίσκεψη στο Boiler.
Το μπαράκι της οδού Βλαχάβα, είναι βιομηχανικό, γκρίζο, σκοτεινό και θυμίζει αυτά τα underground στέκια του Λονδίνου, με την εναλλακτική μουσική, που τόσο μας αρέσουν.</br> To Boiler είναι γεμάτο νεολαία, δεδομένου ότι εδώ μπορείτε να βρείτε καλά και φθηνά ποτά, ενώ η μουσική του κινείται στην alternative και ροκ σκηνή, που αγαπούν οι νέοι.
Στους διάφορους χώρους του πρώτου ορόφου πραγματοποιούνται συχνά πυκνά συναυλίες, ενώ guest djs ανεβάζουν τη διάθεση στα ύψη τακτικά.
Αφεθείτε κι εσείς στην σκοτεινή του ατμόσφαιρα και δραπετεύστε για λίγο από την καθημερινότητά σας. </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d393.1147640278285!2d23.72680544811836!3d37.97904030867354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x44c99035f5c300f2!2sBoiler!5e0!3m2!1sel!2sgr!4v1497515205053" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/Boiler-674162162628980' ),

(NULL, '9', 'Frumel', 'assets/images/protasi/9.jpg', 'Μαυρομιχάλη 59, Αθήνα 106 80', '21 0512 5068', '<p>Το πιο vintage μεζεδοπωλείο βρίσκεται στην καρδιά των Εξαρχείων. Η κουλτούρα της βέσπας και του ροκ εντ ρολ συναντά πεντανόστιμους μεζέδες και φίνα ποτά. </br> 
Αξιαγάπητοι ιδιοκτήτες! 
Προϊόντα από μικροπαραγωγούς...Καλαμάτα & Κρήτη.
Μπύρες από μικρο ζυθοποιίες.
Ούζα εκλεκτά & Ρακή από τον τόπο της! </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3144.6747928822147!2d23.73574981520047!3d37.98471810782588!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a1bd3647e30c95%3A0x73f6cbded8561e6e!2sFrumel!5e0!3m2!1sel!2sgr!4v1497515963945" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/frumel/' ),

(NULL, '10', 'Ελληνικό Μουσείο Αυτοκινήτου', 'assets/images/protasi/10.jpg', 'Ιουλιανού 37, Αθήνα 104 33', '21 0881 6187', '<p>Το Ελληνικό Μουσείο Αυτοκινήτου καταλαμβάνει 5.000 τ.μ. σε ένα κτίριο μοναδικής αρχιτεκτονικής και αισθητικής. Είναι αφιερωμένο στην τεχνολογία και στην εξέλιξη του αυτοκινήτου περιλαμβάνοντας περισσότερα από 110 εκθέματα από τα τέλη του 19ου αιώνα έως και τα τέλη του 20ου. Βρίσκεται στο κέντρο της Αθήνας και σε απόσταση αναπνοής από το Εθνικό Αρχαιολογικό Μουσείο.</br> </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d196.52402615843698!2d23.72992483742316!3d37.99149298151243!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd0aa154b64dcda95!2zzpXOu867zrfOvc65zrrPjCDOnM6_z4XPg861zq_OvyDOkc-Fz4TOv866zrnOvc6uz4TOv8-F!5e0!3m2!1sel!2sgr!4v1497516670569" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.hellenicmotormuseum.gr/el/' ),

(NULL, '11', 'Gagarin 205', 'assets/images/protasi/11.jpg', 'Λιοσίων 205, Αθήνα 104 45', '21 1411 2500', '<p>Στο κέντρο της πρωτεύουσας, στην οδό Λιοσίων 205, λειτουργεί ο πιο σύγχρονος συναυλιακός χώρος της Eλλάδας, ένα venue κατασκευασμένο με τις προδιαγραφές του 21ου αιώνα. Χωρητικότητας 1.200 ορθίων ή 600 καθήμενων, το GAGARIN 205 δεν είναι ένα ακόμη «μαγαζί», αλλά ένας πολυχώρος που φιλοξενεί με τις πιο απαιτητικές αξιώσεις συναυλίες, θεατρικές παραστάσεις, προβολές, ειδικές εκδηλώσεις και happenings.</br> O χώρος φιλοξενεί επιλεγμένα κινηματογραφικές προβολές, θεατρικές παραστάσεις, dj sets επωνύμων βιρτουόζων των ντεκς, πάρτι ομάδων και φαν κλαμπς, παρουσιάσεις δισκογραφικών εταιρειών, οπτικοακουστικά events και instalations, on line συνδέσεις με κλαμπς του εξωτερικού, εναλλακτικές διαλέξεις.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2098.27799638904!2d23.721184686363785!3d38.00361559095436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x48231d748d961b57!2sGagarin+205!5e0!3m2!1sel!2sgr!4v1497528136490" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.gagarin205.gr' ),

(NULL, '12', 'ΠΑΡΑΞΕΝΟ ΚΑΦΕΝΕΙΟ', 'assets/images/protasi/12.jpg', 'Σεράφη 2-4, Αθήνα 104 45', '21 0831 1151', '<p>Απλό, ατμοσφαιρικό, με ταυτότητα! Το προτείνω για όσους επιθυμούν την καλή old times classic rock μουσική. </br>Ποικιλία σε φρεσκα μεζεδακια και ποτά, τοπ διακοσμηση και κυριως ζεστή, οικογενειακή ατμόσφαιρα που σε κερδιζει απο την πρώτη στιγμή!! </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1571.8732431225412!2d23.72587415812903!3d38.00637330835647!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xad65c89f6a919525!2zzqDOkc6hzpHOns6Vzp3OnyDOms6RzqbOlc6dzpXOmc6f!5e0!3m2!1sel!2sgr!4v1497539624308" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/paraksenokafenei0/' ),

(NULL, '13', 'Μαρτίνης Μαγειρίο', 'assets/images/protasi/13.jpg', '
Πατησίων 289, Αθήνα 111 41', '
21 0211 1063', '<p>Φιλικό και εξυπηρετικό προσωπικό, άνετοι χώροι, κορυφαίο φαγητό, καλομαγειρεμένο, υπέροχες σαλάτες και ορεκτικά, κρεατικά που "μιλάνε" και ολόφρεσκες τηγανητές πατάτες που δεν χορταίνεις να τρως... </br>  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1923.8595350622109!2d23.73429381767192!3d38.01389729410392!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x638874fc32afaf1a!2zzpzOsc-Bz4TOuc69zrfPgiDOnM6xzrPOtc65z4HOr86_!5e0!3m2!1sel!2sgr!4v1497541363584" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.martiniskouzina.gr' ),

(NULL, '14', 'Το Μαγικό Φίλτρο - Μουσικό Καφενείο', 'assets/images/protasi/14.jpg', 'Κων/νου Καβάφη 19, Αθήνα 111 43', '21 0831 1551', '<p>Οι θαμώνες, από 3 έως 103 ετών, ίσως κάποια στιγμή χρειαστεί να δείξουν τι σημαίνει αλληλεγγύη, πληρώνοντας έναν καφέ ακόμα για κάποιον που δεν έχει, ένα γλυκό, ένα σάντουιτς, διακριτικά, γιατί είναι άνθρωποι της γειτονιάς, γνωρίζονται, έστω και εξ όψεως. Νοικοκυρές φτιάχνουν γλυκά, λικέρ, κουλουράκια και τα πουλάνε μέσα στο καφέ, ως συνοδευτικά για τα ροφήματα, γιατί σε μνημονιακούς καιρούς μόνο η συλλογικότητα είναι δύναμη. Κάθε Τετάρτη, τον... λόγο έχει η λαϊκή τέχνη – βελόνες, βελονάκια, νήμα, μαλλί. </br>Τεχνίτρες παλιές και νεόκοπες μαζεύονται και φτιάχνουν διάφορα πράγματα που τα πουλάνε μέσα στο καφέ. Δεν λείπουν και οι βιβλιοπαρουσιάσεις και το θεατρικό παιχνίδι. Από εδώ ξεκίνησε η εικαστική κίνηση «The rePSYcled», που με το κινούμενο καλλιτεχνικό εργαστήριο στις γειτονιές, προσφέρει ελεύθερη καλλιτεχνική έκφραση για μικρούς και μεγάλους. Τα Σάββατα, όμως, το σκηνικό αλλάζει: μουσικές του κόσμου, live, από gipsy jazz, swing και latin έως funk, punk, rock! </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1571.6125662745183!2d23.727575200649508!3d38.01853066652265!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9b460965197e9a39!2zzqTOvyDOnM6xzrPOuc66z4wgzqbOr867z4TPgc6_IHwgzpzOv8-Fz4POuc66z4wgzprOsc-GzrXOvc61zq_OvyDPg8-EzrEgzqDOsc-Ezq7Pg865zrE!5e0!3m2!1sel!2sgr!4v1497544447343" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/pages/Μαγικο-φιλτρο/185912008172626' ),

(NULL, '15', 'Tithora', 'assets/images/protasi/15.jpg', 'Λεωφ. Ιωνίας 275, Αθήνα 111 43', '
21 0258 1819', '<p>Το ιστορικό Rock Bar των Πατησίων είναι ακόμα εδώ γεμάτο διάθεση και χαρά για αξέχαστα βράδια με την αγαπημένη σας μουσική!</br>Από τις 10 το πρωί ανοίγει τις  πόρτες του προκειμένου να απολαύσετε τους καφέδες και τα ποτά του μέσα στον ανανεωμένο και υψηλής αισθητικής χώρο του με την καλύτερη Rock μουσική. </p>', '
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d571.8918231532157!2d23.734874424726506!3d38.02351563439196!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa40640273abb84c9!2sTithora!5e0!3m2!1sel!2sgr!4v1497546137508" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/tithora/' ),

(NULL, '16', 'Άλσος Προμπονά', 'assets/images/protasi/16.jpg', ' Ανθέων 53, Αθήνα 111 43', '21 0417 8470', '<p>Καλά διαμορφωμένοι χώροι πρασίνου με ποικιλία φυτών κι ένας μικρός λαβύρινθος που αρέσει στα παιδιά. Επίσης, υπάρχουν ανοιχτά γήπεδα μπάσκετ. Δυστυχώς τα τελευταία χρόνια δεν λειτουργεί καφετέρια - αναψυκτήριο.</br> </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3959.509019835584!2d23.739774972428535!3d38.03160331001928!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3673d8a8f03feb12!2zzobOu8-Dzr_PgiDOoM-Bzr_OvM-Azr_Ovc6s!5e0!3m2!1sel!2sgr!4v1497560641354" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/pages/Άλσος-Προμπονά/397175773688865' ),

(NULL, '17', 'EGALITE', 'assets/images/protasi/17.jpg', 'Αβέρωφ 36, Νέα Ιωνία 142 32', '
21 0271 6461', '<p>Φιλικό περιβάλλον και ένα από τα στέκια της περιοχής! Πολύ συχνά live μουσική από ροκ συγκροτήματα! </br> Ζεστός χώρος, γωνιές πιο ήσυχες για συζήτηση αλλά και άλλες με πιο έντονη μουσική και φυσικά darts!</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d856.7256180300885!2d23.747960598210422!3d38.03582230372488!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa86a9bbd4fa96c06!2sEGALITE!5e0!3m2!1sel!2sgr!4v1497607271954" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.egalite.gr' ),

(NULL, '18', 'Vintage Espresso Bar', 'assets/images/protasi/18.jpg', 'Μεσολογγίου 46, Νέα Ιωνία 142 31', '21 1013 8790', '<p>Μικρο, αλλα εξαιρετικο! Με ωραια μουσικη και ενδιαφερουσες live βραδιες.</br> Σταθερή αξία στον καλό καφέ. Λογικές τιμές (ειδικά εν μέσω κρίσης). Vintage περιβάλλον και ποικιλία σε αλκοολούχα που δύσκολα βρίσκεις αλλού. Ο κατάλογος περιέχει και φαγητά για να καλύπτει κάθε κενό.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d392.7693942617483!2d23.7532532362169!3d38.043470983796915!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x97dc7a8abc2510c6!2sVintage+Espresso+Bar!5e0!3m2!1sel!2sgr!4v1497608119715" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/vintage.the.espresso.bar/' ),

(NULL, '19', 'Ο Μύλος', 'assets/images/protasi/19.jpg', 'Μαρίνου Αντύπα 18, Ηράκλειο 141 21', '21 0671 5648', '<p>Μουσικο καφενειο με ιστορια. Απο τα πρωτα στο ειδος του. </br> Από το 1993 έχει θρέψει γενιές πλέον. Πάντα οικονομικές τιμές, αλλά με πολύ καλή ποιότητα στα ποτά! Ωραίες διαθέσεις κι αρκετά καλή μουσική..! </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d785.5129585078117!2d23.76608322922085!3d38.045878554875486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xef3ed78410e26a93!2zzpzPjc67zr_Pgg!5e0!3m2!1sel!2sgr!4v1497608961112" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/pages/Καφενειο-Ο-Μυλος/362870130460861' ),

(NULL, '20', 'Ολυμπιακό Αθλητικό Κέντρο Αθηνών', 'assets/images/protasi/20.jpg', 'Κηφισίας 37, Αθήνα 151 23', '21 0683 4060', '<p>Εγκαταστάσεις που φιλοξενούν όλα τα είδη αθλημάτων. Πολύ μεγάλος χώρος για να τρέξεις να κάνεις ποδήλατο να αθληθείς γενικά, να πας βόλτα το σκύλο σου. </br>Τις καθημερινές και ιδικά τα πρωινά δεν έχει καθόλου κόσμο σε σχέση με απογεύματα και κυρίως σαββατοκύριακα.   </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3142.3603417117606!2d23.784217215201807!3d38.038689304704675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xba5f2f288a88f884!2zzp_Ou8-FzrzPgM65zrHOus-MIM6RzrjOu863z4TOuc66z4wgzprOrc69z4TPgc6_IM6RzrjOt869z47OvSAizqPPgM-Nz4HOv8-CIM6bzr_Pjc63z4Ii!5e0!3m2!1sel!2sgr!4v1497610816712" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.oaka.com.gr' ),

(NULL, '21', 'The Mall Athens', 'assets/images/protasi/21.jpg', '
Ανδρέα Παπανδρέου 35, Μαρούσι 151 22', '21 0630 0000', '<p>Αν έχετε αγοραφοβία καλό είναι να μην το επισκεφτείτε Σαββατοκύριακα. Καθημερινές πολύ καλύτερα. Πολλά μαγαζιά, κυρίως ρούχων, αλλά και ηλεκτρονικών ειδών. Καφετέριες, fast food, σινεμά και άπλετο πάρκινγκ (επί πληρωμή). </br> Μπορείς να συνδυάσεις ψώνια στα  μαγαζιά, φαγητό ή καφέ στα εστιατόρια και τις καφετέριες, καθώς και διασκέδαση στις αίθουσες προβολής. </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3142.1117654097575!2d23.788754893651724!3d38.0444820455923!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb85e05ffeb3b20a0!2sThe+Mall+Athens!5e0!3m2!1sel!2sgr!4v1497611688980" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.themallathens.gr/gre/' ),

(NULL, '22', 'Ο κήπος της Εδέμ ', 'assets/images/protasi/22.jpg', 'Περικλέους 24, Athens 151 22', '21 0614 6807', '<p>Πραγματικά αυθεντική λιβανεζικη κουζίνα. Το φαγητό είναι εξαιρετικό, έχουν κάποιες πολύ μοναδικές επιλογές μενού που δεν μπορείτε να βρείτε πουθενά αλλού.</br>  Η εξυπηρέτηση άψογη και ο χώρος πολύ προσεγμένος. Επίσης η αραβική μουσική ταιριάζει απόλυτα με το στυλ του μαγαζιού. </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d785.3855224826879!2d23.801578129204795!3d38.05775475470407!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa0001e04ed8c3e38!2zzp8gzrrOrs-Azr_PgiDPhM63z4IgzpXOtM6tzrwgLyDZhdi32LnZhSDYrNmG2Kkg2LnYr9mG!5e0!3m2!1sel!2sgr!4v1497612605497" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.okipostisedem.gr' ),

(NULL, '23', 'Salto Mortale bar', 'assets/images/protasi/23.jpg', 'Πίνδου 7, Πεύκη 151 21', '21 0805 6490', '<p>Άνετο και χαλαρό καφέ-μπαρ. Vintage 70 διακόσμησή</br> Εξαιρετικός καφές και ποικιλία κοκτέιλ και ποτών.Πολύ συχνά και με ενδιαφέρουσες μουσικές να τα συνοδεύουν. Εκτός από ολοήμερο συχνά γίνεται και ολονύχτιο....  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3141.2441800478064!2d23.797972928465832!3d38.06469410980271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x39740ed4e837870c!2sSalto+Mortale+bar!5e0!3m2!1sel!2sgr!4v1497614300473" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/saltomortalebar/' ),

(NULL, '24', 'Μέντα Cafe', 'assets/images/protasi/24.jpg', 'Αγ. Θεοδώρων 5, Κηφισιά 145 62', '21 0808 0193', '<p>Στην Μέντα μπορείτε να απολαύσετε τον καφέ σας, αλλά και να επιλέξετε ανάμεσα σε μία μεγάλη ποικιλία γεύσεων τσαγιού, φρεσκοστυμμένων χυμών. 
Για όσους επιθυμείτε, μπορείτε να απολαύσετε διάφορα πιάτα, όπως σαλάτες, sandwitches, μπρουσκέτες, αλμυρές τάρτες, αλλά και γλυκά φτιαγμένα όλα από εμάς, με μεράκι και αγνά υλικά.</br> Όμορφη χαλαρή ατμόσφαιρα χειμώνα - καλοκαίρι
Χώρος εξωτερικος για καλοκαίρι με μικρα τραπεζάκια. Εσωτερικά ομορφη vintage διακόσμηση. Μουσική καλα επιλεγμένη! </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1570.4849928956269!2d23.812087144318692!3d38.071080097306314!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3a30d33f7c4df13e!2zzpzOrc69z4TOsSBDYWZl!5e0!3m2!1sel!2sgr!4v1497615103350" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/menta.cafe.kifissia/' ),

(NULL, '25', 'Έντεχνος Καφενές Φαμελιά', 'assets/images/protasi/25.jpg', 'Εθ. Αντιστάσεως, Περιστέρι 121 34', '21 1012 4325', '<p>Εξαιρετικό μαγαζί με φιλική ατμόσφαιρα και προσωπικό, γευστικό και χορταστικό φαγητο  σε πολύ καλές τιμές!</br> Φοβερή ποικιλία σε μεζέδες!  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1571.710662509148!2d23.68781659869059!3d38.01395607497595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x36591be8709ac155!2zzrXOvc-EzrXPh869zr_PgiDOus6xz4bOtc69zrXPgiDPhs6xzrzOtc67zrnOsQ!5e0!3m2!1sel!2sgr!4v1497734489096" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/pages/Εντεχνος-Καφενες-φαμελια/713628545350420' ),

(NULL, '26', 'Toy Stories', 'assets/images/protasi/26.jpg', 'Ηροδότου 32, Περιστέρι 121 34', '21 0578 0215', '<p>Ένας χώρος για όλες τις ηλικίες, με ζεστό περιβάλλον, εξυπηρέτηση, καλές τιμές, προσωπικό που πάντα προθυμο είναι δίπλα σου να σε ταξιδέψει στην παιχνιδογνωσια των πολυαριθμων και για όλες τις παρέες παιχνίδια από όλο τον κόσμο.</br> Συνοδεία με ωραία πιάτα, ροφήματα και μουσική με ρυθμούς παρέας.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d416.2984513218429!2d23.692694443364562!3d38.012885640358945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcd052de0cabd788b!2sToy+Stories!5e0!3m2!1sel!2sgr!4v1497735206524" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/toystoriesperisteri/' ),

(NULL, '27', 'Travolta Athens', 'assets/images/protasi/27.jpg', 'Αγίου Παύλου 33, Περιστέρι 121 32', '21 0571 9222', '<p>Πρωτότυπες συνταγές με θαλασσινά, με γνώμονα την γεύση και ποιότητα, σούπερ το σέρβις!  </br> Πολλές επιλογές για όλα τα γούστα. Φρέσκα ψάρια και η παρουσίαση σκίζει!!  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1571.8928492087853!2d23.70149227084274!3d38.00545879290481!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe6bb5f54164fb6c6!2sTravolta+Athens!5e0!3m2!1sel!2sgr!4v1497737451424" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/travoltaathens/' ),

(NULL, '28', 'Το Ρόδι', 'assets/images/protasi/28.jpg', 'Κρέοντος 163 & Ρόδου 179, Ρόδου 179, Αθήνα 10443', '21 0515 4376', '<p>Έχει πολύ καλό φαγητό, με το κεμπάπ να ξεχωρίζει, χωρίς να αδικείται το υπόλοιπο μενού. </br>Σε ένα μέρος κέντρο απόκεντρο, πολύ καλή εξυπηρέτηση πελατών, άριστη ποιότητα προϊόντων και καλές τιμές για όλους. </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1571.9099059677305!2d23.714869572440268!3d38.00466317427299!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc13beaa4535b6faf!2zzqTOvyDOoc-MzrTOuQ!5e0!3m2!1sel!2sgr!4v1497739821543" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/VaheAnnaZatikyan/' ),

(NULL, '29', 'Θέατρο ΕΠΙ ΚΟΛΩΝΩ', 'assets/images/protasi/29.jpg', '10444, Ναυπλίου 12, Αθήνα 104 44', '21 0513 8067', '<p>Το Επί Κολωνώ είναι ένα πολυμορφικό θέατρο ρεπερτορίου που έχει καθιερωθεί ως ένας δημιουργικός  καλλιτεχνικός πολυχώρος με θεατρικές παραστάσεις, και όχι μόνο. </br> Στους χώρους του περιλαμβάνονται η Κεντρική Σκηνή, το Black Box, το Φουαγιέ -που λειτουργεί και ως μπαρ και καφέ- και η Αυλή. Και οι τέσσερις χώροι φιλοξενούν καλλιτεχνικές δραστηριότητες, με βασικότερη -από θεατρική άποψη- την Κεντρική Σκηνή. </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d786.1062739446224!2d23.715663131924277!3d37.99054398154046!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd57bddbee6e2b1!2zzrjOrc6xz4TPgc6_IM6VzqDOmSDOms6fzpvOqc6dzqk!5e0!3m2!1sel!2sgr!4v1497740346943" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.epikolono.gr' ),

(NULL, '30', 'Μπλε Παπαγάλος', 'assets/images/protasi/30.jpg', 'Προδίκου 31, Αθήνα 104 36', '21 1012 1099', '<p>Όμορφο μαγαζί,σίγουρα ξεχωριστό για την αισθητική του, με ρετρό διακόσμηση.</br> Vintage στεκι στην καρδια του Μεταξουργειου! Με θεα στην πλατεια Αυδη! Μια οαση στο κεντρο της Αθηνας!  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3144.7097203866856!2d23.718408791065077!3d37.9839031270801!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a961bbb984948a3!2zzpzPgM67zrUgzqDOsc-AzrHOs86szrvOv8-C!5e0!3m2!1sel!2sgr!4v1497741227960" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/BlePapagalos/' ),

(NULL, '31', 'The Clumsies', 'assets/images/protasi/31.jpg', 'Πραξιτέλους 30, Αθήνα 105 61', '21 0323 2682', '<p>Εξαιρετικός χώρος με πολύ καλή μουσική, θεωρείται από τα 50 καλύτερα μαγαζιά στον κόσμο.</br> Ωραίο μαγαζί για καφέ νωρίς, χαλαρή μπύρα το απόγευμα και ποτό με δυνατή μουσική το βράδυ. </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3144.9066284612786!2d23.727693663220553!3d37.979308295727456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe4da18e67110b926!2sThe+Clumsies!5e0!3m2!1sel!2sgr!4v1497741764946" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/The-Clumsies-1522440224704315/' ),

(NULL, '32', 'Κιμωλία Art Cafe', 'assets/images/protasi/32.jpg', 'Υπερείδου 5, Αθήνα 105 58', '21 1184 8446', '<p>Η Κιμωλία θα σας συνεπάρει με την ατμόσφαιρά της. Πολύ καλός καφές, όμορφο περιβάλλον και τρομερή εξυπηρέτηση συνθέτουν το μαγαζί που θέλεις να πας.</br>Μην ξεχάσετε να γράψετε με κιμωλία στον πίνακα στο πίσω μέρος του μαγαζιού το δικό σας μήνυμα.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d393.14501158399884!2d23.732261049939485!3d37.97339303737321!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x58012d092c742d32!2zzprOuc68z4nOu86vzrEgQXJ0IENhZmU!5e0!3m2!1sel!2sgr!4v1497742989421" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/kimolia/' ),

(NULL, '33', 'Tiki Bar', 'assets/images/protasi/33.jpg', 'Φαλήρου 15, Αθήνα 117 42', '21 0923 6908', '<p>Εαν ξαφνικά θέλετε στην καρδιά της Αθήνας να βρεθείτε κάπου εξωτικά, εδω, ειναι το σωστό μερος. Υπέροχος χώρος , καταπληκτικά κοκτέιλ. </br>Πιθανότατα να πετύχετε κάποιο live η κάποιον dj. Μπορείτε να πάτε να χορέψετε η να απολαύσετε ήσυχα το κοκτειλ σας.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1212.7373122587926!2d23.727721418184913!3d37.966594415843986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x29c5f5afd62cc1b7!2sTiki+Bar!5e0!3m2!1sel!2sgr!4v1497743804822" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/TikiBarAthens/' ),

(NULL, '34', 'KINONÓ', 'assets/images/protasi/34.jpg', 'Φαλήρου 48, Αθήνα 117 42
', '21 1408 6826', '<p>Μια αίσθηση από μαθηματικά χρόνια με τις κλασσικές καρέκλες σχολείου και πολύ όμορφα ταξινομημένο μαγαζί! Ωραία ατμόσφαιρα και ευγενέστατο προσωπικό.</br>  Ωραια μουσικη , συμπαθητικοτατες τιμες, good snacks!! </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d196.59555159827104!2d23.72571638314843!3d37.96478628167384!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x597bafe4e14aa02b!2sKINONO!5e0!3m2!1sel!2sgr!4v1497746887033" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/KINONÓ-953756914680416/' ),

(NULL, '35', 'Pastore Trattoria Bar', 'assets/images/protasi/35.jpg', 'Ευστρατίου Πίσσα 91, Athens/Greece 117 44', '21 1406 0010', '<p>Πολύ ωραίο χώρος με καταπληκτική αναγεννησιακού τύπου διακόσμηση, πολλές επιλογές κρασιών και σχετικών ποικιλιών.</br> Εξαιρετικό σερβις!  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1280.04704446809!2d23.727252087338737!3d37.95793643116748!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4020da8700e044e!2sPastore+Trattoria+Bar!5e0!3m2!1sel!2sgr!4v1497746512805" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/PastoreAthens/' ),

(NULL, '36', 'La bella napoli', 'assets/images/protasi/36.jpg', 'Χρυσίπποu 4, Δάφνη 172 37
', '21 0901 0003', '<p>Αν θέλετε να βρείτε τις γεύσεις και τα αρώματα της Ιταλίας στην Ελλάδα, δεν μπορείτε να μην επισκεφθείτε την La Bella Napoli!</br>Πίτσα ψημένη σε ξυλόφουρνο, με υλικά απευθείας από ιταλία! Μέχρι και η μπύρα που θα πιείς είναι ιταλική!</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d393.2381744114873!2d23.735919927073535!3d37.95599489291802!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x973db46f76a0433b!2sLa+bella+napoli!5e0!3m2!1sel!2sgr!4v1497748145463" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/labellanapolimarco/' ),

(NULL, '37', 'Τρελός Γάιδαρος', 'assets/images/protasi/37.jpg', 'Λεωφόρος Βουλιαγμένης 239, Δάφνη 172 37', '21 0976 9411', '<p>Μία εξαιρετική επιλογή για "γρήγορο", αλλά και άκρως ποιοτικό φαγητό!!</br> </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1573.0811084611441!2d23.737461914900017!3d37.94999814854766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7e69b567748d057f!2zzqTPgc61zrvPjM-CIM6TzqzOuc60zrHPgc6_z4IgLSDOlM6sz4bOvc63!5e0!3m2!1sel!2sgr!4v1497749846166" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/trelosgaidaros' ),

(NULL, '38', 'PROTE.IN BAR', 'assets/images/protasi/38.jpg', 'Πάφου 25, Ηλιούπολη 163 46', '
21 0973 0007', '<p>Το ProteinBar αποτελεί το πρώτο εστιατόριο στην Ελλάδα του οποίου η δημιουργική φιλοσοφία βασίζεται στην πρωτεΐνη. </br>Προσφέρει με τρόπο πρωτοποριακό και απολύτως οικονομικά προσιτό υγιεινά πρωτεϊνικά γεύματα στον καταναλωτή που η πρωτεΐνη κατέχει κυρίαρχο ρόλο στο διαιτολόγιό του.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d393.32551576734596!2d23.74118936306031!3d37.9396777541231!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa54c7d0da26427c9!2sPROTE.IN+BAR!5e0!3m2!1sel!2sgr!4v1497750171564" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/Protein-BAR-255510171454617/' ),

(NULL, '39', 'Το Κιούπι', 'assets/images/protasi/39.jpg', 'Ερατοσθένους 24, Ηλιούπολη 163 41
', '21 0993 5712', '<p>Ζεστός χώρος σε παραδοσιακό σκηνικό, με την περιποίηση και το μεράκι μιας ολόκληρης οικογένειας.</br>  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d786.8052299829714!2d23.748733629214225!3d37.925269098733295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfe2ec08d9a21ce7!2zIs6kzr8gzprOuc6_z43PgM65IiDOpM6xzrLOrc-Bzr3OsSDOnM61zrbOtc60zr_PgM-JzrvOtc6vzr8!5e0!3m2!1sel!2sgr!4v1497750832379" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/Taverna-Mezedopoleio-To-Kioupi-198338367041108/' ),

(NULL, '40', 'Μοίρες Μεζεδοπωλείο', 'assets/images/protasi/40.jpg', 'Μυρογιάννη 1, Άλιμος 174 56', '21 0992 9088', '<p>Γευστικό φαγητό και πολύ καλής ποιότητας κρασί σε ένα όμορφο περιβάλλον και με εξαιρετικά προσιτές τιμές. </br> Δημιουργήσαμε στον Άλιμο ένα ζεστό και φιλικό χώρο , που μπορείτε να απολαύσετε τους εκλεκτούς μαζέδες μας καθώς και τον αγαπημένο σας καφέ. Στις "Μοίρες" δεν αρκούμαστε μόνο στην τυπική σας εξυπηρέτηση αλλά στοχεύουμε στη δημιουργία ενός οικογενειακού κλίματος και μιας ευρύτερης "παρέας".</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d196.72318491915553!2d23.73464990446982!3d37.917089924230844!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc1b2e3d15e9952ce!2zzpzOv86vz4HOtc-CIM6czrXOts61zrTOv8-Az4nOu861zq_Ovw!5e0!3m2!1sel!2sgr!4v1497751880460" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/moiresalimos/' ),

(NULL, '41', 'ROUTE 32', 'assets/images/protasi/41.jpg', 'Παρ. Λεωφ. Βουλιαγμένης 32, Αργυρούπολη 164 52', '21 0995 6490', '<p>Ένα original rock μπαρ για τους "Old school" ροκάδες και παράλληλα μια ροκ μουσική σκηνή που φιλοξενεί τα καλύτερα συγκροτήματα από το χώρο της rock της blues και της country μουσικής.</br></p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1574.068766519175!2d23.74546209162106!3d37.90384789804682!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6f218ca765a636ff!2sROUTE+32+ROCK&#39;N&#39;BLUES+BAR!5e0!3m2!1sel!2sgr!4v1497753089312" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/Route32Rocknblues/' ),

(NULL, '42', 'Cap Cap', 'assets/images/protasi/42.jpg', 'Λεωφ. Ιασωνίδου 10, Ελληνικό 167 77', '21 0964 5008', '<p>Πολύ εξυπηρετικό, ευγενικό και καλό προσωπικό. Το περιβάλλον ωραίο. Είναι θεματικό. Οταν πήγα είχε beauty and the beast.</br>Τα γλυκά φοβερά. Καθώς και ο decaffeinated espresso που δοκιμάσαμε πολύ καλός!!!! Οι τιμές για την ποιότητα, την ποσότητα, και την εξυπηρέτηση πολύ καλές.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d787.1584994025183!2d23.748981542705984!3d37.89224125139078!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7df1c30ef2aa23df!2sCap+Cap!5e0!3m2!1sel!2sgr!4v1497753498854" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/capcapgr' ),

(NULL, '43', 'Theoria Tou House', 'assets/images/protasi/43.jpg', 'Δαβάκη 1, Αιγάλεω 122 44', '21 0531 2134', '<p>Πολύ  ωραίος  χώρος! Γεμάτο  παλιά  παιχνίδια και αντίκες.  Ευγενικό προσωπικό, ποικιλία κοκτέιλ και ποτών, ωραίος καφέ αλλά και γλυκά!. </br>Στα μεγάλα συν του χώρου ο διαχωρισμός που έχει στον χώρο των καπνιζόντων και των μη καπνιζόντων.  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d934.7883740557666!2d23.67213319184287!3d37.99484411573888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xab4e32637f3dcef!2sTheoria+Tou+House!5e0!3m2!1sel!2sgr!4v1497787317111" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/Theoriatouhouse/' ),

(NULL, '44', 'The Claξons', 'assets/images/protasi/44.jpg', 'Μάρκου Μπότσαρη 23 Γρηγορίου, Κυδωνιών 9, Αιγάλεω 122 43', '21 0598 8600', '<p>Το παλαιό στυλ αγκαλιάζει το παρόν, φωτεινά χρώματα, χαρούμενο design, υπέροχος καφές και γευστικά cocktails! </br>Άψογο και καλοδιάθετο σέρβις και έχει σπέσιαλ ημέρας, κάθε ημέρα και άλλη τάρτα!!  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1127.8817654384388!2d23.679501684377406!3d37.99124431379188!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb426757d326ff6d2!2sThe+Claxons!5e0!3m2!1sel!2sgr!4v1497788606940" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/theclaxons/' ),

(NULL, '45', 'Παγοδρόμιο Ice n skate', 'assets/images/protasi/45.jpg', 'Εμμανουήλ Παππά 7, Αιγάλεω 122 42', '21 2213 3257', '<p>Μην φοβάστε να πέσετε στον πάγο, μάθετε να σηκώνεστε και να γίνεστε καλύτεροι κάθε φορά που πέφτετε... </br>Οι καλύτεροι είναι αυτοί που πέφτουν συνέχεια οι χειρότεροι αυτοί που δεν έχουν πέσει ποτέ. Κeep walking...
</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2129.2234299925844!2d23.69353893149095!3d37.98896365196135!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa6e6d39e299801aa!2zzqDOsc6zzr_OtM-Bz4zOvM65zr8gSWNlIG4gc2thdGU!5e0!3m2!1sel!2sgr!4v1497790477686" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/pagodromio.icenskate/' ),

(NULL, '46', 'Θέατρο Χυτήριο', 'assets/images/protasi/46.jpg', 'Ιερά Οδός 44, Κέντρο 104 35', '21 1012 4401', '<p>Παραστάσεις, stand up comedy, dj sets, εκδηλώσεις, προβολές και άλλα πολλά λαμβάνουν μέρος, ειδικά τους καλοκαιρινούς μήνες, σε αυτόν τον όμορφο πολυχώρο.</br>Χώρος πολυ προσεγμένος με πολυ ζεστή ατμόσφαιρα, γουστόζικο καφέ-μπαρ. Αξίζει να το επισκεφτείτε έστω και για καφέ στην όμορφη αυλή του. </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d467.4857192975945!2d23.712708016135284!3d37.98047751597173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x47428e7d03bcf1d1!2zzpjOrc6xz4TPgc6_IM6nz4XPhM6uz4HOuc6_!5e0!3m2!1sel!2sgr!4v1497791327748" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.chytirio.gr/' ),

(NULL, '47', 'Stick Bar', 'assets/images/protasi/47.jpg', 'Πατριάρχου Ιωακείμ 48, Αθήνα 106 76', '21 0724 9802', '<p>Το καλαμάκι στα gourmet του! Μοναδικά γευστικά πιάτα με ενδιαφέρουσες πινελιές, απρόσμενους συνδυασμούς υλικών και εξαιρετικές νέες γεύσεις!</br>Η εξυπηρέτηση του προσωπικού φανταστική. Μην ξεχασετε να δοκιμάσετε τους λουκουμαδες είτε με μέλι είτε με σοκολάτα. </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d786.2363854922706!2d23.744856278022922!3d37.978400196837924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x37c545247530004e!2sStick+Bar!5e0!3m2!1sel!2sgr!4v1497792730585" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'stickbar.gr' ),

(NULL, '48', 'Μέγαρο Μουσικής', 'assets/images/protasi/48.jpg', 'Λεωφ. Βασιλίσσης Σοφίας, Αθήνα 115 21', '21 0728 2333', '<p>Όμορφος και καθαρός χώρος για μια μεγάλη γκάμα πολιτιστικών εκδηλώσεων, από θέατρο, μουσική μέχρι ρεσιτάλ εκκλησιαστικού οργάνου, παιδικές εκδηλώσεις, θέατρο, πατινάζ σε πάγο, κ.α. Έχει μαγαζί με βιβλία, cd, κ.α. και καφέ, ενώ βρίσκεται δίπλα - μέσα σε πάρκο.</br>Κόντρα στα σημεία των καιρών, το Μέγαρο Μουσικής Αθηνών εξακολουθεί να προσπαθεί, να προστατεύει και να προάγει την Τέχνη και την Ποιότητα! </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d786.2105592547819!2d23.753849501716186!3d37.98081091589108!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2efa440dcf5a2ce7!2zzpzOrc6zzrHPgc6_IM6czr_Phc-DzrnOus6uz4IgzpHOuM63zr3Pjs69!5e0!3m2!1sel!2sgr!4v1497793871551" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.megaron.gr/' ),

(NULL, '49', 'Chess Square', 'assets/images/protasi/49.jpg', 'Μακρυνίτσας 3, Αθήνα 115 22', '21 0645 1538', '<p>Σας προσκαλούμε να έρθετε να γνωριστούμε ή να ξαναβρεθούμε, να παίξουμε σκάκι, να αναλύσουμε παρτίδες και να απολαύσουμε μαζί το μαγικό κόσμο του σκακιού.</br>Ελπίζουμε να σας αρέσει ο νέος μας χώρος και να ζωντανέψει με την δικιά σας προσέλευση και παρουσία.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d335.32958030538043!2d23.75804051267515!3d37.989422965183266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x84b67e07fd507492!2zQ2hlc3MgU3F1YXJlIM-DzrrOsc66zrnPg8-EzrnOus-MIM61zr3PhM61z4XOus-Ezq7Pgc65zr8!5e0!3m2!1sel!2sgr!4v1497794839821" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/chesssquareclub/' ),

(NULL, '50', 'Danaos Cinema', 'assets/images/protasi/50.jpg', 'Λ. Κηφισίας 109, Αθήνα 115 24', '21 0692 2655', '<p>Ενας απο τους καλύτερους κινηματογράφους, τόσο σε επιλογή ταινιών, επιπεδο εξυπηρετησης και ομορφους χώρους (αιθουσες - μπαρ κλπ). Η βιβλιοθηκη στην είσοδο προσθέτει ενα ακόμη θετικο, καθώς σε προιδεαζει για μια οικειοτητα στυλ σαν στο σπιτι σου!</br>Υπέροχο σινεφίλ στέκι. Εδώ μάθαμε να μας αρέσει ο κινηματογράφος! Από το 1981. Εξαιρετικός εξώστης, cozy bar, πάντα ενδιαφέρον φουαγιέ..</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d786.0757670177363!2d23.766345715904933!3d37.99339082723436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb515044d73f2e61d!2zzprOmc6dzpfOnM6RzqTOn86TzqHOkc6mzp_OoyDOlM6Rzp3Okc6fzqM!5e0!3m2!1sel!2sgr!4v1497795250109" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.danaoscinema.gr/' ),

(NULL, '51', 'Chinas Fantasy', 'assets/images/protasi/51.jpg', 'Δημ. Καμπούρογλου 32, Αθήνα 115 25', '21 0674 9889', '<p>Ησυχο και καλαίσθητο περιβάλλον, άψογη εξυπηρέτηση, ποιοτικό μενού.</br>Πολύ καλό για την τιμή του ειδικά αν πάτε Πέμπτη για τους λάτρεις του σούσι μπουφέ με απεριόριστη ποσότητα στα 18 ευρώ.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1572.0932398271755!2d23.77782423201148!3d37.996110607823304!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8316fd496419196e!2sChina&#39;s+Fantasy!5e0!3m2!1sel!2sgr!4v1497797282670" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.chinasfantasy.gr/' ),

(NULL, '52', 'Φυσαρμόνικα Μεζεδοποτείον', 'assets/images/protasi/52.jpg', 'Λεωφ. Μεσογείων 180, Παπάγος Χολαργός 155 61', '21 0656 4388', '<p>Ένας πολυ όμορφος χώρος, άνετα τραπέζια για να απολαύσετε το φαγητό και το ποτό σας. Υπέροχες γεύσεις απο πληθώρα ορεκτικών (ακομα και νηστίσιμα), δυνατές επιλογές κυρίως πιάτων και πολύ απολαυστικά γλυκά.</br>Πολύ καλή εξυπηρέτηση και ευχάριστο περιβάλλον. Δοκιμάστε τηγανιά κοτόπουλο mojito και παστουρμαδοπιτάκια.  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d820.7931550959072!2d23.78716971572901!3d38.000999921527715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x42bfd119c62e941a!2zzqbPhc-DzrHPgc68z4zOvc65zrrOsSDOnM61zrbOtc60zr_PgM6_z4TOtc6vzr_OvQ!5e0!3m2!1sel!2sgr!4v1497797877471" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://fysarmonika.gr/' ),

(NULL, '53', 'ΤζωννυΝτέπυ', 'assets/images/protasi/53.jpg', 'Λεωφ. Μεσογείων 234, Χολαργός 155 61', '21 0654 2082', '<p>Πολύ μικρό μπαράκι αλλά έχει κάτι που σε κάνει να νοιώθεις οικεία και όμορφα, ζεστή ατμόσφαιρα και ωραία μουσική.</br>Διαφέρει από τα υπόλοιπα μαγαζιά γύρω του και έχει φοβερό όνομα!</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d785.9586557733946!2d23.793956449192468!3d38.00431773398274!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xef57ce531b85cdea!2zzqTOts-Jzr3Ovc-Fzp3PhM61z4DPhQ!5e0!3m2!1sel!2sgr!4v1497799346332" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/johnnydeppy.gr/?hc_ref=SEARCH&fref=nf' ),

(NULL, '54', 'Νήσων Γη', 'assets/images/protasi/54.jpg', 'Μεσογείων 356, Αγ. Παρασκευή 153 41
', '21 0651 1354', '<p>Μια αυλή πέτρινη που σε ταξιδεύει πολύ μακριά από την Αγία Παρασκευή και ένα εστιατόριο σε συνδυασμούς πέτρας και ξύλου.Οι γεύσεις και η αισθητική του χώρου άριστες , σε ένα εστιατόριο value for money, γεύσεις gourmet σε τιμές απλής νησιώτικης με μεσογειακές και ελληνικές γεύσεις ταβέρνα. </br>Εκπληκτικές σαλάτες και θαλασσινά, ντόπια κρέατα σε παραδοσιακές συνταγές που βρίσκεις μέσα τους ελληνικές γεύσεις όπως μάραθο , σαντορινιό κρασί , δενδρολίβανο, και πολλές άλλες από την ελληνική φύση.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1571.768635963861!2d23.810425268985608!3d38.01125233790993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb0a440a4c859cd2f!2zzp3Ors-Dz4nOvSDOk863!5e0!3m2!1sel!2sgr!4v1497801170397" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.nison-gi.gr/' ),

(NULL, '55', 'Le Roi Cafe Bar', 'assets/images/protasi/55.jpg', 'Αγίας Παρασκευής 126, Χαλάνδρι 152 32', '21 0689 2104', '<p>Παρά πολύ όμορφο μέρος, έχει κρατήσει το ίδιο υπέροχο στιλ εδώ και χρόνια, φοβερή διακόσμηση, εξαιρετικές μουσικές επιλογές σε ροκ ύφος. </br>Το σέρβις γρήγορο και refill σε πατατάκια, ποπ κορν και νατσος όλη την ώρα. Οι τιμές λίγο τσιμπιμενες αλλά αξίζει!!</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d856.9475533507241!2d23.81182670505568!3d38.016843690439686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6296dc11ff28dcb7!2sLE+ROI!5e0!3m2!1sel!2sgr!4v1497801829544" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/Le-Roi-Cafe-Bar-482770731760780/' ),

(NULL, '56', 'Cine Margarita', 'assets/images/protasi/56.jpg', 'Δουκίσσης Πλακεντίας 87, Χαλάνδρι 152 34', '21 0601 4284', '<p>Έχει ότι ζητάς από ένα θερινό σινεμά. Χαλίκι, δροσιά, ποπ κορν, επιλεγμένες ταινίες. </br>Απολαύστε την ταινία σας παρέα με μια παγωμένη μπύρα, σε αυτόν τον ήσυχο θερινό κινηματογράφο.</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2128.2486243932276!2d23.82250760063066!3d38.022538892721535!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbd50d792646eb25d!2zzprOuc69zrfOvM6xz4TOv86zz4HOrM-Gzr_PgiDOnM6xz4HOs86xz4HOr8-EzrE!5e0!3m2!1sel!2sgr!4v1497802360590" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/Cine-Margarita-486843841406367/' ),

(NULL, '57', 'The Lock Escape Games', 'assets/images/protasi/57.jpg', 'Γαρυττού 174, Αγ. Παρασκευή 153 43', '21 5535 3413', '<p>Το the lock άρτια σχεδιασμένο με εξαιρετικό customer service και δυο διαφορετικά καταπληκτικα δωμάτια. </br>Το magic chamber είναι το καλύτερο δωμάτιο που έχει παίξει η ομάδα μας και το πιο καλοσχεδιασμένο. Η evil nanny επίσης εξαιρετικό δωμάτιο. Η αίσθηση των δυο δωματίων που σου αφήνει είναι γιατί να υπάρχουν μόνο δυο; Ανυπομονούμε για το επόμενο.. Μπράβο παιδιά συγχαρητήρια!!!</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3579.1941701684536!2d23.829549275847082!3d38.024158380558234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xffe5d6b037681b7a!2sThe+Lock+Escape+Games!5e0!3m2!1sel!2sgr!4v1497803020620" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'http://www.thelock.gr/' ),

(NULL, '58', 'Kartland', 'assets/images/protasi/58.jpg', 'Λεωφ. Ανθούσας 8, Παλλήνη 153 51', '21 0666 8323', '<p>Εξαιρετική εξυπηρέτηση, ιδιαίτερα φιλικό προσωπικό, καλές υπηρεσίες, τήρηση σε θέματα ασφάλειας για τους μικρούς και μεγάλους φίλους του σπορ με συνοδεία σε άτομα που κάνουνε 1η φορά και πολλά άτομα μέσα στην πίστα για γρήγορη βοήθεια σε αγωνιζόμενους. </br>Πολύ ωραίο περιβάλλον!!</p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3143.7203488557934!2d23.869003481524764!3d38.0069828802837!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbfdf4a3569d8e8d9!2sKartland!5e0!3m2!1sel!2sgr!4v1497803829539" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/Kartland.gr/' ),

(NULL, '59', 'Salto Mortale bar', 'assets/images/protasi/59.jpg', 'Πίνδου 7, Πεύκη 151 21', '21 0805 6490', '<p>Άνετο και χαλαρό καφέ-μπαρ. Vintage 70 διακόσμησή</br> Εξαιρετικός καφές και ποικιλία κοκτέιλ και ποτών.Πολύ συχνά και με ενδιαφέρουσες μουσικές να τα συνοδεύουν. Εκτός από ολοήμερο συχνά γίνεται και ολονύχτιο....  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3141.2441800478064!2d23.797972928465832!3d38.06469410980271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x39740ed4e837870c!2sSalto+Mortale+bar!5e0!3m2!1sel!2sgr!4v1497614300473" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/saltomortalebar/' ),

(NULL, '60', 'Salto Mortale bar', 'assets/images/protasi/60.jpg', 'Πίνδου 7, Πεύκη 151 21', '21 0805 6490', '<p>Άνετο και χαλαρό καφέ-μπαρ. Vintage 70 διακόσμησή</br> Εξαιρετικός καφές και ποικιλία κοκτέιλ και ποτών.Πολύ συχνά και με ενδιαφέρουσες μουσικές να τα συνοδεύουν. Εκτός από ολοήμερο συχνά γίνεται και ολονύχτιο....  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3141.2441800478064!2d23.797972928465832!3d38.06469410980271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x39740ed4e837870c!2sSalto+Mortale+bar!5e0!3m2!1sel!2sgr!4v1497614300473" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/saltomortalebar/' ),

(NULL, '61', 'Salto Mortale bar', 'assets/images/protasi/61.jpg', 'Πίνδου 7, Πεύκη 151 21', '21 0805 6490', '<p>Άνετο και χαλαρό καφέ-μπαρ. Vintage 70 διακόσμησή</br> Εξαιρετικός καφές και ποικιλία κοκτέιλ και ποτών.Πολύ συχνά και με ενδιαφέρουσες μουσικές να τα συνοδεύουν. Εκτός από ολοήμερο συχνά γίνεται και ολονύχτιο....  </p>', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3141.2441800478064!2d23.797972928465832!3d38.06469410980271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x39740ed4e837870c!2sSalto+Mortale+bar!5e0!3m2!1sel!2sgr!4v1497614300473" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>',  'https://www.facebook.com/saltomortalebar/' );




CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



SELECT firma, bio, phone, address, xartis, photo, url, stathmos.onoma FROM protasi INNER JOIN stathmos ON protasi.id_stathmos = stathmos.id WHERE id_stathmos=9