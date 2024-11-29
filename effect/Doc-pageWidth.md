# pageWidth

Lays out a document according to the document"s`PageWidth`.

To import and use `pageWidth` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.pageWidth
undefined

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc = Doc.hsep([
  Doc.text("prefix"),
  Doc.pageWidth((pageWidth) => {
    switch (pageWidth._tag) {
      case "AvailablePerLine": {
        const { lineWidth, ribbonFraction } = pageWidth
        return Doc.squareBracketed(Doc.text(`Width: ${lineWidth}, Ribbon Fraction: ${ribbonFraction}`))
      }
      case "Unbounded": {
        return Doc.empty
      }
    }
  })
])

const example = Doc.vsep([0, 4, 8].map((n) => Doc.indent(n)(doc)))

assert.strictEqual(
  Doc.render(example, {
    style: "pretty",
    options: { lineWidth: 32 }
  }),
  String.stripMargin(
    `|prefix [Width: 32, Ribbon Fraction: 1]
     |    prefix [Width: 32, Ribbon Fraction: 1]
     |        prefix [Width: 32, Ribbon Fraction: 1]`
  )
)
```

**Signature**

```ts
export declare const pageWidth: <A>(react: (pageWidth: PageWidth) => Doc<A>) => Doc<A>
```
