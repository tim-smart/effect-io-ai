## encloseSep

The `encloseSep` combinator concatenates a collection of documents,
separating each document in the collection using the specified `sep`
document. After concatenation, the resulting document is enclosed by the
specified `left` and `right` documents.

To place the `sep` document at the end of each entry, see the `punctuate`
combinator.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc = Doc.hsep([
  Doc.text("list"),
  Doc.align(
    pipe(
      ["1", "20", "300", "4000"].map(
        (n) => n.length === 1 ? Doc.char(n) : Doc.text(n)
      ),
      Doc.encloseSep(Doc.lbracket, Doc.rbracket, Doc.comma)
    )
  )
])

// The documents are laid out horizontally if the document fits the page
assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "list [1,20,300,4000]"
)

// Otherwise they are laid out vertically, with separators put in the front
assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 10 }
  }),
  String.stripMargin(
    `|list [1
     |     ,20
     |     ,300
     |     ,4000]`
  )
)
```

**Signature**

```ts
declare const encloseSep: { <A, B, C>(left: Doc<A>, right: Doc<B>, sep: Doc<C>): <D>(docs: Iterable<Doc<D>>) => Doc<A | B | C | D>; <A, B, C, D>(docs: Iterable<Doc<D>>, left: Doc<A>, right: Doc<B>, sep: Doc<C>): Doc<A | B | C | D>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1849)

Since v1.0.0