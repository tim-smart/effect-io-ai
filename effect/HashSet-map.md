# map

Maps over the values of the `HashSet` using the specified function.

To import and use `map` from the "HashSet" module:

```ts
import * as HashSet from 'effect/HashSet'

// Can be accessed like this
HashSet.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): (self: HashSet<A>) => HashSet<B>
  <A, B>(self: HashSet<A>, f: (a: A) => B): HashSet<B>
}
```
