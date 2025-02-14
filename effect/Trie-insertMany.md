# insertMany

Insert multiple entries in the `Trie` at once.

To import and use `insertMany` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.insertMany
```

**Example**

```ts
import { Trie, Equal } from "effect"

const trie = Trie.empty<number>().pipe(Trie.insert("shells", 0), Trie.insert("sells", 1), Trie.insert("she", 2))

const trieInsert = Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insertMany([
    ["sells", 1],
    ["she", 2]
  ])
)

assert.equal(Equal.equals(trie, trieInsert), true)
```

**Signature**

```ts
export declare const insertMany: {
  <V1>(iter: Iterable<[string, V1]>): <V>(self: Trie<V>) => Trie<V | V1>
  <V1, V>(self: Trie<V>, iter: Iterable<[string, V1]>): Trie<V | V1>
}
```
