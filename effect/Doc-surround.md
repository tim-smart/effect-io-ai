Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.surround

The `surround` combinator encloses a document in between `left` and `right`
documents.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"

const doc = pipe(
  Doc.char("-"),
  Doc.surround(Doc.char("A"), Doc.char("Z"))
)

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "A-Z"
)
```

**Signature**

```ts
declare const surround: { <A, B, C>(left: Doc<A>, right: Doc<B>): (self: Doc<C>) => Doc<A | B | C>; <A, B, C>(self: Doc<C>, left: Doc<A>, right: Doc<B>): Doc<A | B | C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L2253)

Since v1.0.0