Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.vsep

The `vsep` combinator concatenates all documents in a collection vertically.
If a `group` undoes the line breaks inserted by `vsep`, the documents are
separated with a space instead.

When a `vsep` is `group`ed, the documents are separated with a `space` if the
layoutfits the page, otherwise nothing is done. See the `sep` convenience
function for this use case.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const unaligned = Doc.hsep([
  Doc.text("prefix"),
  Doc.vsep(Doc.words("text to lay out"))
])

assert.strictEqual(
  Doc.render(unaligned, { style: "pretty" }),
  String.stripMargin(
    `|prefix text
     |to
     |lay
     |out`
  )
)

// The `align` function can be used to align the documents under their first
// element
const aligned = Doc.hsep([
  Doc.text("prefix"),
  Doc.align(Doc.vsep(Doc.words("text to lay out")))
])

assert.strictEqual(
  Doc.render(aligned, { style: "pretty" }),
  String.stripMargin(
    `|prefix text
     |       to
     |       lay
     |       out`
  )
)
```

**Signature**

```ts
declare const vsep: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1285)

Since v1.0.0