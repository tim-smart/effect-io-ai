# nesting

Lays out a document depending upon the current nesting level (i.e., the
current indentation of the document).

To import and use `nesting` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.nesting
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import * as String from "effect/String"

const doc = Doc.hsep([Doc.text("prefix"), Doc.nesting((l) => Doc.squareBracketed(Doc.text(`Nested: ${l}`)))])

const example = Doc.vsep([0, 4, 8].map((n) => Doc.indent(n)(doc)))

assert.strictEqual(
  Render.prettyDefault(example),
  String.stripMargin(
    `|prefix [Nested: 0]
     |    prefix [Nested: 4]
     |        prefix [Nested: 8]`
  )
)
```

**Signature**

```ts
export declare const nesting: <A>(react: (level: number) => Doc<A>) => Doc<A>
```
