# make

Constructs a new `Trie` from the specified entries (`[string, V]`).

To import and use `make` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.make
```

**Example**

```ts
import { Trie, Equal } from "effect"

const trie = Trie.make(["ca", 0], ["me", 1])

assert.deepStrictEqual(Array.from(trie), [
  ["ca", 0],
  ["me", 1]
])
assert.equal(
  Equal.equals(
    Trie.fromIterable([
      ["ca", 0],
      ["me", 1]
    ]),
    trie
  ),
  true
)
```

**Signature**

```ts
export declare const make: <Entries extends (readonly [string, any])[]>(
  ...entries: Entries
) => Trie<Entries[number] extends readonly [any, infer V] ? V : never>
```
