# hsep

The `hsep` combinator concatenates all documents in a collection horizontally
by placing a `space` between each pair of documents.

For automatic line breaks, consider using `fillSep`.

To import and use `hsep` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.hsep
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"

const doc: Doc.Doc<never> = Doc.hsep(Doc.words("lorem ipsum dolor sit amet"))

assert.strictEqual(Render.pretty(doc, { lineWidth: 80 }), "lorem ipsum dolor sit amet")

// The `hsep` combinator will not introduce line breaks on its own, even when
// the page is too narrow
assert.strictEqual(Render.pretty(doc, { lineWidth: 5 }), "lorem ipsum dolor sit amet")
```

**Signature**

```ts
export declare const hsep: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```
