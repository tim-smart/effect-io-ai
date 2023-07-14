# filter

Filters entries out of a `HashMap` using the specified predicate.

To import and use `filter` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.filter
```

**Signature**

```ts
export declare const filter: {
  <K, A, B extends A>(f: (a: A, k: K) => a is B): (self: HashMap<K, A>) => HashMap<K, B>
  <K, A>(f: (a: A, k: K) => boolean): (self: HashMap<K, A>) => HashMap<K, A>
  <K, A, B extends A>(self: HashMap<K, A>, f: (a: A, k: K) => a is B): HashMap<K, B>
  <K, A>(self: HashMap<K, A>, f: (a: A, k: K) => boolean): HashMap<K, A>
}
```
