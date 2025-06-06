Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.nesting

Lays out a document depending upon the current nesting level (i.e., the
current indentation of the document).

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc = Doc.hsep([
  Doc.text("prefix"),
  Doc.nesting((l) => Doc.squareBracketed(Doc.text(`Nested: ${l}`)))
])

const example = Doc.vsep([0, 4, 8].map((n) => Doc.indent(n)(doc)))

assert.strictEqual(
  Doc.render(example, { style: "pretty" }),
  String.stripMargin(
    `|prefix [Nested: 0]
     |    prefix [Nested: 4]
     |        prefix [Nested: 8]`
  )
)
```

**Signature**

```ts
declare const nesting: <A>(react: (level: number) => Doc<A>) => Doc<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1524)

Since v1.0.0