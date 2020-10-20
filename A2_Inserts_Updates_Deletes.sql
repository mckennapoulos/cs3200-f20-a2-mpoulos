-- inserts -- 

ALTER TABLE `A2`.`websites` 
CHANGE COLUMN `updated` `updated` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP ;

UPDATE `A2`.`websites` SET `description` = 'an online social media and social networking service' WHERE (`id` = '123');
UPDATE `A2`.`websites` SET `description` = 'an American basic cable and satellite television news channel' WHERE (`id` = '456');
UPDATE `A2`.`websites` SET `description` = 'an American media website that publishes reviews, news, articles, blogs, podcasts and videos on technology and consumer electronics' WHERE (`id` = '567');

DELETE FROM `A2`.`website_roles` WHERE (`id` = '123');
DELETE FROM `A2`.`website_roles` WHERE (`id` = '234');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '123', '12');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '123', '23');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '123', '34');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '234', '23');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '234', '34');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '234', '12');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '345', '34');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '345', '12');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '345', '23');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '456', '12');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '456', '23');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '456', '34');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '567', '23');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '567', '34');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '567', '12');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '678', '34');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '678', '12');
INSERT INTO `A2`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '678', '23');


INSERT INTO `A2`.`pages` (`id`, `title`, `description`, `views`, `website_id`) VALUES ('234', 'About', 'Website description', '234545', '678');
INSERT INTO `A2`.`pages` (`id`, `title`, `description`, `views`, `website_id`) VALUES ('345', 'Contact', 'Addresses, phones, and contact info', '345656', '345');
INSERT INTO `A2`.`pages` (`id`, `title`, `description`, `views`, `website_id`) VALUES ('456', 'Preferences', 'Where users can configure their preferences', '456776', '456');
INSERT INTO `A2`.`pages` (`id`, `title`, `description`, `views`, `website_id`) VALUES ('567', 'Profile', 'Users can configure their personal info', '567878', '567');

DELETE FROM `A2`.`widgets` WHERE (`id` = '123');
DELETE FROM `A2`.`widgets` WHERE (`id` = '234');
INSERT INTO `A2`.`widgets` (`dType`, `name`, `text`, `order`, `page_id`) VALUES ('heading', 'heading123', 'Welcom', '0', '123');
INSERT INTO `A2`.`widgets` (`dType`, `name`, `text`, `order`, `page_id`) VALUES ('html', 'post234', '<p>Lorem</p>', '0', '234');
INSERT INTO `A2`.`widgets` (`dType`, `name`, `text`, `order`, `page_id`) VALUES ('heading', 'head345', 'Hi', '1', '345');
INSERT INTO `A2`.`widgets` (`dType`, `name`, `text`, `order`, `page_id`) VALUES ('html', 'intro456', '<h1>HI</h1>', '2', '345');
INSERT INTO `A2`.`widgets` (`dType`, `name`, `width`, `height`, `order`, `url`, `page_id`) VALUES ('image', 'image345', '50', '100', '3', '/img/567.png', '345');
INSERT INTO `A2`.`widgets` (`dType`, `name`, `width`, `height`, `order`, `url`, `page_id`) VALUES ('youtube', 'video456', '400', '300', '0', 'https://youtu.be/h67VX51QXiQ', '456');


INSERT INTO `A2`.`phones` (`phone`, `person_id`) VALUES ('123-234-3456', '12');
INSERT INTO `A2`.`phones` (`phone`, `person_id`) VALUES ('234-345-4566', '12');
INSERT INTO `A2`.`phones` (`phone`, `person_id`) VALUES ('345-456-5677', '23');
INSERT INTO `A2`.`phones` (`phone`, `person_id`) VALUES ('321-432-5435', '34');
INSERT INTO `A2`.`phones` (`phone`, `person_id`) VALUES ('432-432-5433', '34');
INSERT INTO `A2`.`phones` (`phone`, `person_id`) VALUES ('543-543-6544', '34');

