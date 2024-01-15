# size

Returns the size of the `Trie` (number of entries in the `Trie`).

To import and use `size` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.size
```

**Example**

```ts
import * as Trie from "effect/Trie"

const trie = Trie.empty<number>().pipe(Trie.insert("a", 0), Trie.insert("b", 1))

assert.equal(Trie.size(trie), 2)
```

**Signature**

```ts
export declare const size: <V>(self: Trie<V>) => number
```
