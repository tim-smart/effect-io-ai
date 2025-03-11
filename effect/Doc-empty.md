## empty

The `empty` document behaves like a document containing the empty string
(`""`), so it has a height of `1`.

This may lead to surprising behavior if the empty document is expected to
bear no weight inside certain layout functions, such as`vcat`, where it will
render an empty line of output.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc = Doc.vsep([
  Doc.text("hello"),
  // `parentheses` for visibility purposes only
  Doc.parenthesized(Doc.empty),
  Doc.text("world")
])

const expected = `|hello
                  |()
                  |world`

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(expected)
)
```

**Signature**

```ts
declare const empty: Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L500)

Since v1.0.0