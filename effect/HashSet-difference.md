# difference

Computes the set difference between this `HashSet` and the specified
`Iterable<A>`.

**NOTE**: the hash and equal of the values in both the set and the iterable
must be the same.

To import and use `difference` from the "HashSet" module:

```ts
import * as HashSet from 'effect/HashSet'

// Can be accessed like this
HashSet.difference
```

**Signature**

```ts
export declare const difference: {
  <A>(that: Iterable<A>): (self: HashSet<A>) => HashSet<A>
  <A>(self: HashSet<A>, that: Iterable<A>): HashSet<A>
}
```
