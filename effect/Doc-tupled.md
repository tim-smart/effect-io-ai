# tupled

A Haskell-inspired variant of `encloseSep` that uses a comma as the separator
and parentheses as the enclosure for a collection of documents.

To import and use `tupled` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.tupled
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"

const doc = Doc.tupled(["1", "20", "300", "4000"].map((n) => (n.length === 1 ? Doc.char(n) : Doc.text(n))))

assert.strictEqual(Render.prettyDefault(doc), "(1, 20, 300, 4000)")
```

**Signature**

```ts
export declare const tupled: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```
