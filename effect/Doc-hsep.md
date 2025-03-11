## hsep

The `hsep` combinator concatenates all documents in a collection horizontally
by placing a `space` between each pair of documents.

For automatic line breaks, consider using `fillSep`.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"

const doc: Doc.Doc<never> = Doc.hsep(Doc.words("lorem ipsum dolor sit amet"))

assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 80 }
  }),
  "lorem ipsum dolor sit amet"
)

// The `hsep` combinator will not introduce line breaks on its own, even when
// the page is too narrow
assert.strictEqual(
  Doc.render(doc, {
    style: "pretty",
    options: { lineWidth: 5 }
  }),
  "lorem ipsum dolor sit amet"
)
```

**Signature**

```ts
declare const hsep: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1232)

Since v1.0.0