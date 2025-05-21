#import "micro-template.typ": *
#let title = "Лекция 9"
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
= Лекция 9. Свойства функции расходов (продолжение).
== Лемма Шепарда.
#statement(name: "Лемма Шепарда")[
  Пусть предпочтения монотонны и строго выпуклы и представимы непрерывной функцией полезности. Пусть $x^h (p, u) > 0$ и функция расходов $e(p, u)$ дифференцируема. Тогда
  $
    x^h_i (p, u) = (partial e(p, u)) / (partial p_i)
  $
]
=== Доказательство леммы Шепарда.
1)
$
  (partial e(p, u)) / (partial p_i) = partial(p dot x^h (p, u)) / (partial p_i) = (p_1 x^h_1 (p, u) + dots + p_i x^h_i (p, u) + dots + p_N x^h_i(p, u)) / (partial p_i) = sum_(j=1)^N (p_j x^h_j (p, u)) / (partial p_i) = \ =
  x^h_i (p, u) + p_i (partial x^h_i (p, u)) / (partial p_i) + sum_(j = 1, j != i)^N p_j partial (x^h_j (p, u)) / (partial p_i) = x^h_i (p, u) +sum_(j = 1)^N p_j (partial (x^h_j (p, u))) / (partial p_i) #h(0.2cm) (*)
$
2) из FOC для внутреннего решения:
$
  p_j = lambda (partial u (x^h (p, u))) / (partial x_j)
$
Подставим в $(*)$:
$
  (partial e(p, u)) / (partial p_i) = x^h_i (p, u) + lambda sum_(j = 1)^N (partial u (x^h (p, u))) / (partial x_j) dot (partial (x^h_j (p, u))) / (partial p_i) #h(0.2cm) (**)
$
3) В решении EMP ограничение выполняется как равенство:
$
  u(x^h (p, u)) = tilde(u)
$
Возьмём производную от обеих частей по $p_i$:
$
  u(x^h (p, u)) = u(x^h_1 (p, u), x^h_2 (p, u), dots, x^h_N (p, u)) => \ =>
  (partial u(x^h (p, u))) / (partial p_i) = sum_(j=1)^N (partial u(x^h (p, u))) / (partial x_j) dot (partial x^h_j (p, u)) / (partial p_i) = 0
$
Подставляя в $(**)$, получаем:
$
  (partial e(p, u)) / (partial p_i) = x^h_i (p, u) + lambda dot 0 = x^h_i (p, u)
$
#qed

#pagebreak()
== Графическое иллюстрации леммы Шепарда и вогнутости $e(p, u)$
Пусть при ценах $overline(p) = (overline(p)_1, dots, overline(p)_N)$ решением EMP является $x^h (overline(p), u)> 0 => e(overline(p), u) = overline(p) dot x^h (overline(p), u)$. \
Пусть все цены, кроме $p_i$, зафиксированы на уровне $p_j = overline(p)_j$, а $p_i$ меняется. \
Предположим, что при ценах $(overline(p)_1, overline(p)_(i-1), p_i, overline(p)_(i+1), dots, overline(p)_N)$ потребитель выбирает прежний набор $x^h (overline(p), u)$. Пусть
$
  phi(p_i) = p_i dot x^h_i (overline(p), u) + sum_(j!=i) p_j x^h_j (overline(p), u)
$
Ясно, что $e(p_i) <= phi(p_i)$, причем $e(overline(p)_i) = phi(overline(p)_i)$. \
Тогда на рисунке в осях $(p_i, "расходы")$:
- $phi(p_i)$ --- луч с наклоном $x^h_i (overline(p), u) > 0$
- $e(p_i)$ всюду ниже $phi(p_i)$, кроме $overline(p)_i$, где они совпадают:
#align(center)[
  #image("pictures/9.1.jpg", width: 70%)
]
#pagebreak()

== Двойственность UMP и EMP
Напоминание:
$
  "UMP":
  cases(
    u(x) -> display(max_(x >= 0)),
    p x <= m
  ) => x(p, m) - "маршаллинский спрос", cal(V)(p, m) - "косвенная функция полезности"
