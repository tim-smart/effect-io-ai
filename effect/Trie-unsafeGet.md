# unsafeGet

Unsafely lookup the value for the specified key in the `Trie`.

`unsafeGet` will throw if the key is not found. Use `get` instead to safely
get a value from the `Trie`.

To import and use `unsafeGet` from the "Trie" module:

ts
import \* as Trie from "effect/Trie"
// Can be accessed like this
Trie.unsafeGet
undefined

**Example**

```ts
import { Trie } from "effect"

const trie = Trie.empty<number>().pipe(Trie.insert("call", 0), Trie.insert("me", 1))

assert.throws(() => Trie.unsafeGet(trie, "mae"))
```

**Signature**

```ts
export declare const unsafeGet: { (key: string): <V>(self: Trie<V>) => V; <V>(self: Trie<V>, key: string): V }
```
