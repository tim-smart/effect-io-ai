# isSubset

Returns `true` if and only if every element in the this `HashSet` is an
element of the second set,

**NOTE**: the hash and equal of both sets must be the same.

To import and use `isSubset` from the "HashSet" module:

```ts
import * as HashSet from 'effect/HashSet'

// Can be accessed like this
HashSet.isSubset
```

**Signature**

```ts
export declare const isSubset: {
  <A>(that: HashSet<A>): (self: HashSet<A>) => boolean
  <A>(self: HashSet<A>, that: HashSet<A>): boolean
}
```
