## softLine

The `softLine` document behaves like `space` if the resulting output fits
onto the page, otherwise it behaves like `line`.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hcat([
  Doc.text("lorem ipsum"),
  Doc.softLine,
  Doc.text("dolor sit amet")
])

// Here we have enough space to put everything onto one line
assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 80 }
  }),
  "lorem ipsum dolor sit amet"
)

// If the page width is narrowed to `10`, the layout algorithm will
// introduce a line break
assert.strictEqual(
  Doc.render(Doc.group(doc), {
    style: "pretty",
    options: { lineWidth: 10 }
  }),
  String.stripMargin(
    `|lorem ipsum
     |dolor sit amet`
  )
)
```

**Signature**

```ts
declare const softLine: Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L624)

Since v1.0.0