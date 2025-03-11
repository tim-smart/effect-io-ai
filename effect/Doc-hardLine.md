## hardLine

The `hardLine` document is always laid out as a line break, regardless of
space or whether or not the document was `group`"ed.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hcat([
  Doc.text("lorem ipsum"),
  Doc.hardLine,
  Doc.text("dolor sit amet")
])

// Even with enough space, a line break is introduced
assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 1000 }
  }),
  String.stripMargin(
    `|lorem ipsum
     |dolor sit amet`
  )
)
```

**Signature**

```ts
declare const hardLine: Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L703)

Since v1.0.0