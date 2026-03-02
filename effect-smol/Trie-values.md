Package: `effect`<br />
Module: `Trie`<br />

## Trie.values

Returns an `IterableIterator` of the values within the `Trie`.

Values are ordered based on their key in alphabetical order, regardless of insertion order.

**Example**

```ts
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

const trie = Trie.empty<number>().pipe(
  Trie.insert("call", 0),
  Trie.insert("me", 1),
  Trie.insert("and", 2)
)

const result = Array.from(Trie.values(trie))
assert.deepStrictEqual(result, [2, 0, 1])
```

**Signature**

```ts
declare const values: <V>(self: Trie<V>) => IterableIterator<V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L229)

Since v2.0.0