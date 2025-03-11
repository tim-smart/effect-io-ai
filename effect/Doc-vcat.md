## vcat

The `vcat` combinator concatenates all documents in a collection vertically.
If the output is grouped then the line breaks are removed.

In other words `vcat` is like `vsep`, with newlines removed instead of
replaced by spaces.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.vcat(Doc.words("lorem ipsum dolor"))

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|lorem
     |ipsum
     |dolor`
  )
)
```

**Signature**

```ts
declare const vcat: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1153)

Since v1.0.0