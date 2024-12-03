# reduce

Reduce a state over the entries of the `Trie`.

To import and use `reduce` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.reduce
```

**Example**

```ts
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(Trie.insert("shells", 0), Trie.insert("sells", 1), Trie.insert("she", 2))

assert.equal(trie.pipe(Trie.reduce(0, (acc, n) => acc + n)), 3)
assert.equal(trie.pipe(Trie.reduce(10, (acc, n) => acc + n)), 13)
assert.equal(trie.pipe(Trie.reduce("", (acc, _, key) => acc + key)), "sellssheshells")
```

**Signature**

```ts
export declare const reduce: {
  <Z, V>(zero: Z, f: (accumulator: Z, value: V, key: string) => Z): (self: Trie<V>) => Z
  <Z, V>(self: Trie<V>, zero: Z, f: (accumulator: Z, value: V, key: string) => Z): Z
}
```
