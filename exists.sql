select a.nome from aluno a where not exists (select m.id from matricula m where m.aluno_id = a.id);
select a.nome from aluno a where not exists (
    select m.id from matricula m where m.aluno_id = a.id and 
    m.data > (select sysdate - interval '1' year from dual));
select a.nome from aluno a where (
    select count(m.id) from matricula m where m.aluno_id = a.id and 
    m.data > (select sysdate - interval '1' year from dual)) = 0;