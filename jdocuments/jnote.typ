#let gothic = ("Source Han Sans JP", "MS PGothic", "Hiragino Kaku Gothic Pro", "IPAexGothic", "Noto Sans CJK JP")
#let mincho = ("Source Han Serif JP", "MS PMincho", "Hiragino Mincho Pro", "IPAexMincho", "Noto Serif CJK JP")
#let english = ("Times New Roman", "New Computer Modern")

#let main(
  title: [タイトル],
  authors: [著者],
  abstract: none,
  date: none,
  body
) = {
  // Set document metadata.
  set document(title: title)

  // Configure the page.
  set page(
    paper: "a4",
    margin: (top: 20mm, bottom: 27mm, x: 20mm)
  )

  set text(size: 10pt, font: mincho)
  set par(leading: 0.65em, first-line-indent: 1em, justify: true)
  show par: set block(spacing: 1.0em)

  // Configure equation numbering and spacing.
  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 1.55em)

  // Configure appearance of equation references
  show ref: it => {
    if it.element != none and it.element.func() == math.equation {
      // Override equation references.
      link(it.element.location(), numbering(
        it.element.numbering,
        ..counter(math.equation).at(it.element.location())
      ))
    } else {
      // Other references as usual.
      it
    }
  }

  // Configure lists.
  set enum(indent: 10pt, body-indent: 9pt)
  set list(indent: 10pt, body-indent: 9pt)

  // Configure headings.
  set heading(numbering: "1.")
  show heading: it => locate(loc => {
    // Find out the final number of the heading counter.
    let levels = counter(heading).at(loc)
    let deepest = if levels != () {
      levels.last()
    } else {
      1
    }
    if it.level == 1 [
      // First-level headings are centered smallcaps.
      // We don't want to number of the acknowledgment section.
      #set par(first-line-indent: 0pt)
      #let is-ack = it.body in ([謝辞], [Acknowledgment], [Acknowledgement])
      #set text(if is-ack { 11pt } else { 11pt }, font: gothic)
      #v(20pt, weak: true)
      #if it.numbering != none and not is-ack {
        numbering("1.", ..levels)
        h(8pt, weak: true)
      }
      #it.body
      #v(13.75pt, weak: true)
    ] else [
      // The other level headings are run-ins.
      #set par(first-line-indent: 0pt)
      #set text(10pt, weight: 400)
      #v(10pt, weak: true)
      #if it.numbering != none {
        numbering("1.", ..levels)
        h(8pt, weak: true)
      }
      #it.body
      #v(10pt, weak: true)
    ]
  })

  show figure.where(kind: table): set figure(placement: top, supplement: [表])
  show figure.where(kind: table): set figure.caption(position: top, separator: [ ])
  show figure.where(kind: image): set figure(placement: top, supplement: [図])
  show figure.where(kind: image): set figure.caption(position: bottom, separator: [ ])

  // Display the paper's title.
  align(center, text(18pt, title, weight: "bold", font: mincho))
  v(2em, weak: true)

  // Display the authors list.
  align(right, text(12pt, authors, font: mincho))
  v(1em, weak: true)

  // Display the date
  if date == none {
    align(right, text(12pt, datetime.today().display(), font: mincho))
  }else{
    align(right, text(12pt, date, font: mincho))
  }
  v(2em, weak: true)

  // Display abstract and index terms.
  if abstract != none {
    grid(
      columns: (0.7cm, 1fr, 0.7cm),
      [],
      [
        #set text(10pt, font: mincho)
        #h(1em) #abstract
      ],
      []
    )
    v(1em, weak: false)
  }

  // Display the paper's contents.
  body


}

#let appendix(numbering_: "A.", body) = {
  counter(heading).update(0)
  // Configure headings.
  set heading(numbering: numbering_)
  show heading: it => locate(loc => {
    // Find out the final number of the heading counter.
    let levels = counter(heading).at(loc)
    let deepest = if levels != () {
      levels.last()
    } else {
      1
    }
    if it.level == 1 [
      // First-level headings are centered smallcaps.
      // We don't want to number of the acknowledgment section.
      #set par(first-line-indent: 0pt)
      #set text(11pt, font: gothic)
      #v(20pt, weak: true)
      #if it.numbering != none {
        numbering(numbering_, ..levels)
        h(8pt, weak: true)
      }
      #it.body
      #v(13.75pt, weak: true)
    ] else [
      // The other level headings are run-ins.
      #set par(first-line-indent: 0pt)
      #set text(10pt, weight: 400)
      #v(10pt, weak: true)
      #if it.numbering != none {
        numbering(numbering_, ..levels)
        h(8pt, weak: true)
      }
      #it.body
      #v(10pt, weak: true)
    ]
  })
  body
}

#let thebibliography(
  bibobj,
  full: false,
  body
) = {
  // Display bibliography.
  show bibliography: set text(9pt)
  show regex("[0-9a-zA-Z]"): set text(font: english)
  set bibliography(title:  align(center, text(11pt, font:gothic)[参　考　文　献]),style: "jnote.csl", full: full)
  bibobj
  body
}

