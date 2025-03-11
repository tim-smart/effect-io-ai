## cats

The `cats` combinator will attempt to lay out a collection of documents
separated by nothing. If the output does not fit the page, then the documents
will be separated by newlines. This is what differentiates it from `vcat`,
which always lays out documents beneath one another.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hsep([
  Doc.text("Docs:"),
  Doc.cats(Doc.words("lorem ipsum dolor"))
])

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "Docs: loremipsumdolor"
)

// If the document exceeds the width of the page, the documents are rendered
// one above another
assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 10 }
  }),
  String.stripMargin(
    `|Docs: lorem
     |ipsum
     |dolor`
  )
)
```

**Signature**

```ts
declare const cats: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L912)

Since v1.0.0