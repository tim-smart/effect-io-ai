# vsep

The `vsep` combinator concatenates all documents in a collection vertically.
If a `group` undoes the line breaks inserted by `vsep`, the documents are
separated with a space instead.

When a `vsep` is `group`ed, the documents are separated with a `space` if the
layoutfits the page, otherwise nothing is done. See the `sep` convenience
function for this use case.

To import and use `vsep` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.vsep
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import * as String from "effect/String"

const unaligned = Doc.hsep([Doc.text("prefix"), Doc.vsep(Doc.words("text to lay out"))])

assert.strictEqual(
  Render.prettyDefault(unaligned),
  String.stripMargin(
    `|prefix text
     |to
     |lay
     |out`
  )
)

// The `align` function can be used to align the documents under their first
// element
const aligned = Doc.hsep([Doc.text("prefix"), Doc.align(Doc.vsep(Doc.words("text to lay out")))])

assert.strictEqual(
  Render.prettyDefault(aligned),
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
export declare const vsep: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```
