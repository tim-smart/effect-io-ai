Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.list

A Haskell-inspired variant of `encloseSep` that uses a comma as the separator
and braces as the enclosure for a collection of documents.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"

const doc = Doc.list(
  ["1", "20", "300", "4000"].map(
    (n) => (n.length === 1 ? Doc.char(n) : Doc.text(n))
  )
)

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "[1, 20, 300, 4000]"
)
```

**Signature**

```ts
declare const list: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1882)

Since v1.0.0