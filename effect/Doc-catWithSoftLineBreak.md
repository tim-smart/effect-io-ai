# catWithSoftLineBreak

The `catWithSoftLineBreak` combinator concatenates two documents by
placing a `softLineBreak` document between them.

To import and use `catWithSoftLineBreak` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.catWithSoftLineBreak
undefined

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc: Doc.Doc<never> = pipe(Doc.char("a"), Doc.catWithSoftLineBreak(Doc.char("b")))

assert.strictEqual(Doc.render(doc, { style: "pretty" }), "ab")

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
export declare const catWithSoftLineBreak: {
  <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>
  <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>
}
```
