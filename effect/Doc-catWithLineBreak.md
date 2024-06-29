# catWithLineBreak

The `catWithLineBreak` combinator concatenates two documents by placing a
`lineBreak` document between them.

To import and use `catWithLineBreak` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.catWithLineBreak
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc: Doc.Doc<never> = pipe(Doc.char("a"), Doc.catWithLineBreak(Doc.char("b")))

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|a
     |b`
  )
)

assert.strictEqual(Doc.render(Doc.group(doc), { style: "pretty" }), "ab")
```

**Signature**

```ts
export declare const catWithLineBreak: {
  <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>
  <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>
}
```
