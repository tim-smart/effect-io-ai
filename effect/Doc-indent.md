Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.indent

The `indent` combinator indents a document by the specified `indent`
beginning from the current cursor position.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc = Doc.hcat([
  Doc.text("prefix"),
  pipe(Doc.reflow("The indent function indents these words!"), Doc.indent(4))
])

assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 24 }
  }),
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
declare const indent: { (indent: number): <A>(self: Doc<A>) => Doc<A>; <A>(self: Doc<A>, indent: number): Doc<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1792)

Since v1.0.0