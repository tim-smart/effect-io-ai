# every

Returns `true` only if all values in the `HashSet` match the specified
predicate.

To import and use `every` from the "HashSet" module:

```ts
import * as HashSet from '@effect/data/HashSet'

// Can be accessed like this
HashSet.every
```

**Signature**

```ts
export declare const every: {
  <A>(f: Predicate<A>): (self: HashSet<A>) => boolean
  <A>(self: HashSet<A>, f: Predicate<A>): boolean
}
```
