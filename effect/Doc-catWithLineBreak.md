## catWithLineBreak

The `catWithLineBreak` combinator concatenates two documents by placing a
`lineBreak` document between them.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc: Doc.Doc<never> = pipe(
  Doc.char("a"),
  Doc.catWithLineBreak(Doc.char("b"))
)

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|a
     |b`
  )
)

assert.strictEqual(
  Doc.render(Doc.group(doc), { style: "pretty" }),
  "ab"
)
```

**Signature**

```ts
declare const catWithLineBreak: { <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>; <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L980)

Since v1.0.0