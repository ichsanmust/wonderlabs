CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO `person` VALUES ('1', 'Ajat Sudrajat', null, 'L');
INSERT INTO `person` VALUES ('2', 'Yuliantini', null, 'L');
INSERT INTO `person` VALUES ('3', 'Iman', null, 'L');
INSERT INTO `person` VALUES ('4', 'Rosyanti', null, 'P');
INSERT INTO `person` VALUES ('5', 'Irna', null, 'P');


CREATE TABLE `relational` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `person_relational_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `family_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO `relational` VALUES ('1', '1', '2', '3', '1');
INSERT INTO `relational` VALUES ('8', '1', '3', '5', '1');
INSERT INTO `relational` VALUES ('10', '2', '3', '5', '1');
INSERT INTO `relational` VALUES ('11', '3', '2', '2', '1');
INSERT INTO `relational` VALUES ('7', '2', '1', '4', '1');
INSERT INTO `relational` VALUES ('9', '3', '1', '1', '1');
INSERT INTO `relational` VALUES ('12', '3', '4', '3', '3');
INSERT INTO `relational` VALUES ('13', '4', '3', '4', '3');
INSERT INTO `relational` VALUES ('17', '3', '5', '5', '3');
INSERT INTO `relational` VALUES ('18', '5', '3', '1', '3');
INSERT INTO `relational` VALUES ('19', '4', '5', '5', '3');
INSERT INTO `relational` VALUES ('20', '5', '4', '1', '3');


CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `status` VALUES ('1', 'Ayah');
INSERT INTO `status` VALUES ('2', 'Ibu');
INSERT INTO `status` VALUES ('3', 'Istri');
INSERT INTO `status` VALUES ('4', 'Suami');
INSERT INTO `status` VALUES ('5', 'Anak');
