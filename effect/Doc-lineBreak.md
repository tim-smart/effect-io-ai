## lineBreak

The `lineBreak` document is like `line` but behaves like `empty` if the line
break is undone by `group` (instead of `space`).

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hcat([
  Doc.text("lorem ipsum"),
  Doc.lineBreak,
  Doc.text("dolor sit amet")
])

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|lorem ipsum
     |dolor sit amet`
  )
)
assert.strictEqual(
  Doc.render(Doc.group(doc), { style: "pretty" }),
  "lorem ipsumdolor sit amet"
)
```

**Signature**

```ts
declare const lineBreak: Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L580)

Since v1.0.0