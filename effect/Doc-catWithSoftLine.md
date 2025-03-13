Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.catWithSoftLine

The `catWithSoftLine` combinator concatenates two documents by placing a
`softLine` document between them.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc: Doc.Doc<never> = pipe(
  Doc.char("a"),
  Doc.catWithSoftLine(Doc.char("b"))
)

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "a b"
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
declare const catWithSoftLine: { <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>; <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1021)

Since v1.0.0