# catWithLine

The `catWithLine` combinator concatenates two documents by placing a `line`
document between them.

To import and use `catWithLine` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.catWithLine
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc: Doc.Doc<never> = pipe(Doc.char("a"), Doc.catWithLine(Doc.char("b")))

assert.strictEqual(
  Render.prettyDefault(doc),
  String.stripMargin(
    `|a
     |b`
  )
)
```

**Signature**

```ts
export declare const catWithLine: {
  <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>
  <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>
}
```
