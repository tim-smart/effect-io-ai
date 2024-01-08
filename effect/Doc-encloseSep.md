# encloseSep

The `encloseSep` combinator concatenates a collection of documents,
separating each document in the collection using the specified `sep`
document. After concatenation, the resulting document is enclosed by the
specified `left` and `right` documents.

To place the `sep` document at the end of each entry, see the `punctuate`
combinator.

To import and use `encloseSep` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.encloseSep
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import { pipe } from "effect/Function"
import * as String from "effect/String"

const doc = Doc.hsep([
  Doc.text("list"),
  Doc.align(
    pipe(
      ["1", "20", "300", "4000"].map((n) => (n.length === 1 ? Doc.char(n) : Doc.text(n))),
      Doc.encloseSep(Doc.lbracket, Doc.rbracket, Doc.comma)
    )
  )
])

// The documents are laid out horizontally if the document fits the page
assert.strictEqual(Render.prettyDefault(doc), "list [1,20,300,4000]")

// Otherwise they are laid out vertically, with separators put in the front
assert.strictEqual(
  Render.pretty(doc, { lineWidth: 10 }),
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
export declare const encloseSep: {
  <A, B, C>(left: Doc<A>, right: Doc<B>, sep: Doc<C>): <D>(docs: Iterable<Doc<D>>) => Doc<A | B | C | D>
  <A, B, C, D>(docs: Iterable<Doc<D>>, left: Doc<A>, right: Doc<B>, sep: Doc<C>): Doc<A | B | C | D>
}
```
