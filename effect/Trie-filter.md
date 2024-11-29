# filter

Filters entries out of a `Trie` using the specified predicate.

To import and use `filter` from the "Trie" module:

ts
import \* as Trie from "effect/Trie"
// Can be accessed like this
Trie.filter
undefined

**Example**

```ts
import { Trie, Equal } from "effect"

const trie = Trie.empty<number>().pipe(Trie.insert("shells", 0), Trie.insert("sells", 1), Trie.insert("she", 2))

const trieMapV = Trie.empty<number>().pipe(Trie.insert("she", 2))

const trieMapK = Trie.empty<number>().pipe(Trie.insert("shells", 0), Trie.insert("sells", 1))

assert.equal(
  Equal.equals(
    Trie.filter(trie, (v) => v > 1),
    trieMapV
  ),
  true
)
assert.equal(
  Equal.equals(
    Trie.filter(trie, (_, k) => k.length > 3),
    trieMapK
  ),
  true
)
```

**Signature**

```ts
export declare const filter: {
  <A, B extends A>(f: (a: NoInfer<A>, k: string) => a is B): (self: Trie<A>) => Trie<B>
  <A>(f: (a: NoInfer<A>, k: string) => boolean): (self: Trie<A>) => Trie<A>
  <A, B extends A>(self: Trie<A>, f: (a: A, k: string) => a is B): Trie<B>
  <A>(self: Trie<A>, f: (a: A, k: string) => boolean): Trie<A>
}
```
