Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.softLineBreak

The `softLineBreak` document is similar to `softLine`, but behaves like
`empty` if the resulting output does not fit onto the page (instead of
`space`).

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hcat([
  Doc.text("ThisText"),
  Doc.softLineBreak,
  Doc.text("IsWayTooLong")
])

// With enough space, we get direct concatenation of documents:
assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 80 }
  }),
  "ThisTextIsWayTooLong"
)

// If the page width is narrowed to `10`, the layout algorithm will
// introduce a line break
assert.strictEqual(
  Doc.render(Doc.group(doc), {
    style: "pretty",
    options: { lineWidth: 10 }
  }),
  String.stripMargin(
    `|ThisText
     |IsWayTooLong`
  )
)
```

**Signature**

```ts
declare const softLineBreak: Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L669)

Since v1.0.0