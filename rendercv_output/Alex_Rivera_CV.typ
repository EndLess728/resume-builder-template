// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Alex Rivera",
  title: "Alex Rivera - CV",
  footer: context { [#emph[Alex Rivera -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated on Nov 22, 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.4em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.15cm,
  sections-space-between-regular-entries: 0.42cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 11,
    day: 22,
  ),
)


= Alex Rivera

  #headline([Senior Mobile Engineer])

#connections(
  [London, UK],
  [#link("tel:+44-20-7946-0958", icon: false, if-underline: false, if-color: false)[020 7946 0958]],
  [#link("mailto:alex.rivera@example.com", icon: false, if-underline: false, if-color: false)[alex.rivera\@example.com]],
  [#link("https://github.com/example", icon: false, if-underline: false, if-color: false)[github.com\/example]],
  [#link("https://www.linkedin.com/in/example/", icon: false, if-underline: false, if-color: false)[LinkedIn]],
)


== Profile Summary

Mobile engineer with 7 years building cross-platform apps in React Native and Expo, from prototype to 200K+ users. Focused on performance, Swift and Kotlin native modules, and release pipelines that let teams ship weekly.

== Skills

#strong[Languages:] TypeScript, JavaScript, Swift, Kotlin, SQL

#strong[Mobile:] React Native, Expo, Expo Router, EAS Build & Update, Native Modules, Reanimated

#strong[Data & State:] GraphQL, REST, TanStack Query, Zustand, Redux Toolkit, SQLite, WebSockets

#strong[Tooling:] Jest, React Native Testing Library, Detox, Maestro, GitHub Actions, Firebase, Sentry

== Experience

#regular-entry(
  [
    #strong[Senior Mobile Engineer], Example Corp -- London, UK

  ],
  [
    Mar 2022 – present

  ],
  main-column-second-row: [
    - Lead a team of 5 engineers shipping a React Native banking app to 200K+ monthly users with a 99.8\% crash-free rate

    - Cut cold-start time by 30\% by moving to the New Architecture and lazy-loading heavy screens

    - Automated iOS and Android releases with EAS Build and GitHub Actions, cutting release day from 4 hours to 20 min

    - Introduced Detox and Maestro end-to-end suites that run on every pull request and block regressions before release

  ],
)

#regular-entry(
  [
    #strong[Mobile Developer], Sample Studio -- Austin, TX

  ],
  [
    June 2019 – Feb 2022

  ],
  main-column-second-row: [
    - Built 3 client apps from scratch in React Native, from design hand-off to App Store and Google Play release

    - Wrote Swift and Kotlin modules for background location, push notifications and in-app purchases

    - Added offline-first sync with SQLite and a background queue, so field workers could use the app without signal

  ],
)

#regular-entry(
  [
    #strong[Junior iOS Developer], Placeholder Labs -- Austin, TX

  ],
  [
    Jan 2018 – May 2019

  ],
  main-column-second-row: [
    - Maintained a Swift event-ticketing app and migrated its main flows to React Native

    - Raised unit test coverage from 20\% to 65\% on the checkout and payments code

  ],
)

== Projects

  #regular-entry(
  [
    #strong[#link("https://example.com/trailmate")[Trailmate]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Offline hiking companion with GPS tracking and downloadable maps]

    - Built map tile caching and battery-friendly location tracking in Expo, reaching 4.8 stars across 10K+ installs

  ],
)

  #regular-entry(
  [
    #strong[#link("https://example.com/split")[Splitwise Lite]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Expense splitting for groups, with real-time sync between devices]

    - Designed a conflict-free sync model over WebSockets so edits on two phones never overwrite each other

  ],
)

== Open Source

  #regular-entry(
  [
    #strong[#link("https://www.npmjs.com/package/left-pad")[left-pad]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[String left pad, used here only to demo the npm download counter (130.5M+ downloads)]

    - Replace this with your own package

  ],
)

== Education

#education-entry(
  [
    #strong[State University], BSc in Computer Science

  ],
  [
    May 2017

  ],
  main-column-second-row: [
  ],
)
