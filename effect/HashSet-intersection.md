# intersection

Returns a `HashSet` of values which are present in both this set and that
`Iterable<A>`.

**NOTE**: the hash and equal of the values in both the set and the iterable
must be the same.

To import and use `intersection` from the "HashSet" module:

```ts
import * as HashSet from 'effect/HashSet'

// Can be accessed like this
HashSet.intersection
```

**Signature**

```ts
export declare const intersection: {
  <A>(that: Iterable<A>): (self: HashSet<A>) => HashSet<A>
  <A>(self: HashSet<A>, that: Iterable<A>): HashSet<A>
}
```
