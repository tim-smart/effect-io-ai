# catWithSoftLine

The `catWithSoftLine` combinator concatenates two documents by placing a
`softLine` document between them.

To import and use `catWithSoftLine` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.catWithSoftLine
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc: Doc.Doc<never> = pipe(Doc.char("a"), Doc.catWithSoftLine(Doc.char("b")))

assert.strictEqual(Render.prettyDefault(doc), "a b")

assert.strictEqual(
  Render.pretty(doc, { lineWidth: 1 }),
  String.stripMargin(
    `|a
     |b`
  )
)
```

**Signature**

```ts
export declare const catWithSoftLine: {
  <B>(that: Doc<B>): <A>(self: Doc<A>) => Doc<B | A>
  <A, B>(self: Doc<A>, that: Doc<B>): Doc<A | B>
}
```
