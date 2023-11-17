# reduce

Reduces the specified state over the values of the `HashSet`.

To import and use `reduce` from the "HashSet" module:

```ts
import * as HashSet from "effect/HashSet"
// Can be accessed like this
HashSet.reduce
```

**Signature**

```ts
export declare const reduce: {
  <A, Z>(zero: Z, f: (accumulator: Z, value: A) => Z): (self: HashSet<A>) => Z
  <A, Z>(self: HashSet<A>, zero: Z, f: (accumulator: Z, value: A) => Z): Z
}
```
