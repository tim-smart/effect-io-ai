# some

Returns `true` if any value in the `HashSet` matches the specified predicate.

To import and use `some` from the "HashSet" module:

```ts
import * as HashSet from '@effect/data/HashSet'

// Can be accessed like this
HashSet.some
```

**Signature**

```ts
export declare const some: {
  <A>(f: Predicate<A>): (self: HashSet<A>) => boolean
  <A>(self: HashSet<A>, f: Predicate<A>): boolean
}
```