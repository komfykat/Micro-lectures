#import "micro-template.typ": *
#let title = "Лекция 10"
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

= Снова про уравнение Слуцкого.
#statement[
  Пусть предпочтения монотонны, строго выпуклы и представимы непрерывной функцией полезности $u(x)$. Пусть $x^h (p, u)$ и $x(p, m)$ --- дифференцируемые функции хиксианского и маршаллианского спроса соответственно. Тогда $forall p, m > 0$ выполнено уравнение Слуцкого в дифференциальной форме:
  $
    (partial x_i (p, m)) / (partial p_j) = (partial x^h_i (p, u)) / (partial p_j) - x_j (p, m) (partial x_i (p, m)) / (partial m)
  $
  При $i = j$ получаем уравнение Слуцкого по "своей" цене, \
  при $i != j$ получаем уравнение Слуцкого по "чужой" цене
]
=== Доказательство.
Рассмотрим цены $overline(p)$ и $overline(m)$. Пусть $overline(u)$ --- максимальный уровень полезности, достижимый при $overline(p), overline(m)$, то есть $overline(u) = cal(V) (overline(p), overline(m))$. \
По соотношению двойственности $x^h_i (p, u) = x(p, e(p, u))$. Продифференцируем его по $p_j$:
$
  (partial x_i^h (p, u)) / (partial p_j) = (partial x_i (p, e(p, u))) / (partial p_j) + (partial x_i (p, e(p, u))) / (partial e) dot (partial e(p, u)) / (partial p_j)
$
Подставим $overline(p), overline(u)$. Тогда получим по двойственности
$
  e(overline(p), overline(u)) = e(overline(p), cal(V) (overline(p), overline(m))) = overline(m)
$
И из леммы Шепарда
$
  (partial e(p, u)) / (partial p_j) = x^h_j (overline(p), overline(u)) = x_j (overline(p), overline(m))
$
Подставим:
$
  (partial x^h_i (overline(p), overline(u))) / (partial p_j) = (partial x_i (overline(p), overline(m))) / (partial p_j) + (partial x_i (overline(p), overline(m))) / (partial m) dot x_j (overline(p), overline(m))
$
Откуда следует требумое соотношение. #qed \ \ \

#underline[Замечание]. \
Рассмотрим уравнение Слуцкого при $i = j$.
- Для нормального блага эффект дохода отрицательный, значит,
$
  (partial x^h_i) / (partial p_i) > (partial x_i) / (partial p_i)
$
то есть кривая хиксианского спроса идёт "круче"
#align(center)[
  #image("pictures/10.1.jpg", width: 70%)
]
\ \ \
=== Уравнение Слуцкого по своей цене
$
  (partial x_i) / (partial p_i) = (partial x^h_i) / (partial p_i) - x_i (partial x_i) / (partial m) intlim("", "") dot p_i / x_i
$
$
  (partial x_i) / (partial p_i) dot p_i / x_i = (partial x^h_i) / (partial p_i) dot p_i / x^h_i - (partial x_i) / (partial m) dot m / x_i dot (x_i dot p_i) / (m)
$
$
  epsilon^(x_i)_p_i = epsilon^(x^h_i)_p_i - delta_i epsilon^(x_i)_m
$
Где $delta_i = (p_i x_i)/m$ --- доля расходов на $i$-ое благо в доходе.
- Инфериорное благо будет товаром Гиффена, если доминирует IE, тогда товар ГИффена можно искать среди тех благ, расходы которых составляют существенную долю в доходе, например, питание в малообеспеченной семье.
- Если $epsilon^(x_i)_p_i approx epsilon^(x^h_i)_p_i$, тогда IE невелик, то есть либо невелика доля расходов на благо в доходе потребителя, либо маршаллианский спрос малочувствителен к изменениям дохода.

=== Уравнение Слуцкого по "чужой" цене

$
  (partial x_i) / (partial p_j) = (partial x^h_i) / (partial p_j) - x_j (partial x_i) / (partial m)
