## hang

The `hang` combinator lays out a document with the nesting level set to
the *current column* plus the specified `indent`. Negative values for
`indent` are allowed and decrease the nesting level accordingly.

This differs from the `nest` combinator, which is based on the *current
nesting level* plus the specified `indent`. When you"re not sure, try the
more efficient combinator (`nest`) first.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc = Doc.hsep([
  Doc.text("prefix"),
  pipe(Doc.reflow("Indenting these words with hang"), Doc.hang(4))
])

assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 24 }
  }),
  String.stripMargin(
    `|prefix Indenting these
     |           words with
     |           hang`
  )
)
```

**Signature**

```ts
declare const hang: { (indent: number): <A>(self: Doc<A>) => Doc<A>; <A>(self: Doc<A>, indent: number): Doc<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1754)

Since v1.0.0