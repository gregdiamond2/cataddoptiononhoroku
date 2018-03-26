create table cat (
	id serial,
	animal_name VARCHAR(50),
	animal_gender BOOLEAN,
	animal_image VARCHAR(250),
	
	constraint pk_cat primary key (id)
);


insert into cat (animal_name, animal_gender, animal_image) values ('Black cat', true, 'https://img.huffingtonpost.com/asset/582cb2601a00002400cc8426.jpeg?cache=wltod2kvw5&ops=scalefit_720_noupscale');
insert into cat (animal_name, animal_gender, animal_image) values ('British Shorthair', true, 'http://www.tica.org/images/breeds/2017/bs_k.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Siamese cat', true, 'http://petshappyhour.com/wp-content/uploads/2018/01/siamese3.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Persian cat', true, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-FADZxgoI6q1eNedAPd1c94R9PqOLt_aS8PuVPcJpgBH71LJE');
insert into cat (animal_name, animal_gender, animal_image) values ('Ragdoll', true, 'http://cdn1-www.cattime.com/assets/uploads/gallery/ragdoll/ragdoll-cats-kittens-1.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Maine Coon', true, 'http://mainecoonadmirer.com/wp-content/uploads/2017/01/Maine-coon-aggression-.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Bengal cat', true, 'https://i.ytimg.com/vi/WtIW2sXOIT0/maxresdefault.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Sphynx cat', true, 'https://d32xvgr96w2oxp.cloudfront.net/2017/10/cat-tattoo-shynx2-10-17.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Scottish Fold', true, 'https://i.pinimg.com/originals/95/41/bd/9541bd06290b64799c2455c9597541e0.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Norwegian Forest cat', true, 'http://www.animalfacts.us/wp-content/uploads/2017/08/3e62110af10b86eb36df6acf7aefddb3.jpg');

insert into cat (animal_name, animal_gender, animal_image) values ('Black cat', false, 'https://img.huffingtonpost.com/asset/582cb2601a00002400cc8426.jpeg?cache=wltod2kvw5&ops=scalefit_720_noupscale');
insert into cat (animal_name, animal_gender, animal_image) values ('British Shorthair', false, 'http://www.tica.org/images/breeds/2017/bs_k.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Siamese cat', false, 'http://petshappyhour.com/wp-content/uploads/2018/01/siamese3.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Persian cat', false, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-FADZxgoI6q1eNedAPd1c94R9PqOLt_aS8PuVPcJpgBH71LJE');
insert into cat (animal_name, animal_gender, animal_image) values ('Ragdoll', false, 'http://cdn1-www.cattime.com/assets/uploads/gallery/ragdoll/ragdoll-cats-kittens-1.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Maine Coon', false, 'http://mainecoonadmirer.com/wp-content/uploads/2017/01/Maine-coon-aggression-.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Bengal cat', false, 'https://i.ytimg.com/vi/WtIW2sXOIT0/maxresdefault.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Sphynx cat', false, 'https://d32xvgr96w2oxp.cloudfront.net/2017/10/cat-tattoo-shynx2-10-17.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Scottish Fold', false, 'https://i.pinimg.com/originals/95/41/bd/9541bd06290b64799c2455c9597541e0.jpg');
insert into cat (animal_name, animal_gender, animal_image) values ('Norwegian Forest cat', false, 'http://www.animalfacts.us/wp-content/uploads/2017/08/3e62110af10b86eb36df6acf7aefddb3.jpg');