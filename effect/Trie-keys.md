# keys

Returns an `IterableIterator` of the keys within the `Trie`.

The keys are returned in alphabetical order, regardless of insertion order.

To import and use `keys` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.keys
```

**Example**

```ts
import * as Trie from "effect/Trie"

const trie = Trie.empty<number>().pipe(Trie.insert("cab", 0), Trie.insert("abc", 1), Trie.insert("bca", 2))

const result = Array.from(Trie.keys(trie))
assert.deepStrictEqual(result, ["abc", "bca", "cab"])
```

**Signature**

```ts
export declare const keys: <V>(self: Trie<V>) => IterableIterator<string>
```
