## catWithSoftLineBreak

The `catWithSoftLineBreak` combinator concatenates two documents by
placing a `softLineBreak` document between them.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc: Doc.Doc<never> = pipe(
  Doc.char("a"),
  Doc.catWithSoftLineBreak(Doc.char("b"))
)

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "ab"
)

assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 1 }
  }),
  String.stripMargin(
    `|a
     |b`
  )
)
```

**Signature**

```ts
declare const catWithSoftLineBreak: { <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>; <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1062)

Since v1.0.0