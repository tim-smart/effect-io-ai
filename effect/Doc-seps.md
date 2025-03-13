Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.seps

The `seps` combinator will attempt to lay out a collection of documents
separated by `space`s. If the output does not fit the page, then the
documents will be separated by newlines. This is what differentiates it from
`vsep`, which always lays out documents beneath one another.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hsep([
  Doc.text("prefix"),
  Doc.seps(Doc.words("text to lay out"))
])

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "prefix text to lay out"
)

// If the page width is too narrow, documents are separated by newlines
assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 20 }
  }),
  String.stripMargin(
    `|prefix text
     |to
     |lay
     |out`
  )
)
```

**Signature**

```ts
declare const seps: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1342)

Since v1.0.0