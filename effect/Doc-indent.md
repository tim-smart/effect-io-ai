# indent

The `indent` combinator indents a document by the specified `indent`
beginning from the current cursor position.

To import and use `indent` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.indent
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc = Doc.hcat([Doc.text("prefix"), pipe(Doc.reflow("The indent function indents these words!"), Doc.indent(4))])

assert.strictEqual(
  Render.pretty(doc, { lineWidth: 24 }),
  String.stripMargin(
    `|prefix    The indent
     |          function
     |          indents these
     |          words!`
  )
)
```

**Signature**

```ts
export declare const indent: {
  (indent: number): <A>(self: Doc<A>) => Doc<A>
  <A>(self: Doc<A>, indent: number): Doc<A>
}
```
