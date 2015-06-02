Removes duplicate Calendar entries uses primary client\_id only


> $sql =  "SELECT DISTINCT `g2`.`uri`,`g2`.`synced`,`g2`.`del`,`g2`.`act_group`," .
> > "`g2`.`email`,`g2`.`user_id`, `g2`.`organizer`,`g2`.`act_id`,`a`.`subject`, " .
> > "`a`.`location_long`,`a`.`summary`, `a`.`act_date`,`a`.`act_time`,`a`.`act_end_time`, " .
> > "`co`.`first_name`,`co`.`last_name`,`co`.`address`,`co`.`city`,`co`.state," .
> > "`co`.`zip`,`co`.`area_code`,`co`.`phone`,`co`.`notes`, " .
> > "`ca`.`number` as `case_number`, `ca`.`case_id`, `mp`.`label` " .
> > "FROM `google_sync` as `g` " .
> > "INNER JOIN `google_sync` as `g2` ON `g`.`act_group`=`g2`.`act_group`  " .
> > "LEFT OUTER JOIN `activities` as `a` ON `g`.`act_id`=`a`.`act_id`  " .
> > "LEFT OUTER JOIN `cases` as `ca` ON `a`.`case_id`=`ca`.`case_id` " .
> > "LEFT OUTER JOIN `contacts` as `co` ON `ca`.`client_id`=`co`.`contact_id` " .
> > "LEFT OUTER JOIN `menu_problem` as `mp` ON `ca`.`problem`=`mp`.`value` " .
> > "WHERE `g`.`synced`=0";