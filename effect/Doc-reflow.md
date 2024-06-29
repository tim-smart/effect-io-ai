# reflow

Splits a string of words into individual `Text` documents using the specified
`char` to split on (defaults to `" "`). In addition, a `softLine` is inserted
in between each word so that if the text exceeds the available width it will
be broken into multiple lines.

To import and use `reflow` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.reflow
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc = Doc.reflow(
  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, " +
    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)

assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 32 }
  }),
  String.stripMargin(
    `|Lorem ipsum dolor sit amet,
     |consectetur adipisicing elit,
     |sed do eiusmod tempor incididunt
     |ut labore et dolore magna
     |aliqua.`
  )
)
```

**Signature**

```ts
export declare const reflow: (s: string, char?: string) => Doc<never>
```
