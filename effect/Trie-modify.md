# modify

Updates the value of the specified key within the `Trie` if it exists.

To import and use `modify` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.modify
```

**Example**

```ts
import { Trie, Equal, Option } from "effect"

const trie = Trie.empty<number>().pipe(Trie.insert("shells", 0), Trie.insert("sells", 1), Trie.insert("she", 2))

assert.deepStrictEqual(
  trie.pipe(
    Trie.modify("she", (v) => v + 10),
    Trie.get("she")
  ),
  Option.some(12)
)

assert.equal(Equal.equals(trie.pipe(Trie.modify("me", (v) => v)), trie), true)
```

**Signature**

```ts
export declare const modify: {
  <V1, V>(key: string, f: (v: V) => V1): (self: Trie<V>) => Trie<V1 | V>
  <V1, V>(self: Trie<V>, key: string, f: (v: V) => V1): Trie<V | V1>
}
```