$
$
  "EMP":
  cases(
    p x -> display(min_(x >= 0)),
    u(x) >= u
  ) => x^h (p, u) - "хиксианский спрос", e(p, u) - "функция расходов"
$
#statement[
  Пусть предпочтения монотонны и представимы непрерывной функцией полезности. Пусть $p > 0$ --- вектор цен. \
  1) Если $tilde(x)$ --- решение UMP при доходе $m$, то $tilde(x)$ --- решение EMP при $u = u(tilde(x))$, причём в EMP минимальные расходы равны $m$. \
  2) Если $tilde(x)$ --- решение EMP при $u(x) >= u$, то $tilde(x)$ --- решение UMP при доходе $m = p dot tilde(x)$, причём в решении UMP максимальная полезность равна $u(tilde(x))$.
]
#underline[Замечание от Ариэля Рубинштейна] (и тут евреи): Почему важна монотонность и непрерывность для двойственности? \
Короче, там был долгий разговор про черепаху, которая ползёт, которое сводится к одной идее: если функция полезности биективна (а из монотонности и непрерывности следует биективность на области значений), то двойственность работает. Если же функция полезности не биективна, то двойственность может не сработать.
=== Доказательство двойственности.
1) От противного. Пусть $tilde(x)$ не является решением EMP при $u(x) >= u(tilde(x)) => exists x'!= tilde(x): p x'< p tilde(x), u(x)' >= u(tilde(x))$. Так как предпочтения монотонны, то $p tilde(x) = m$. Таким образом, $x'$ доступен при $(p, m)$ и при этом $u(x') >= u(tilde(x))$. Раз $p x' < m$, то найдётся набор $x'' = alpha x', alpha > 1$ такой, что $p x'' = m$. Тогда из монотонности $u(x'') > u(x') >= u(tilde(x)) => u(x'') > u(tilde(x)) => tilde(x)$ --- не решение UMP. Противоречие. \
2) От противного. Пусть $tilde(x)$ не является решением UMP при $m = p tilde(x) => exists x' != tilde(x) : u(x') > u(tilde(x))$ и $p x' <= p tilde(x) = m$. Тогда рассмотрим $x'' = alpha x', alpha in (0, 1) => p x'' < p x$, а из непрерывности $exists alpha: u(x'') >= u(tilde(x))$. Таким образом, $x''$ дешевле $tilde(x)$ и удовлетворяет ограничению EMP. Значит, $tilde(x)$ --- не решение EMP. Противоречие. #qed

== Соотношение двойственности
1) Соотношение маршаллианского и хиксианского спроса
$
  x(p, m) = x^h (p, cal(V)(p, m))
$
$
  x^h (p, u) = x(p, e(p, u))
$
2) Соотношение косвенной функции полезности и функции расходов
$
  cal(V)(p, e(p, u)) = u
$
$
  e(p, cal(V)(p, m)) = m
$
#pagebreak()

#underline[Замечание:] почему хиксианский спрос называют компенсированным?
#align(center)[
  #image("pictures/9.2.jpg")
]
Хиксианский и маршаллианский спрос совпадут, если одновременно с изменением цен так #underline[компенсировать] доход потребителя, чтобы он остался на той же кривой безразличия.
\ \
#underline[
  == Общая диаграмма.
]
$
  x(p, m) stretch(<->)^(x(p, m) = x^h (p, cal(V)(p, m)))_(x^h (p, u) = x (p, e(p, u))) x^h (p, u)
$
$
  underparen((partial x_i (p, m)) / (partial p_j) = (partial x^h_i (p, u)) / (partial p_j) - x_j (p, m) (partial x_i (p, m)) / (partial m), "Уравнение Слуцкого")
$
При подстановке в целевые функции:
$
  cal(V)(p, m) stretch(<->)^(cal(V)(p, e(p, u)) = u)_(e(p, cal(V)(p, m))= m) e(p, u)
$
$
  underparen(partial x_i (p, m) = - (partial cal(V)(p, m) \/ partial p_i) / (partial cal(V)(p, m) \/ partial m), "Тождество Роя")
$
