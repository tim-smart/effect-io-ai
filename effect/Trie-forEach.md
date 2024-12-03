# forEach

Applies the specified function to the entries of the `Trie`.

To import and use `forEach` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.forEach
```

**Example**

```ts
import { Trie } from "effect"

let value = 0

Trie.empty<number>().pipe(
  Trie.insert("shells", 0),
  Trie.insert("sells", 1),
  Trie.insert("she", 2),
  Trie.forEach((n, key) => {
    value += n + key.length
  })
)

assert.equal(value, 17)
```

**Signature**

```ts
export declare const forEach: {
  <V>(f: (value: V, key: string) => void): (self: Trie<V>) => void
  <V>(self: Trie<V>, f: (value: V, key: string) => void): void
}
```
