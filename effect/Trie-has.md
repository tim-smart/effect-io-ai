# has

Check if the given key exists in the `Trie`.

To import and use `has` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.has
```

**Example**

```ts
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("call", 0),
  Trie.insert("me", 1),
  Trie.insert("mind", 2),
  Trie.insert("mid", 3)
)

assert.equal(Trie.has(trie, "call"), true)
assert.equal(Trie.has(trie, "me"), true)
assert.equal(Trie.has(trie, "mind"), true)
assert.equal(Trie.has(trie, "mid"), true)
assert.equal(Trie.has(trie, "cale"), false)
assert.equal(Trie.has(trie, "ma"), false)
assert.equal(Trie.has(trie, "midn"), false)
assert.equal(Trie.has(trie, "mea"), false)
```

**Signature**

```ts
export declare const has: { (key: string): <V>(self: Trie<V>) => boolean; <V>(self: Trie<V>, key: string): boolean }
```
