# isEmpty

Checks if the `Trie` contains any entries.

To import and use `isEmpty` from the "Trie" module:

ts
import \* as Trie from "effect/Trie"
// Can be accessed like this
Trie.isEmpty
undefined

**Example**

```ts
import { Trie } from "effect"

const trie = Trie.empty<number>()
const trie1 = trie.pipe(Trie.insert("ma", 0))

assert.equal(Trie.isEmpty(trie), true)
assert.equal(Trie.isEmpty(trie1), false)
```

**Signature**

```ts
export declare const isEmpty: <V>(self: Trie<V>) => boolean
```
