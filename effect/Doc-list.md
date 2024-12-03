# list

A Haskell-inspired variant of `encloseSep` that uses a comma as the separator
and braces as the enclosure for a collection of documents.

To import and use `list` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.list
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"

const doc = Doc.list(["1", "20", "300", "4000"].map((n) => (n.length === 1 ? Doc.char(n) : Doc.text(n))))

assert.strictEqual(Doc.render(doc, { style: "pretty" }), "[1, 20, 300, 4000]")
```

**Signature**

```ts
export declare const list: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```
