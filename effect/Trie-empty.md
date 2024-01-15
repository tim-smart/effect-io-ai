# empty

Creates an empty `Trie`.

To import and use `empty` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.empty
```

**Example**

```ts
import * as Trie from "effect/Trie"
import * as Equal from "effect/Equal"

const trie = Trie.empty<string>()

assert.equal(Trie.size(trie), 0)
assert.deepStrictEqual(Array.from(trie), [])
```

**Signature**

```ts
export declare const empty: <V = never>() => Trie<V>
```
