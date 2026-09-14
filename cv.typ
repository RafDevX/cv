#import "./template.typ": *

#show: cv.with(
  title: "Rafael Serra e Oliveira",
  tagline: "Software Engineer",
  email: "far".rev()
    + str.from-unicode(calc.pow(8, 2))
    + "rso"
    + str.from-unicode(46)
    + "tp".rev(),
  website: "rso.pt",
  github: "RafDevX",
  linkedin: "RafDevX",
  city: "Stockholm, Sweden",
  // picture: pad(left: 3pt, image(
  //   "./assets/interrobang.png",
  //   height: 200%,
  //   width: 200%,
  // )),
  with-icons: false,
  categories: (
    (
      title: [Education],
      icon: "graduation-cap",
      groups: (
        (
          title: [KTH Royal Institute of Technology (Stockholm, Sweden)],
          href: "https://www.kth.se/en",
          items: (
            (
              title: [Master's Degree in Cybersecurity],
              start: [Aug. 2023],
              end: [Aug. 2026],
              description: [
                - *GPA: 4.97/5.00.* Achieved *Grade A* in all graded technical
                  courses (A-F).
                - *Master's Thesis:*
                  #emph(link(
                    "https://github.com/RafDevX/master-thesis",
                    [Glowy: Flexibly Tracking Information Flow in Go Programs],
                  ))
                  @ KTH LangSec Group, modeling static taint analysis for Go and
                  detecting true security vulnerabilities in real-world
                  projects.
                - *Student Representative* for the Cybersecurity Master's
                  program, working on improving educational quality across
                  different fora and advocating for student influence.
                - *Secretary of the Board* and *Auditor* _(Revisor)_ for
                  student CTF team
                  #link("https://royalroppers.team", [RoyalRoppers])
                  (2024-2026).
                // - Deeply involved in the Student Union's
                //   #link(
                //     "https://datasektionen.se/en",
                //     [Computer Science Chapter],
                //   )
                //   in many capacities.
                - *Teaching Assistant* for KTH courses
                  #link(
                    "https://www.kth.se/student/kurser/kurs/DD2395?l=en",
                    [DD2395 Computer Security],
                  )
                  (Fall 2024 & 2025), grading labs and exams, as well as
                  #link(
                    "https://www.kth.se/student/kurser/kurs/EN2720?l=en",
                    [EN2720 Ethical Hacking],
                  )
                  (Spring 2024), contributing to its GCP-based cyber range.
              ],
            ),
          ),
        ),
        (
          title: [Instituto Superior Técnico (University of Lisbon)],
          href: "https://tecnico.ulisboa.pt/en",
          items: (
            (
              title: [Bachelor's Degree in Computer Science & Engineering],
              start: [Sept. 2020],
              end: [July 2023],
              description: [
                - *Final Grade: 18/20.* Awarded an *Academic Excellence
                  Diploma* and *two Academic Merit Diplomas*.
                - *Student Mentor* (2021/2022), onboarding and counseling first
                  year students.
                - Consulting *Project Manager* at
                  #link("https://junitec.pt/en", [JUNITEC]) (IST's Junior
                  Enterprise), working on bleeding-edge projects with
                  #link("https://www.ceiia.com", [CEiiA]),
                  #link(
                    "https://www.deloitte.com/pt/en.html",
                    [Deloitte Portugal],
                  ), #link("https://unbabel.com", [Unbabel]), and the
                  #link(
                    "https://gulbenkian.pt/en",
                    [Calouste Gulbenkian Foundation],
                  ) (2020-2022).
              ],
            ),
          ),
        ),
      ),
    ),
    (
      title: [Professional Experience],
      icon: "briefcase",
      groups: (
        (
          title: [Computer Science Chapter (D), KTH Student Union],
          href: "https://datasektionen.se/en",
          items: (
            (
              title: [Systems Responsible _(Systemansvarig)_],
              start: [July 2024],
              end: [Dec. 2025],
              description: [
                Elected official in charge of the team developing and
                maintaining the Chapter's 30+ internal systems and underlying IT
                infrastructure. Conceptualized and developed
                #link("https://hive.datasektionen.se", [Hive]), an
                #link("https://github.com/datasektionen/hive", [open-source])
                Rust + HTMX centralized affiliation and permissions management
                system.
              ],
              tags: ([Rust], [NixOS], [Terraform], [Nomad]),
            ),
            (
              title: [Senior Leadership for the International Committee],
              start: [Sept. 2023],
              description: [
                Led a team of 20+ volunteers in organizing 100+ events
                promoting international student integration.
              ],
            ),
          ),
        ),
        // (
        //   title: [KTH Royal Institute of Technology],
        //   href: "https://www.kth.se/en",
        //   items: (
        //     (
        //       title: [Teaching Assistant],
        //       period: [Fall 2025, Fall 2024, & Spring 2024],
        //       description: [.. already above for space concerns ..],
        //     ),
        //   ),
        // ),
        (
          title: [Dept. of Computer Science & Eng., Instituto Superior Técnico],
          href: "https://dei.tecnico.ulisboa.pt/en",
          items: (
            (
              title: [Team Coordinator],
              start: [Aug. 2022],
              end: [Aug. 2023],
              description: [
                Managed a full stack team of 6+ Grantees at IST's
                #link("https://dei.tecnico.ulisboa.pt/en", [CSE Department
                  (DEI)]) across multiple parallel projects serving 100+ users,
                including day-to-day handling, long-term planning, and
                candidate selection.
              ],
            ),
            (
              title: [Full Stack Developer & Systems Administrator],
              start: [May 2021],
              end: [Aug. 2023],
              description: [
                Developed and maintained several administrative and
                teaching-support applications, as well as the CSE Department's
                infrastructure & digital systems, including servers and
                workstations.
              ],
              tags: ([Java], [VueJS]),
            ),
          ),
        ),
      ),
    ),
    (
      title: [Skills & Projects],
      icon: "wrench",
      body: [
        - *Programming & Technologies:* Rust, TypeScript/JavaScript, VueJS,
          HTMX, Java, Python, C, SQL
        - *Tools & Software:* Linux (NixOS, Arch, Debian-based), Git, Docker,
          Bash, Typst, Node.js
        - *Languages:* European Portuguese (Native), English (Proficient -
          Level C2), Swedish (Beginner)
        - *Core Projects:*
          #link("https://github.com/datasektionen/hive", [Hive])
          (20k SLOC, Rust + HTMX),
          #link("https://github.com/RafDevX/glowy", [Glowy])
          (35k SLOC, Rust), #link("https://dms.dei.tecnico.ulisboa.pt", [DMS])
          (Spring Boot + VueJS)
        // DMS is 70k SLOC but putting that here could give the wrong
        // impression that I wrote all of them
      ],
    ),
  ),
)
