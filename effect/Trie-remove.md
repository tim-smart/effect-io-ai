# remove

Remove the entry for the specified key in the `Trie`.

To import and use `remove` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.remove
```

**Example**

```ts
import * as Trie from "effect/Trie"
import * as Option from "effect/Option"

const trie = Trie.empty<number>().pipe(
  Trie.insert("call", 0),
  Trie.insert("me", 1),
  Trie.insert("mind", 2),
  Trie.insert("mid", 3)
)

const trie1 = trie.pipe(Trie.remove("call"))
const trie2 = trie1.pipe(Trie.remove("mea"))

assert.deepStrictEqual(Trie.get(trie, "call"), Option.some(0))
assert.deepStrictEqual(Trie.get(trie1, "call"), Option.none())
assert.deepStrictEqual(Trie.get(trie2, "call"), Option.none())
```

**Signature**

```ts
export declare const remove: { (key: string): <V>(self: Trie<V>) => Trie<V>; <V>(self: Trie<V>, key: string): Trie<V> }
```
