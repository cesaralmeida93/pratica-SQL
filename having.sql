select a.nome, c.nome, avg(n.nota) as media from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id
    join aluno a on a.id = r.aluno_id
group by a.nome, c.nome
having avg(n.nota) < 5;

select a.nome, c.nome, avg(n.nota) from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id
    join aluno a on a.id = r.aluno_id
group by a.nome, c.nome
having avg(n.nota) >= 5;

select count(a.id) as quantidade, c.nome from curso c
    join matricula m on m.curso_id = c.id
    join aluno a on m.aluno_id = a.id
group by c.nome
having count(a.id) < 3;

select c.nome, count(m.id) as quantidade from curso c 
    join matricula m on c.id = m.curso_id
group by c.nome
having count(m.id) > 1;

select c.nome, count(s.id) as quantidade from curso c 
    join secao s on c.id = s.curso_id
group by c.nome
having count(s.id) > 3;