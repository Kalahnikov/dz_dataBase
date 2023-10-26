create table public.questions ( 
id serial4 not null,
question varchar(1000) not null,
constraint questions_pk primary key(id)
);

create table public.answers(
id serial4 not null primary key,
answer varchar(1000) not null,
questions_id int4 not null,
right_answer boolean not null,
constraint answers_fk foreign key (questions_id) references public.questions (id)
);



