select c.nome, avg(n.nota) as media from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id
group by c.nome;

select c.nome, count(a.id) as quantidade from curso c
    join matricula m on m.curso_id = c.id
    join aluno a on a.id = m.aluno_id
group by c.nome;

select c.nome, avg(n.nota) as media from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id
    join aluno a on a.id = r.aluno_id
where a.nome like '%Santos%' or a.nome like '%Silva%'
group by c.nome;

select e.pergunta, count(r.id) as quantidade from exercicio e 
    join resposta r on r.exercicio_id = e.id
group by e.pergunta;

select e.pergunta, count(r.id) as quantidade from exercicio e 
    join resposta r on r.exercicio_id = e.id 
group by e.pergunta
order by count(r.id) desc;

select a.nome, c.nome, avg(n.nota) as media from nota n
    join resposta r on r.id = n.resposta_id
    join exercicio e on e.id = r.exercicio_id
    join secao s on s.id = e.secao_id
    join curso c on c.id = s.curso_id
    join aluno a on a.id = r.aluno_id
group by a.nome, c.nome;