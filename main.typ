#import "template.typ": *
#show: ieee.with(
  title: [
[-doc.title-]
  ],
  abstract: [
[-parts.abstract-]
  ],
  authors: (
[# for author in doc.authors #]
    (
      name: "[-author.name-]",
[# if author.email #]
      email: "[-author.email-]",
[# endif #]
[# if author.affiliations[0] #]
[# if author.affiliations[0].value.name #]
      organization: "[-author.affiliations[0].value.name-]",
[# endif #]
[# if author.affiliations[0].value.department #]
      department: "[-author.affiliations[0].value.department-]",
[# endif #]
[# if author.affiliations[0].value.address #]
      location: "[-author.affiliations[0].value.address-]",
[# endif -#]
[# endif #]
    ),
[# endfor #]
  ),
[# if doc.keywords #]
  index-terms: (
    [#- for keyword in doc.keywords -#]"[-keyword-]",[#- endfor -#]
  ),
[# endif #]
[# if doc.bibtex #]
  bibliography-file: "[-doc.bibtex-]",
[# endif #]
)

[-IMPORTS-]

[-CONTENT-]
