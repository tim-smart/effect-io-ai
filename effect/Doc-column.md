# column

Lays out a document depending upon the column at which the document starts.

To import and use `column` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.column
undefined

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

// Example 1:
const example1 = Doc.column((l) => Doc.hsep([Doc.text("Columns are"), Doc.text(`${l}-based`)]))

assert.strictEqual(Doc.render(example1, { style: "pretty" }), "Columns are 0-based")

// Example 2:
const doc = Doc.hsep([Doc.text("prefix"), Doc.column((l) => Doc.text(`| <- column ${l}`))])

const example2 = Doc.vsep([0, 4, 8].map((n) => Doc.indent(n)(doc)))

assert.strictEqual(
  Doc.render(example2, { style: "pretty" }),
  String.stripMargin(
    `|prefix | <- column 7
     |    prefix | <- column 11
     |        prefix | <- column 15`
  )
)
```

**Signature**

```ts
export declare const column: <A>(react: (position: number) => Doc<A>) => Doc<A>
```
