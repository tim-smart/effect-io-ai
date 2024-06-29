# get

Safely lookup the value for the specified key in the `Trie`.

To import and use `get` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.get
```

**Example**

```ts
import { Trie, Option } from "effect"

const trie = Trie.empty<number>().pipe(
  Trie.insert("call", 0),
  Trie.insert("me", 1),
  Trie.insert("mind", 2),
  Trie.insert("mid", 3)
)

assert.deepStrictEqual(Trie.get(trie, "call"), Option.some(0))
assert.deepStrictEqual(Trie.get(trie, "me"), Option.some(1))
assert.deepStrictEqual(Trie.get(trie, "mind"), Option.some(2))
assert.deepStrictEqual(Trie.get(trie, "mid"), Option.some(3))
assert.deepStrictEqual(Trie.get(trie, "cale"), Option.none())
assert.deepStrictEqual(Trie.get(trie, "ma"), Option.none())
assert.deepStrictEqual(Trie.get(trie, "midn"), Option.none())
assert.deepStrictEqual(Trie.get(trie, "mea"), Option.none())
```

**Signature**

```ts
export declare const get: { (key: string): <V>(self: Trie<V>) => Option<V>; <V>(self: Trie<V>, key: string): Option<V> }
```
