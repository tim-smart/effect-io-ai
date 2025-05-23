Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.width

The `width` combinator makes the column width of a document available to the
document while rendering.

**Example**

```ts
import * as assert from "node:assert"
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
declare const width: { <A, B>(react: (width: number) => Doc<B>): (self: Doc<A>) => Doc<A | B>; <A, B>(self: Doc<A>, react: (width: number) => Doc<B>): Doc<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1567)

Since v1.0.0