#import "@preview/fontawesome:0.6.2": fa-icon

#let primary = navy.lighten(10%) // rgb("#3e4688") // (maybe too juvenile)
#let secondary = rgb("#cedcf1")

#let header(
  title,
  tagline,
  picture,
  email,
  website,
  github,
  linkedin,
  city,
  phone,
) = {
  block(
    fill: primary,
    stroke: (bottom: 0pt, rest: 1pt + black), // outline more clear in viewers
    width: 100%,
    inset: (top: 1cm, bottom: 0.5cm, x: 1.25cm),
    {
      set text(fill: white)

      stack(
        dir: ltr,
        {
          set align(center)

          par(text(size: 3em, strong(delta: 900, title)))

          par(text(size: 1.5em, emph(tagline)))
        },
        if picture != none {
          align(end, circle(
            radius: 1.8em,
            stroke: none,
            fill: white,
            align(horizon + center, picture),
          ))
        } else {
          none
        },
      )

      let contacts = ()

      if email != none {
        contacts.push(link("mailto:" + email, [
          #fa-icon("envelope", solid: true)
          #email
        ]))
      }

      if website != none {
        contacts.push(link(
          "https://" + website,
          [#fa-icon("arrow-pointer", solid: true) #website],
        ))
      }

      if github != none {
        contacts.push(link(
          "https://github.com/" + github,
          [#fa-icon("github") @#github],
        ))
      }

      if linkedin != none {
        contacts.push(link(
          "https://linkedin.com/in/" + linkedin,
          [#fa-icon("linkedin") @#linkedin],
        ))
      }

      if city != none {
        contacts.push(link(
          "https://google.com/maps/search/?api=1&query=" + city,
          [#fa-icon("location-dot", solid: true) #city],
        ))
      }

      if phone != none {
        contacts.push(link(
          "tel:" + phone.replace(" ", ""),
          [#fa-icon("phone", solid: true) #phone],
        ))
      }

      v(0.4em)

      stack(dir: ltr, spacing: 1fr, ..contacts)
    },
  )
}

#let inner-text(body) = {
  show link: it => text(fill: primary, strong(it, delta: 200))

  body
}

#let bubble(body) = {
  box(pad(x: 0.6em, y: 0.1em, box(
    outset: 0.4em,
    stroke: 1pt,
    radius: 100%,
    body,
  )))
}

#let group-item(item, icon) = {
  pad(left: 0.5em, top: -0.5em, rect(
    inset: (left: 0.75em, top: 0pt),
    stroke: (left: primary + 3pt),
    {
      align(horizon, stack(
        dir: ltr,
        spacing: 1fr,
        pad(y: 0.2em, text(fill: primary)[=== #item.title]),
        text(size: 11pt, strong[
          #icon("calendar", solid: true)
          #if item.at("period", default: none) != none {
            item.period
          } else {
            [#item.start - #item.at("end", default: [Present])]
          }
        ]),
      ))

      let tags = item
        .at("tags", default: ())
        .map(tag => bubble(tag))
        .sum(default: none)

      pad(top: -0.5em, inner-text(item.description) + tags)
    },
  ))
}

#let items-group(group, icon) = {
  [== #icon("location-dot", solid: true) #link(group.href, group.title)]

  v(0.5em)

  for item in group.items {
    group-item(item, icon)
  }
}

#let category(cat, icon) = {
  [= #icon(cat.icon, solid: true) #upper(cat.title)]

  pad(top: -0.2em, divider())

  let body = cat.at("body", default: none)

  if body != none {
    pad(top: -0.5em, inner-text(body))
  }

  for group in cat.at("groups", default: ()) {
    pad(top: -0.6em, items-group(group, icon))
  }
}

#let cv(
  title: "John A. Doe",
  tagline: "A Real-Nice-Guy",
  email: "john@example.com",
  website: "example.com",
  github: "JohnDoe",
  linkedin: "john-doe",
  city: "New York, USA",
  phone: none,
  picture: none,
  with-icons: true,
  categories: (),
  body,
) = {
  set document(
    author: title,
    title: title + "'s CV",
    description: "Curriculum Vitae",
    date: none, // reproducibility + we don't want people to know last update
    keywords: ("cv", "curriculum-vitae"),
  )
  set page("a4", margin: 0pt)
  set text(lang: "en", font: "Roboto", size: 11pt)

  let icon = if with-icons {
    fa-icon
  } else {
    (..) => none
  }

  header(title, tagline, picture, email, website, github, linkedin, city, phone)

  block(inset: (top: 0.5em, rest: 1.25cm), {
    show heading.where(level: 1): it => text(size: 15pt, it)
    show heading.where(level: 2): it => text(size: 14pt, it)
    show heading.where(level: 3): it => text(size: 12pt, it)

    body

    let next-spacing = none
    for cat in categories {
      next-spacing

      pad(top: -0.25em, category(cat, icon))

      next-spacing = v(1fr)
    }
  })
}
