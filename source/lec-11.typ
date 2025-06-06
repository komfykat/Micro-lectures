#import "micro-template.typ": *
#let title = "Лекция 11"
#let author = "Морфий"
#let course = "Микроэкономика 1"
#let group = "Группа БЭАД242"
#show: footer_header.with(title, author, course, group)
#show: title_page.with(title, author, course, group)

#show: template
#let const = math.italic("const")
#let comp = math.op("comp")
#let SE = math.op("SE")
#let IE = math.op("IE")

= Лекция 11. Оценка благосостояния.
Будем считать, что предпочтения потребителя монотонны и представимы непрерывной функцией полезности, $m > 0$. Предположим, меняется цена первого блага $p^0_1 -> p'_1$. Остальные цены и доход неизменны. Как изменится благосостояние потребителя? \
Пусть $p^0 = (p^0_1, p_(-1))$, где $p_(-1) = (p_2, dots, p_N)$ --- все остальные цены, они незименны. Тогда $p' = (p'_1, p_(-1))$ --- все остальные цены. \
Пусть $p'_1 < p_1$, $u' = cal(V)(p', m)$, $u^0 = cal(V)(p^0, m)$. По свойству косвенной функции полезности $u' >= u^0$. Если $x_1 (p, m) > 0$, то неравенство становится строгим: $u' > u^0$ (из монотонности предпочтений). \
Почему бы не взять $u' - u^0$ как меру оценки изменения благосостояния? \
1) функция полезности не единственна, \
2) нет сопоставимости функций полезности разных потребителей. \
Поэтому хочется получить денежную оценку изменения благосостояния. \
Рассмотрим функцию $e(overline(p), cal(V)(p, m))$, где $overline(p) >> 0$ --- вектор цен. Эта функция соответствует уровню доходу, который требуется потребителю, чтобы достичь полезности $cal(V)(p, m)$ при $overline(p)$. \
Функция расходов возрастает по полезности. Тогда в качестве меры изменения благосостояния можем рассматривать разность $e(overline(p), u') - e(overline(p), u^0)$. \
Как выбрать $overline(p)$? \
- если $overline(p) = p'$, то получим _компенсирующую вариацию_ (CV),
- если $overline(p) = p^0$, то получим _эквивалентную вариацию_ (EV).
=== Компенсирующая вариация (CV).
#def[
  $
    "CV"(p^0, p', m) = e(p', u') - e(p', u^0)
  $. \
  $e(p', u') = e(p', cal(V)(p', m)) = m$. Тогда
  $
    "CV"(p^0, p', m) = m - e(p', u^0).
  $
  (цены новые, полезность старая) \
  Тогда CV --- такое максимальное по модулю изменение дохода, которое при новых ценах позволяет сохранить исходный уровень полезности (то есть, компенсировать изменение цены). При повышении цены $"CV" > 0$, при снижении цены $"CV" < 0$.
]
#align(center)[
  #image("pictures/11.1.jpg")
  (очень похоже на декомпозицию по Хиксу)
]
Альтернативное определение $cal(V)(p', m - "CV") = u^0$.
=== Эквивалентная вариация (EV).
#def[
  $
    "EV"(p^0, p', m) = e(p^0, u') - e(p^0, u^0) = e(p^0, u') - m
  $
  - цены старые, полезность новая,
  - EV --- изменение дохода, эквивалентное изменению цены, то есть позволяющее при исходных ценах достичь нового уровня полезности.
]
#align(center)[
  #image("pictures/11.2.jpg")
]
Альтернативное определение EV: $cal(V)(p^0, m + "EV") = u'$.
#pagebreak()

=== EV и CV в терминах хиксианского спроса.
1)
$
  "CV"(p^0, p', m) = e(p', u') - e(p', u^0) = m - e(p', u^0) = e(p^0, u^0) - e(p', u^0) = \ =
  integral_(p'_1)^(p^0_1) (partial e(p, u^0)) / (partial p_1) dif p_1 = integral_(p'_1)^(p^0_1) x^h_1 (p, u^0) dif p_1
