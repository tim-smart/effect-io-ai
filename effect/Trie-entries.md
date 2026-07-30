Package: `effect`<br />
Module: `Trie`<br />

## Trie.entries

Returns an `IterableIterator` of the entries within the `Trie`.

The entries are returned by keys in alphabetical order, regardless of insertion order.

**Example**

```ts
import * as assert from "node:assert"
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("call", 0),
  Trie.insert("me", 1)
)

const result = Array.from(Trie.entries(trie))
assert.deepStrictEqual(result, [["call", 0], ["me", 1]])
```

**Signature**

```ts
declare const entries: <V>(self: Trie<V>) => IterableIterator<[string, V]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L205)

Since v2.0.0