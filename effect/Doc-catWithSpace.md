# catWithSpace

The `catWithSpace` combinator concatenates two documents by placing a
`space` document between them.

To import and use `catWithSpace` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.catWithSpace
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import { pipe } from "effect/Function"

const doc: Doc.Doc<never> = pipe(Doc.char("a"), Doc.catWithSpace(Doc.char("b")))

assert.strictEqual(Render.prettyDefault(doc), "a b")
```

**Signature**

```ts
export declare const catWithSpace: {
  <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>
  <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>
}
```