$
то есть, CV численно равна площади под кривой хиксианского проса при $u^0$ при изменении цены 1-го блага с $p'_1$ до $p^0_1$. \
2)
$
  "EV"(p^0, p', m) = e(p^0, u') - e(p^0, u^0) = e(p^0, u') - e(p', u') = integral_(p'_1)^(p^0_1) x^h_1 (p, u') dif p_1
$
то есть, EV численно равна площади под кривой хиксианского спроса при $u'$ при изменении цены первого блага с $p'_1$ до $p^0_1$. \
3) Как нарисовать $x_1 (p, m), x^h_1 (p, u^0), x^h_1 (p, u')$ на одном рисунке в пространстве (объём, цена)?
- как соотносятся наклоны кривых маршаллианского и хиксианского спроса?
$
  (partial x^h_1) / (partial p_1) = (partial x_1) / (partial p_1) + x_1 (partial x_1) / (partial m)
$
- если благо нормальное и $x_1 > 0$, то выполняется неравенство:
$
  0 > (partial x^h_1) / (partial p_1) > (partial x_1) / (partial p_1)
$
Значит, хиксианский спрос идёт круче (если рисовать в осях, где на оси $O y$ цена, а на $O x$ объём потребления первого блага).
- Если инфериорное, то
$
  (partial x^h_1) / (partial p_1) < (partial x_1) / (partial p_1)
$
- Если нейтральное, то
$
  (partial x^h_1) / (partial p_1) = (partial x_1) / (partial p_1)
$
- Как соотносятся маршаллианский и хиксианский спрос $p^0_1$ и $p'_1$? Из двойственности:
$
  x_1(p, m) = x^h_1 (p, cal(V)(p, m))
$
При $p^0$:
$
  x_1 (p^0, m) = x^h_1 (p^0, u^0)
$
При $p'$:
$
  x_1 (p', m) = x^h_1(p', u')
$
- Как соотносятся $x^h_1 (p, u^0)$ и $x^h_1 (p, u')$? \
Пусть $p'_1 < p^0_1 => u' > u^0$ (при $x_1 > 0$). Тогда $e(p, u') > e(p, u^0)$ по свойству функции расходов. Тогда:
- если благо нормальное, то
$
  x_1 (p, e(p, u')) > x_1 (p, e(p, u^0))
$
Из двойственности:
$
  x^h_1 (p, u') > x^h_1 (p, u^0)
$
- если благо инфериорное, то
$
  x^h_1 (p, u') < x^h_1 (p, u^0)
$
- если благо нейтральное, то
$
  x^h_1 (p, u') = x^h_1 (p, u^0)
$
#align(center)[
  #image("pictures/11.3.jpg")
]
\

#statement(name: "Соотношение CV и EV при снижении цены")[
  Пусть предпочтения монотонны, строго выпуклы и представимы непрерывной функцией полезности. Пусть объём потребления блага положителен и $p'_1 < p^0_1$ (остальные ценны неизменны и равны $p_(-1)$) и доход $m$ фиксирован. Тогда \
  1) если первое благо при указанных ценах и доходе нормальное, то $"EV"(p^0, p', m) > "CV"(p^0, p', m)$, \
  2) если первое благо при указанных ценах и доходе инфериорное, то $"EV"(p^0, p', m) < "CV"(p^0, p', m)$, \
  3) если первое благо при указанных ценах и доходе нейтрально к доходу, то $"EV"(p^0, p', m) = "CV"(p^0, p', m)$.
]
=== Доказательство.
$p'_1 < p^0_1 =>$ в силу невозрастания косвенной функции полезности по ценам и с учётом того, что объём потребления блага положителен, $cal(V)(p', m) > cal(V)(p^0, m) <=> u' > u^0$. В силу возрастания функции расходов по полезности $e(p, u') > e(p, u^0)$.
- если благо нормальное, то рост дохода $=>$ рост маршаллианского спроса. То есть,
$
  x_1 (p, e(p, u')) > x_1 (p, e(p, u^0))
$
В силу двойственности
$
  x^h_1 (p, u') > x^h_1 (p, u^0)
$
Тогда
$
  "EV"(p^0, p', m) = integral_(p'_1)^(p^0_1) x^h_1 (p, u') dif p_1 > integral_(p'_1)^(p^0_1) x^h_1 (p, u^0) dif p_1 = "CV"(p^0, p', m)
$
- если благо инфериорное, то всё точно так же, но ровно наоборот:
То есть,
$
  x_1 (p, e(p, u')) < x_1 (p, e(p, u^0))
$
В силу двойственности
$
  x^h_1 (p, u') < x^h_1 (p, u^0)
$
Тогда
$
  "EV"(p^0, p', m) = integral_(p'_1)^(p^0_1) x^h_1 (p, u') dif p_1 < integral_(p'_1)^(p^0_1) x^h_1 (p, u^0) dif p_1 = "CV"(p^0, p', m)
$
- если благо нейтральное к доходу:
$
  x_1 (p, e(p, u')) = x_1 (p, e(p, u^0))
$
В силу двойственности
$
  x^h_1 (p, u') = x^h_1 (p, u^0) = x_1 (p, m) #h(0.2cm) ("все три кривые совпадают")
$
Тогда
$
  "EV"(p^0, p', m) = integral_(p'_1)^(p^0_1) x^h_1 (p, u') dif p_1 = integral_(p'_1)^(p^0_1) x^h_1 (p, u^0) dif p_1 = "CV"(p^0, p', m) = Delta "CS"
$
#qed

== Модель с натуральным доходом.
Пусть у потребителя нет фиксированного дохода, но есть первоначальный запас благ (endowment), $w = (w_1, dots, w_n) != arrow(0)$, $w_i >= 0$ --- запас блага $i$, $p >> 0$. Тогда доход потребителя равен стоимости первоначального запаса: $m = p dot w$. \
UMP:
$
  cases(
    display(u(x) -> max_(x>=0)),
    p x <= p w
  ) => "маршаллианский спрос" x(p, p w)
$
=== Новая терминология
- если в решении задачи потребителя $x_i > w_i$, то говорят, что потребитель --- чистый покупатель $i$-го блага, \
- если в решении задача потребителя $x_i < w_i$, то говорят, что потребитель --- чистый продавец $i$-го блага,
=== Бюджетная линия: $N = 2$
Уравнение бюджетной линии: $p_1 x_1 + p_2 x_2 = p_1 w_1 + p_2 w_2$
- отрицательный наклон $-(p_1) / (p_2)$,
- $w = (w_1, w_2)$ лежит на бюджетной линии при любых ценах,
- изменение цен --- поворот бюджетной линии вокруг $w$,
- изменение первоначального запаса $w -> w'$ --- параллельный сдвиг:
#h(1cm) если $p w' > p w$, сдвиг вовне (вверх), \
#h(1cm) если $p w' < p w$, сдвиг внутрь (вниз), \
#h(1cm) если $p w' = p w$, бюджетная линия не изменяется.
#align(center)[
  #image("pictures/11.4.jpg", width: 70%)
]
Уравнение бюджетной линии:
$
  p_1 (x_1 - w_1) + p_2 (x_2 - w_2) = 0
$
То есть, если предпочтения монотонны, то $(x_1 - w_1)(x_2 - w_2) <= 0$, то есть потребитель не может быть одновременно чистым покупателем (продавцом) и первого, и второго блага.

=== Уравнение Слуцкого в случае натурального дохода в абсолютных изменениях.
$N = 2$, пусть $p_2$ не изменяется, меняется $p'_1 > p^0_1$.
Такое изменение цены, вообще говоря, влечёт изменение объёма маршаллианского спроса на первое благо в силу трёх эффектов:
- эффект замещения,
- эффект фиксированного дохода,
- эффект первоначального запаса.
Объединим два последних эффекта в эффект богатства. Выделяем два эффекта:
- SE (эффект замещения) --- как и при фиксированном доходе --- изменение объёма потребления блага в силу изменения пропорции замещения благ при неизменной покупательной способности дохода.
- WE (wealth effect --- эффект богатства) --- совокупный эффект, отражающий изменение объёма спроса на благо как в силу изменения покупательной способности блага (старый эффект дохода), так и в силу изменения самой величины дохода.
Уравнение Слуцкого в абсолютных приращениях:
$
  Delta x_1 = Delta x^"SE"_1 + Delta x^"WE"_1
$
#align(center)[

]
Декомпозиция по Слуцкому: \
1) корректировка дохода такая, что при $p'$ в точности доступен $x^0: m^"comp" = p' dot x^0$. На компенсированной бюджетной линии определяем выбор: $x^("comp") = x (p', m^comp)$.
$
  Delta x^SE_1 = x^comp_1 - x^0_1 - "противонаправлен изменению цены"
$
$
  Delta x^"WE"_1 = x'_1 - x^comp_1
$
#align(center)[
  #image("pictures/11.5.jpg")
]
Зависимость направлений эффектов от благ:
#align(center)[
  #image("pictures/11.6.png")
]
