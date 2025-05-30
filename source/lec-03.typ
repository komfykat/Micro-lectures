#import "micro-template.typ": *
#let title = "Лекция 3"
#let author = "Морфий"
#let course = "Микроэкономика 1"
#let group = "Группа БЭАД242"
#show: footer_header.with(title, author, course, group)
#show: title_page.with(title, author, course, group)
#show: template

= Лекция 3. Отношение предпочтения и его свойства (продолжение)
== Монотонность и строгая монотонность.
Свосйтвам, рассматриваемым в дальнейшем, некоторые предпочтения могут не удовлеторять.
#def(name: "Монотонность")[
  Предпочтения потребителя называются монотонными, если $forall x, y in XX #h(0.2cm) (x > y) -> (x succ y)$. \
  То есть, если в одном наборе каждого блага больше, чем в другом, то первый набор лучше второго.
]
У полных, транзитивных, непрерывных и монотонных предпочтений наклон кривых безразличия будет неположительным.
#def(name: "Строгая монотонность")[
  Предпочтения потребителя строго монотонны, если $forall x, y in XX #h(0.2cm) (x >= y and x != y) -> (x succ y)$.
]
_Почему если при проверке монотонности нужно увеличивать количество обих благ, а при проверке строгой монотонности --- только одного, то почему строгой называется вторая, а не наоборот?_
#example[
  Пусть предпочтения потребителя определены на наборах (яблоки, груши). Потребитель любит яблоки и безразличен к грушам. Если к произвольному набору добавить и яблоки, и груши, то благосостояние потребителя возрастёт. Если же добавить только груши, то благосостояние потребителя не изменится.
]
Из того, что предпочтения строго монотонны, следует, что они монотонны. В обратную сторону утверждение неверно.

== Выпуклость и строгая выпуклость.
#def(name: "Выпуклость предпочтений")[
  Предпочтения потребителя выпуклы, если
  $
    forall x, y in XX, forall alpha in (0. 1) #h(0.2cm) (x succ.tilde y) -> (alpha x + (1 - alpha) y succ.tilde y)
  $
]
В частности, если $x ~ y$, то $forall alpha in [0, 1] #h(0.2cm) alpha x + (1 - alpha) y succ.tilde y$. \
#statement[
  Множество ${alpha x + (1 - alpha) y, alpha in [0, 1]}$ задаёт прямую, соединяющую наборы $x$ и $y$.
]
\
#def(name: "Строгая выпуклость")[
  Предпочтения потребителя строго выпуклы, если
  $
    forall x, y in XX, forall alpha in (0, 1) #h(0.2cm) (x succ.tilde y and x != y) -> (alpha x + (1- alpha)y succ y)
  $
]
Строго выпуклые предпочтения выпуклы. \
Если предпочтения строго монотонны и (строго) выпуклы, то их часто называют "хорошими" или "стандартными". \
Если предпочтения строго монотонны и строго выпуклы, то $M R S_12$ убывает вдоль кривой безразличия по мере роста количества первого блага.
#pagebreak()

#statement[
  Если функция полезности (строго) вогнута, то предпочтения (строго) выпуклы.
]
