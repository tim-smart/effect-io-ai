# compact

Filters out `None` values from a `Trie` of `Options`s.

To import and use `compact` from the "Trie" module:

```ts
import * as Trie from "effect/Trie"
// Can be accessed like this
Trie.compact
```

**Example**

```ts
import { Trie, Equal, Option } from "effect"

const trie = Trie.empty<Option.Option<number>>().pipe(
  Trie.insert("shells", Option.some(0)),
  Trie.insert("sells", Option.none()),
  Trie.insert("she", Option.some(2))
)

const trieMapV = Trie.empty<number>().pipe(Trie.insert("shells", 0), Trie.insert("she", 2))

assert.equal(Equal.equals(Trie.compact(trie), trieMapV), true)
```

**Signature**

```ts
export declare const compact: <A>(self: Trie<Option<A>>) => Trie<A>
```
