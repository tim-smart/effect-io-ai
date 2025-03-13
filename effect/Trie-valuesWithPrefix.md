Package: `effect`<br />
Module: `Trie`<br />

## Trie.valuesWithPrefix

Returns an `IterableIterator` of the values within the `Trie`
that have `prefix` as prefix (`prefix` included if it exists).

**Example**

```ts
import * as assert from "node:assert"
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("she", 0),
  Trie.insert("shells", 1),
  Trie.insert("sea", 2),
  Trie.insert("shore", 3)
)

const result = Array.from(Trie.valuesWithPrefix(trie, "she"))

// 0: "she", 1: "shells"
assert.deepStrictEqual(result, [0, 1])
```

**Signature**

```ts
declare const valuesWithPrefix: { (prefix: string): <V>(self: Trie<V>) => IterableIterator<V>; <V>(self: Trie<V>, prefix: string): IterableIterator<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L284)

Since v2.0.0