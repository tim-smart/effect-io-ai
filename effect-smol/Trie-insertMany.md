Package: `effect`<br />
Module: `Trie`<br />

## Trie.insertMany

Insert multiple entries in the `Trie` at once.

**Example**

```ts
import * as Equal from "effect/Equal"
import * as Trie from "effect/Trie"
import * as assert from "node:assert"

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
declare const insertMany: { <V>(iter: Iterable<[string, V]>): (self: Trie<V>) => Trie<V>; <V>(self: Trie<V>, iter: Iterable<[string, V]>): Trie<V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Trie.ts#L922)

Since v2.0.0