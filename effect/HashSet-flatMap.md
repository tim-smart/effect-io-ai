# flatMap

Chains over the values of the `HashSet` using the specified function.

To import and use `flatMap` from the "HashSet" module:

ts
import \* as HashSet from "effect/HashSet"
// Can be accessed like this
HashSet.flatMap
undefined

**Signature**

```ts
export declare const flatMap: {
  <A, B>(f: (a: A) => Iterable<B>): (self: HashSet<A>) => HashSet<B>
  <A, B>(self: HashSet<A>, f: (a: A) => Iterable<B>): HashSet<B>
}
```
