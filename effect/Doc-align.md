# align

The `align` combinator lays out a document with the nesting level set to the
current column.

To import and use `align` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.align
undefined

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

// As an example, the documents below will be placed one above the other
// regardless of the current nesting level

// Without `align`ment, the second line is simply placed below everything
// that has been laid out so far
const unaligned = Doc.hsep([Doc.text("lorem"), Doc.vsep([Doc.text("ipsum"), Doc.text("dolor")])])

assert.strictEqual(
  Doc.render(unaligned, { style: "pretty" }),
  String.stripMargin(
    `|lorem ipsum
     |dolor`
  )
)

// With `align`ment, the `vsep`ed documents all start at the same column
const aligned = Doc.hsep([Doc.text("lorem"), Doc.align(Doc.vsep([Doc.text("ipsum"), Doc.text("dolor")]))])

assert.strictEqual(
  Doc.render(aligned, { style: "pretty" }),
  String.stripMargin(
    `|lorem ipsum
     |      dolor`
  )
)
```

**Signature**

```ts
export declare const align: <A>(self: Doc<A>) => Doc<A>
```
