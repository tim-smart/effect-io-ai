# map

Maps over the entries of the `Trie` using the specified function.

To import and use `map` from the "Trie" module:

ts
import \* as Trie from "effect/Trie"
// Can be accessed like this
Trie.map
undefined

**Example**

```ts
import { Trie, Equal } from "effect"

const trie = Trie.empty<number>().pipe(Trie.insert("shells", 0), Trie.insert("sells", 1), Trie.insert("she", 2))

const trieMapV = Trie.empty<number>().pipe(Trie.insert("shells", 1), Trie.insert("sells", 2), Trie.insert("she", 3))

const trieMapK = Trie.empty<number>().pipe(Trie.insert("shells", 6), Trie.insert("sells", 5), Trie.insert("she", 3))

assert.equal(
  Equal.equals(
    Trie.map(trie, (v) => v + 1),
    trieMapV
  ),
  true
)
assert.equal(
  Equal.equals(
    Trie.map(trie, (_, k) => k.length),
    trieMapK
  ),
  true
)
```

**Signature**

```ts
export declare const map: {
  <A, V>(f: (value: V, key: string) => A): (self: Trie<V>) => Trie<A>
  <V, A>(self: Trie<V>, f: (value: V, key: string) => A): Trie<A>
}
```