$
(1) $N = 2$, $(partial x^h_1)/(partial p_2) = ?$\
По закону хиксианского спроса $(partial x^h_i)/(partial p_i) <= 0$. \ \
$x^h_1 (p, u)$ однороден степени 0 по ценам, значит, по правилу Эйлера:
$
  (partial x^h_i) / (partial p_1) dot p_1 + (partial x^h_1) / (partial p_2) dot p_2 = 0 => (partial x^h_1) / (partial p_2) >= 0
$
то есть перекрёстный эффект замещения неотрицателен. СЛедовательно, для нормального блага перекрёстные SE и IE разнонаправленные $=>$ могут быть как валовые субституты, так и валовые комплементы.
=== Про валовые и чистые субституты/комплементы
- валовые субституты --- по маршаллианскому спросу:
- $(partial x_i)/(partial p_j) > 0 =>$ субституты
- $(partial x_i)/(partial p_j) < 0 =>$ комплементы
Когда мы смотрим на реакцию маршаллианского спроса на чужую цену то, вообще говоря, влияет и SE, и IE, но тогда получаем несимметричную характеристику. Например, может быть такое, что $(partial x_1)/(partial p_2) > 0$, но $(partial x_2)/(partial p_1) <= 0$.
#example[
  $u(x) = ln x_1 + x_2$
  Во внутреннем решении UMP:
  $
    1 / x_1 = p_1 / p_2 => x_1 = p_2 / p_1 => (partial x_1) / (partial p_2) > 0
  $
  $
    x_2 = m / p_2 - p_1 / p_2 dot p_2 / p_1 = m / p_2 - 1 => (partial x_2) / (partial p_1) = 0
  $
]
#def[
  Чистые субституты/комплементы --- смотрим по хиксианскому спросу (только SE):
  $
    (partial x^h_i) / (partial p_j) > 0 - "чистые субституты"
  $
  $
    (partial x^h_i) / (partial p_j) < 0 - "чистые комплементы"
  $
  Это симметричное соотношение:
  $
    (partial x^h_i) / (partial p_j) = (partial x^h_j) / (partial p_i)
  $
  Ведь по лемме Шепарда:
  $
    (x^h_i) = (partial e) / (partial p_i) => (partial x^h_i) / (partial p_j) = (partial^2 e) / (partial p_i partial p_j) = (partial^2 e) / (partial p_j partial p_i) = (partial x^h_i) / (partial p_i)
  $
]
Тогда в случае $N = 2$ два блага точно будут чистыми субститутами, а в случае $N > 2$ для каждого блага найдётся хотя бы один чистый субститут.

=== Уравнение Слуцкого по чужой цене в эластичностях.
$
  (partial x_i) / (partial p_j)
  = (partial x^h_i) / (partial p_j) - x_j (partial x_i) / (partial m) intlim("", "") dot (p_j) / x_i
$
$
  epsilon^(x_i)_p_j = epsilon^(x^h)_p_j - delta_j epsilon^(x_i)_m
$

== Матрица Слуцкого.
Пусть $S'$ --- матрица, элементами которого являются эффекты замещения, то есть
$
  s'_(i, j) = (partial x^h_i) / (partial p_j) = (partial x_i) / (partial p_j) + x_j (partial x_i) / (partial m)
$
Тогда $S'$ --- матрица, зависящая от $p$ и $m$
#def[
  $S = S(p, m)$ называется матрицей Слуцкого.
]
#statement[
  Пусть предпочтения монотонны, строго выпуклы и представимы непрерывной функцией полезности. Рассматриваемые функции дифференцируемы и $e(p, u)$ дифференцируема дважды и её вторая производная непрерывна.. Тогда матрица Слуцкого обладает следующими свойствами: \
  1) $S = S^T$ \
  2)
  $
    s_(i j) = (partial x^h_i) / (partial p_j) = (partial^2 e) / (partial p_i partial p_j)
  $
  Тогда $S(p, m)$ --- матрица вторых производных функции расходов. \
  Так как функция расходов вогнута по ценам, то $S(p, m)$ неположительно определённая. \
  3) $S(p, m) dot p = 0$
]
