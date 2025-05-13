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
    footer: context {
      let current_page = counter(page).get().first()
      if (current_page == 1) {
        none
      } else {
        let total_pages = counter(page).final().first()
        line(length: 100%)
        [Стр. #current_page из #total_pages]
        [#h(1fr)#author | #course: #title]
      }
    },
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

#let sign(no_header: false, name: none, number: none, body) = {
  if no_header {
    none
  } else {
    [=== Обозначение. #name]
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
#let ran = math.op("ran")
#let MRS = math.op("MRS")
#let SE = math.op("SE")
#let WE = math.op("WE")
#let const = math.italic("const")
#let comp = math.op("comp")
#let IE = math.op("IE")
#let MP = math.op("MP")
#let AP = math.op("AP")
#let MRTS = math.op("MRTS")
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
