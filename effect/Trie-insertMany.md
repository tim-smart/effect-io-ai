Package: `effect`<br />
Module: `Trie`<br />

## Trie.insertMany

Insert multiple entries in the `Trie` at once.

**Example**

```ts
import * as assert from "node:assert"
import { Trie, Equal } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("she", 2)
)

const trieInsert = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insertMany(
    [["sells", 1], ["she", 2]]
  )
)

assert.equal(
  Equal.equals(trie, trieInsert),
  true
)
```

**Signature**

```ts
declare const insertMany: { <V1>(iter: Iterable<[string, V1]>): <V>(self: Trie<V>) => Trie<V | V1>; <V1, V>(self: Trie<V>, iter: Iterable<[string, V1]>): Trie<V | V1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Trie.ts#L837)

Since v2.0.0