INSERT INTO `A2`.`adresses` (`street1`, `city`, `zip`, `person_id`) VALUES ('123 Adam St.', 'Alton', '01234', '12');
INSERT INTO `A2`.`adresses` (`street1`, `city`, `zip`, `person_id`) VALUES ('234 Birch St.', 'Boston', '02345', '12');
INSERT INTO `A2`.`adresses` (`street1`, `city`, `zip`, `person_id`) VALUES ('345 Charles St.', 'Chelms', '03455', '23');
INSERT INTO `A2`.`adresses` (`street1`, `city`, `zip`, `person_id`) VALUES ('456 Down St.', 'Dalton', '04566', '23');
INSERT INTO `A2`.`adresses` (`street1`, `city`, `zip`, `person_id`) VALUES ('543 East St.', 'Everett', '01112', '23');
INSERT INTO `A2`.`adresses` (`street1`, `city`, `zip`) VALUES ('654 Frank St.', 'Foulton', '04322');
UPDATE `A2`.`adresses` SET `person_id` = '34' WHERE (`id` = '6');

INSERT INTO `A2`.`page_roles` (`role`, `developer_id`, `page_id`) VALUES ('writer', '34', '123');
INSERT INTO `A2`.`page_roles` (`role`, `developer_id`, `page_id`) VALUES ('writer', '12', '234');
INSERT INTO `A2`.`page_roles` (`role`, `developer_id`, `page_id`) VALUES ('writer', '23', '345');
INSERT INTO `A2`.`page_roles` (`role`, `developer_id`, `page_id`) VALUES ('writer', '34', '456');
INSERT INTO `A2`.`page_roles` (`role`, `developer_id`, `page_id`) VALUES ('writer', '12', '567');


-- Updates -- 

UPDATE `A2`.`phones` SET `primary` = '1' WHERE (`id` = '4');
UPDATE `A2`.`phones` SET `primary` = '1' WHERE (`id` = '3');
UPDATE `A2`.`phones` SET `primary` = '1' WHERE (`id` = '1');

UPDATE `A2`.`adresses` SET `primary` = '1' WHERE (`id` = '1');
UPDATE `A2`.`adresses` SET `primary` = '1' WHERE (`id` = '3');
UPDATE `A2`.`adresses` SET `primary` = '1' WHERE (`id` = '6');

UPDATE `A2`.`phones` SET `phone` = '333-444-5555' WHERE (`id` = '4');

UPDATE `A2`.`widgets` SET `order` = '3' WHERE (`id` = '681');
UPDATE `A2`.`widgets` SET `order` = '2' WHERE (`id` = '683');
UPDATE `A2`.`widgets` SET `order` = '1' WHERE (`id` = '682');

UPDATE `A2`.`pages` SET `title` = 'CNET - Home' WHERE (`id` = '123');
UPDATE `A2`.`pages` SET `title` = 'CNET - Preferences' WHERE (`id` = '456');

UPDATE `A2`.`page_roles` SET `developer_id` = '23' WHERE (`id` = '334');
UPDATE `A2`.`page_roles` SET `developer_id` = '34' WHERE (`id` = '333');

UPDATE `A2`.`pages` SET `title` = 'CNET - Profile' WHERE (`id` = '567');
UPDATE `A2`.`pages` SET `title` = ' Preferences' WHERE (`id` = '456');


-- Deletes -- 

DELETE FROM `A2`.`adresses` WHERE (`id` = '1');

DELETE FROM `A2`.`widgets` WHERE (`id` = '681');

DELETE FROM `A2`.`pages` WHERE (`id` = '678');

DELETE FROM `A2`.`page_roles` WHERE (`id` = '325');
DELETE FROM `A2`.`page_roles` WHERE (`id` = '326');
DELETE FROM `A2`.`page_roles` WHERE (`id` = '333');
DELETE FROM `A2`.`page_roles` WHERE (`id` = '334');
DELETE FROM `A2`.`page_roles` WHERE (`id` = '344');
DELETE FROM `A2`.`page_roles` WHERE (`id` = '348');

DELETE FROM `A2`.`widgets` WHERE (`id` = '679');

DELETE FROM `A2`.`pages` WHERE (`id` = '123');
DELETE FROM `A2`.`pages` WHERE (`id` = '567');

DELETE FROM `A2`.`website_roles` WHERE (`id` = '247');
DELETE FROM `A2`.`website_roles` WHERE (`id` = '248');
DELETE FROM `A2`.`website_roles` WHERE (`id` = '249');

DELETE FROM `A2`.`websites` WHERE (`id` = '567');
