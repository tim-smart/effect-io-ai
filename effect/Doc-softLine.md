# softLine

The `softLine` document behaves like `space` if the resulting output fits
onto the page, otherwise it behaves like `line`.

To import and use `softLine` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.softLine
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hcat([Doc.text("lorem ipsum"), Doc.softLine, Doc.text("dolor sit amet")])

// Here we have enough space to put everything onto one line
assert.strictEqual(Render.pretty(doc, { lineWidth: 80 }), "lorem ipsum dolor sit amet")

// If the page width is narrowed to `10`, the layout algorithm will
// introduce a line break
assert.strictEqual(
  Render.pretty(Doc.group(doc), { lineWidth: 10 }),
  String.stripMargin(
    `|lorem ipsum
     |dolor sit amet`
  )
)
```

**Signature**

```ts
export declare const softLine: Doc<never>
```
