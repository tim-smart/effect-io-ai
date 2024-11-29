# surround

The `surround` combinator encloses a document in between `left` and `right`
documents.

To import and use `surround` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.surround
undefined

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"

const doc = pipe(Doc.char("-"), Doc.surround(Doc.char("A"), Doc.char("Z")))

assert.strictEqual(Doc.render(doc, { style: "pretty" }), "A-Z")
```

**Signature**

```ts
export declare const surround: {
  <A, B, C>(left: Doc<A>, right: Doc<B>): (self: Doc<C>) => Doc<A | B | C>
  <A, B, C>(self: Doc<C>, left: Doc<A>, right: Doc<B>): Doc<A | B | C>
}
```
