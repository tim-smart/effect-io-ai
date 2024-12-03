# fromIterable

Creates a new `Trie` from an iterable collection of key/value pairs (e.g. `Array<[string, V]>`).

To import and use `fromIterable` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.fromIterable
```

**Example**

```ts
import { Trie, Equal } from "effect"

const iterable: Array<readonly [string, number]> = [
  ["call", 0],
  ["me", 1],
  ["mind", 2],
  ["mid", 3]
]
const trie = Trie.fromIterable(iterable)

// The entries in the `Trie` are extracted in alphabetical order, regardless of the insertion order
assert.deepStrictEqual(Array.from(trie), [
  ["call", 0],
  ["me", 1],
  ["mid", 3],
  ["mind", 2]
])
assert.equal(Equal.equals(Trie.make(["call", 0], ["me", 1], ["mind", 2], ["mid", 3]), trie), true)
```

**Signature**

```ts
export declare const fromIterable: <V>(entries: Iterable<readonly [string, V]>) => Trie<V>
```
