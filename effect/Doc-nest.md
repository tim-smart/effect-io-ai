Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.nest

Lays out a document with the current nesting level (indentation
of the following lines) increased by the specified `indent`.
Negative values are allowed and will decrease the nesting level
accordingly.

See also:
* `hang`: nest a document relative to the current cursor
position instead of the current nesting level
* `align`: set the nesting level to the current cursor
position
* `indent`: increase the indentation on the spot, padding
any empty space with spaces

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc = Doc.vsep([
  pipe(Doc.vsep(Doc.words("lorem ipsum dolor")), Doc.nest(4)),
  Doc.text("sit"),
  Doc.text("amet")
])

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|lorem
     |    ipsum
     |    dolor
     |sit
     |amet`
  )
)
```

**Signature**

```ts
declare const nest: { (indent: number): <A>(self: Doc<A>) => Doc<A>; <A>(self: Doc<A>, indent: number): Doc<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1664)

Since v1.0.0