// A cornell note template for creating worksheets.

#let left_column_width = 28%
#let cornellnote(
  // college title or logo
  college: "",
  // subject title
  course: "Precalculus",
  //note date
  date: "",
  // topic/section of the note
  topic: "",
  //name of the instructor
  instructor: "",
  //semester
  term: "",
  left_column: left_column_width,
  //note content
  body
) = {

  set table(stroke: 1.5pt)
  set text(font: "Noto Sans", size: 11pt)
  set page(
    paper: "us-letter",
    margin: (
      top: if college != "" {15em} else {12.5em}, 
      bottom: 16em, 
      x:0.5in
    ),
    header-ascent: 0%,
    footer-descent: 0%,
    header: {
       if college != "" {
         align(center)[#box(height:2.5em)[#college]];
       } else {}
       set text(14pt)
       grid(
          columns: (60%, 40%),
          [
            #text(16pt)[*Subject:*] #box(stroke: (bottom:2pt), width: 75%, inset: (bottom: 3pt))[#course]
          ],
          align(right)[
            #text(16pt)[*Date:*] #box(stroke: (bottom:2pt), inset: (bottom: 3pt), width:60%)[#date]
          ]
        )

      box(width: 100%, height: 3em, stroke: 2pt, inset: 6pt)[
      #align(start+top)[
        #text(14pt)[*Topic:*] (Chapter/section)\ 
        #topic 
        ]
      ]

    v(-0.75em)
      table(
            columns: (left_column_width, 100%-left_column_width),
            rows: 1.5em,
            text(14pt)[*Questions/Ideals*],    
            text(14pt)[*Notes*:]
        )
    },
    footer: {
        box(width: 100%, height: 12em, stroke: 2pt, inset: 6pt)[#text(16pt)[*Summary:*]]
        {set text(11.5pt, weight: 500)
          grid(
            columns: (1fr,)*3,
            rows: 1em,
            align(left)[
              #term
            ],
            align(center)[
              #counter(page).display("1 / 1", both: true)
            ],
            align(right)[
              #if instructor != "" [
              *Instructor:*] #instructor
            ]
          )
      }
    }
  )

 table(
    columns: (left_column_width, 100%-left_column_width),
    rows: auto,
    [],
    {body; v(1fr)}
  )
}
