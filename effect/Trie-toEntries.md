# toEntries

Returns an `Array<[K, V]>` of the entries within the `Trie`.

Equivalent to `Array.from(Trie.entries(trie))`.

To import and use `toEntries` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.toEntries
```

**Example**

```ts
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(Trie.insert("call", 0), Trie.insert("me", 1))
const result = Trie.toEntries(trie)

assert.deepStrictEqual(result, [
  ["call", 0],
  ["me", 1]
])
```

**Signature**

```ts
export declare const toEntries: <V>(self: Trie<V>) => Array<[string, V]>
```
