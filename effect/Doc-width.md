# width

The `width` combinator makes the column width of a document available to the
document while rendering.

To import and use `width` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.width
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const annotate = <A>(doc: Doc.Doc<A>): Doc.Doc<A> =>
  pipe(
    Doc.squareBracketed(doc),
    Doc.width((w) => Doc.text(` <- width: ${w}`))
  )

const docs = [
  Doc.text("---"),
  Doc.text("------"),
  Doc.indent(Doc.text("---"), 3),
  Doc.vsep([Doc.text("---"), Doc.indent(Doc.text("---"), 4)])
]

const doc = Doc.align(Doc.vsep(docs.map(annotate)))

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|[---] <- width: 5
     |[------] <- width: 8
     |[   ---] <- width: 8
     |[---
     |    ---] <- width: 8`
  )
)
```

**Signature**

```ts
export declare const width: {
  <A, B>(react: (width: number) => Doc<B>): (self: Doc<A>) => Doc<A | B>
  <A, B>(self: Doc<A>, react: (width: number) => Doc<B>): Doc<A | B>
}
```
