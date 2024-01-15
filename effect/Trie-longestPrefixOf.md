# longestPrefixOf

Returns the longest key/value in the `Trie`
that is a prefix of that `key` if it exists, `None` otherwise.

To import and use `longestPrefixOf` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.longestPrefixOf
```

**Example**

```ts
import * as Trie from "effect/Trie"
import * as Option from "effect/Option"

const trie = Trie.empty<number>().pipe(Trie.insert("shells", 0), Trie.insert("sells", 1), Trie.insert("she", 2))

assert.deepStrictEqual(Trie.longestPrefixOf(trie, "sell"), Option.none())
assert.deepStrictEqual(Trie.longestPrefixOf(trie, "sells"), Option.some(["sells", 1]))
assert.deepStrictEqual(Trie.longestPrefixOf(trie, "shell"), Option.some(["she", 2]))
assert.deepStrictEqual(Trie.longestPrefixOf(trie, "shellsort"), Option.some(["shells", 0]))
```

**Signature**

```ts
export declare const longestPrefixOf: {
  (key: string): <V>(self: Trie<V>) => Option<[string, V]>
  <V>(self: Trie<V>, key: string): Option<[string, V]>
}
```
