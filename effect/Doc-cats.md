# cats

The `cats` combinator will attempt to lay out a collection of documents
separated by nothing. If the output does not fit the page, then the documents
will be separated by newlines. This is what differentiates it from `vcat`,
which always lays out documents beneath one another.

To import and use `cats` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.cats
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hsep([Doc.text("Docs:"), Doc.cats(Doc.words("lorem ipsum dolor"))])

assert.strictEqual(Render.prettyDefault(doc), "Docs: loremipsumdolor")

// If the document exceeds the width of the page, the documents are rendered
// one above another
assert.strictEqual(
  Render.pretty(doc, { lineWidth: 10 }),
  String.stripMargin(
    `|Docs: lorem
     |ipsum
     |dolor`
  )
)
```

**Signature**

```ts
export declare const cats: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```
