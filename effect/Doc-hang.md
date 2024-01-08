# hang

The `hang` combinator lays out a document with the nesting level set to
the _current column_ plus the specified `indent`. Negative values for
`indent` are allowed and decrease the nesting level accordingly.

This differs from the `nest` combinator, which is based on the _current
nesting level_ plus the specified `indent`. When you"re not sure, try the
more efficient combinator (`nest`) first.

To import and use `hang` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.hang
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc = Doc.hsep([Doc.text("prefix"), pipe(Doc.reflow("Indenting these words with hang"), Doc.hang(4))])

assert.strictEqual(
  Render.pretty(doc, { lineWidth: 24 }),
  String.stripMargin(
    `|prefix Indenting these
     |           words with
     |           hang`
  )
)
```

**Signature**

```ts
export declare const hang: { (indent: number): <A>(self: Doc<A>) => Doc<A>; <A>(self: Doc<A>, indent: number): Doc<A> }
```
