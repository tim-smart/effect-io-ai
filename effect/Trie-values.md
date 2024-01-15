# values

Returns an `IterableIterator` of the values within the `Trie`.

Values are ordered based on their key in alphabetical order, regardless of insertion order.

To import and use `values` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.values
```

**Example**

```ts
import * as Trie from "effect/Trie"

const trie = Trie.empty<number>().pipe(Trie.insert("call", 0), Trie.insert("me", 1), Trie.insert("and", 2))

const result = Array.from(Trie.values(trie))
assert.deepStrictEqual(result, [2, 0, 1])
```

**Signature**

```ts
export declare const values: <V>(self: Trie<V>) => IterableIterator<V>
```
