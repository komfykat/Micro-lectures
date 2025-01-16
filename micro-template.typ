#import "../typst-sympy-calculator.typ"
#let problem_counter = counter("problem")
#show link: underline

#let template(doc) = [
  #set page(
    paper: "a4",
    margin: (
      top: 1cm,
      left: 1cm,
      right: 1cm,
      bottom: 1.75cm,
    ),
  )
  #set text(
    font: "New Computer Modern",
    lang: "ru",
  )
  #set par(justify: true)
  #set math.mat(
    column-gap: .8em,
    row-gap: .8em,
  )
  #show sym.lt.eq: sym.lt.eq.slant
  #show sym.gt.eq: sym.gt.eq.slant
  #doc
]

#let footer_header(title, author, course, group, body) = {
  set page(
    footer: locate(loc => if (counter(page).at(loc).first() == 1) {
      none
    } else {
      let page_number = counter(page).at(loc).first()
      let total_pages = counter(page).final(loc).last()
      line(length: 100%)
      [Стр. #page_number из #total_pages]
      [#h(1fr)#author | #course: #title]
    }),
  )
  body
}

#let title_page(title, author, course, group, body) = {
  block(
    height: 20%,
    fill: none,
  )
  align(center, text(20pt)[*#course*])
  align(center, text(17pt)[*#title*])
  block(
    height: 30%,
    fill: none,
  )
  align(center, text(16pt)[*#author*])
  align(center, text(11pt)[*#group*])
  pagebreak(weak: false)
  body
}

#let def(no_header: false, name: none, number: none, body) = {
  if no_header {
    none
  } else {
    [=== Определение. #name]
  }
  block(
    fill: rgb(240, 240, 255),
    width: 100%,
    inset: 8pt,
    radius: 4pt,
    body,
  )
}


#let statement(no_header: false, name: none, body) = {
  if not no_header {
    [=== Утверждение. #name]
  } else {
    none
  }
  block(
    fill: rgb(240, 255, 240),
    width: 100%,
    inset: 8pt,
    radius: 4pt,
    body,
  )
}
#let example(no_header: false, name: none, body) = {
  if not no_header {
    [=== Пример. #name]
  } else {
    none
  }
  block(
    fill: rgb(247, 235, 210),
    width: 100%,
    inset: 8pt,
    radius: 4pt,
    body,
  )
}

#let answer(type: "answer", no_header: false, body) = {
  let title = none
  if type == "result" {
    title = [Итого:]
  } else if type == "answer" {
    title = [Ответ:]
  }
  if not no_header {
    [== #title]
    line(length: 100%)
  }
  block(
    fill: rgb(240, 240, 255),
    width: 100%,
    inset: 8pt,
    radius: 4pt,
    [#body],
  )
}

#let intlim(l, r) = $cases(delim: "|", #h(0pt)^#r, #v(6pt), #h(0pt)_#l)$
#let pr = math.op("pr")
#let ort = math.op("ort")
#let vol = math.op("vol")
#let ord = math.op("ord")
#let Spec = math.op("Spec")
#let rref = math.op("rref")
#let dom = math.op("dom")
#show link: underline
#let linspan(..args) = {
  let input = args.pos()

  math.angle.l
  for i in range(input.len() - 1) {
    input.at(i)
    math.comma
    math.thick
  }
  input.at(-1)
  math.angle.r
}
#let scr(it) = text(
  features: ("ss01",),
  box($cal(it)$),
)

#let qed = {
  h(1fr)
  $qed$
}
