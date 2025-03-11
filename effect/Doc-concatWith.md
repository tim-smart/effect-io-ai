## concatWith

The `concatWith` combinator concatenates all documents in a collection
element-wise with the specified binary function.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"

const doc: Doc.Doc<never> = pipe(
  [Doc.char("a"), Doc.char("b")],
  Doc.concatWith((x, y) => Doc.catWithSpace(y)(x))
)

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "a b"
)
```

**Signature**

```ts
declare const concatWith: { <A>(f: (left: Doc<A>, right: Doc<A>) => Doc<A>): (docs: Iterable<Doc<A>>) => Doc<A>; <A>(docs: Iterable<Doc<A>>, f: (left: Doc<A>, right: Doc<A>) => Doc<A>): Doc<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1120)

Since v1.0.0