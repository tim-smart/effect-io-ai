## catWithSpace

The `catWithSpace` combinator concatenates two documents by placing a
`space` document between them.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"

const doc: Doc.Doc<never> = pipe(
  Doc.char("a"),
  Doc.catWithSpace(Doc.char("b"))
)

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "a b"
)
```

**Signature**

```ts
declare const catWithSpace: { <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>; <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1091)

Since v1.0.0