# entries

Returns an `IterableIterator` of the entries within the `Trie`.

The entries are returned by keys in alphabetical order, regardless of insertion order.

To import and use `entries` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.entries
```

**Example**

```ts
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(Trie.insert("call", 0), Trie.insert("me", 1))

const result = Array.from(Trie.entries(trie))
assert.deepStrictEqual(result, [
  ["call", 0],
  ["me", 1]
])
```

**Signature**

```ts
export declare const entries: <V>(self: Trie<V>) => IterableIterator<[string, V]>
```
