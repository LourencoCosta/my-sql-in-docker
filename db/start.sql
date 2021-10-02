USE Backoffice;

create table team_leader(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50)
);

create table teams(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50),
    team_leader_id int,
    FOREIGN KEY (team_leader_id) REFERENCES team_leader(id)
);

create table user (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50),
    team_id int,
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

insert into team_leader (name) values ("higor.juliano");
insert into team_leader (name) values ("andrei.xiosan");
insert into team_leader (name) values ("alex.mand");

insert into teams (name,  team_leader_id) values ("ANALISE", 1);
insert into teams (name,  team_leader_id) values ("OPERACAO", 2);
insert into teams (name,  team_leader_id) values ("ARQUITETURA", 3);

insert into user (name,  team_id) values ("Higor.Juliano", 1);
insert into user (name,  team_id) values ("alexo.barreiro", 1);
insert into user (name,  team_id) values ("andrew.slatan", 1);
insert into user (name,  team_id) values ("diones.volts", 1);
insert into user (name,  team_id) values ("guibrion.guinhones", 1);
insert into user (name,  team_id) values ("jessie.castro", 1);
insert into user (name,  team_id) values ("katrina.contara", 1);
insert into user (name,  team_id) values ("luran.henque", 1);
insert into user (name,  team_id) values ("nyara.cantinho", 1);
insert into user (name,  team_id) values ("nilson.sostes", 1);
insert into user (name,  team_id) values ("ribsun.forria", 1);
insert into user (name,  team_id) values ("silvio.aruato", 1);
insert into user (name,  team_id) values ("licas.lemals", 1);
insert into user (name,  team_id) values ("viccessa.batroz", 1);
insert into user (name,  team_id) values ("ralph.liorenzo", 1);

insert into user (name,  team_id) values ("andrei.Xiosan", 2);
insert into user (name,  team_id) values ("donis.wilson", 2);
insert into user (name,  team_id) values ("digles.grond", 2);
insert into user (name,  team_id) values ("jessie.cust", 2);
insert into user (name,  team_id) values ("ralph.sieran", 2);
insert into user (name,  team_id) values ("vinci.carin", 2);
insert into user (name,  team_id) values ("wilson.cardoso", 2);
insert into user (name,  team_id) values ("alon.Xiosan", 2);

insert into user (name,  team_id) values ("alex.mand", 3);
insert into user (name,  team_id) values ("casiila.pasino", 3);
insert into user (name,  team_id) values ("aelio.pisses", 3);
insert into user (name,  team_id) values ("andrew.doe", 3);
insert into user (name,  team_id) values ("licas.saros", 3);
insert into user (name,  team_id) values ("moab.silas", 3);

commit;
