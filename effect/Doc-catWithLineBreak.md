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
import * as Render from "@effect/printer/Render"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc: Doc.Doc<never> = pipe(Doc.char("a"), Doc.catWithLineBreak(Doc.char("b")))

assert.strictEqual(
  Render.prettyDefault(doc),
  String.stripMargin(
    `|a
     |b`
  )
)

assert.strictEqual(Render.prettyDefault(Doc.group(doc)), "ab")
```

**Signature**

```ts
export declare const catWithLineBreak: {
  <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>
  <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>
}
```
