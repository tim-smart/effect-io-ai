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
  <A, B extends A>(f: Refinement<A, B>): <K>(self: HashMap<K, A>) => HashMap<K, B>
  <A>(f: Predicate<A>): <K>(self: HashMap<K, A>) => HashMap<K, A>
  <K, A, B extends A>(self: HashMap<K, A>, f: Refinement<A, B>): HashMap<K, B>
  <K, A>(self: HashMap<K, A>, f: Predicate<A>): HashMap<K, A>
}
```
