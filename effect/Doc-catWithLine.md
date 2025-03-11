## catWithLine

The `catWithLine` combinator concatenates two documents by placing a `line`
document between them.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc: Doc.Doc<never> = pipe(
  Doc.char("a"),
  Doc.catWithLine(Doc.char("b"))
)

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|a
     |b`
  )
)
```

**Signature**

```ts
declare const catWithLine: { <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>; <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L942)

Since v1.0.0