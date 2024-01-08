# hardLine

The `hardLine` document is always laid out as a line break, regardless of
space or whether or not the document was `group`"ed.

To import and use `hardLine` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.hardLine
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hcat([Doc.text("lorem ipsum"), Doc.hardLine, Doc.text("dolor sit amet")])

// Even with enough space, a line break is introduced
assert.strictEqual(
  Render.pretty(doc, { lineWidth: 1000 }),
  String.stripMargin(
    `|lorem ipsum
     |dolor sit amet`
  )
)
```

**Signature**

```ts
export declare const hardLine: Doc<never>
```
