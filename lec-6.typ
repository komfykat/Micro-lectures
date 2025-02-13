#import "micro-template.typ": *
#let title = "Лекция 6"
#let author = "Морфий"
#let course = "Микроэкономика 1"
#let group = "Группа БЭАД242"
#show: footer_header.with(title, author, course, group)
#show: title_page.with(title, author, course, group)
#show: template
#let const = math.italic("const")

= Лекция 6.
== Эластичность.

$
  epsilon^f_x = "изменение f в процентах" / "изменение x в процентах" = (Delta f) / (Delta x) dot x / f
$
#def[
  Эластичность $f$ по $x$ в точке ---
  $
    epsilon^f_x (x) = (d f) / (d x) dot x / f
  $
  Показывает, на сколько % изменится $f$ при изменении $x$ на 1%.
]
=== 1. Эластичность маршаллианского спроса по своей цене.

Пусть $x_i (p, m)$ --- функция маршаллианского спроса на благо $i$.

- $epsilon^(x_i)_p_i$ --- элсатичность спроса на благо $i$ по своей цене
$
  epsilon^(x_i)_p_i = (partial x_i (p, m)) / (partial p_i) dot p_i / x_i
$
Если $x_i (p_i)$ --- функция спроса на благо только как функция от $p_i$ при фиксированных остальных ценах и доходе, то
$
  epsilon^(x_i)_p_i = (d x_i) / (d p_i) dot p_i / x_i
$
показывает, на сколько в % изменится объём спроса при изменении цены на 1%. \
В зависимости от реакции на свою цену:
- $epsilon^(x_i)_p_i < 0$, если благо обычное,
- $epsilon^(x_i)_p_i > 0$, если благо является товаром Гиффена.
