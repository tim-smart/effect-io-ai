# flatMapWithIndex

Chains over the entries of the `HashMap` using the specified function.

**NOTE**: the hash and equal of both maps have to be the same.

To import and use `flatMapWithIndex` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.flatMapWithIndex
```

**Signature**

```ts
export declare const flatMapWithIndex: {
  <A, K, B>(f: (value: A, key: K) => HashMap<K, B>): (self: HashMap<K, A>) => HashMap<K, B>
  <K, A, B>(self: HashMap<K, A>, f: (value: A, key: K) => HashMap<K, B>): HashMap<K, B>
}
```
