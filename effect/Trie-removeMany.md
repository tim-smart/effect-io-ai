# removeMany

Removes all entries in the `Trie` which have the specified keys.

To import and use `removeMany` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.removeMany
```

**Example**

```ts
import * as Trie from "effect/Trie"
import * as Equal from "effect/Equal"

const trie = Trie.empty<number>().pipe(Trie.insert("shells", 0), Trie.insert("sells", 1), Trie.insert("she", 2))

assert.equal(
  Equal.equals(trie.pipe(Trie.removeMany(["she", "sells"])), Trie.empty<number>().pipe(Trie.insert("shells", 0))),
  true
)
```

**Signature**

```ts
export declare const removeMany: {
  (keys: Iterable<string>): <V>(self: Trie<V>) => Trie<V>
  <V>(self: Trie<V>, keys: Iterable<string>): Trie<V>
}
```
