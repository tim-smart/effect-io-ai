# difference

Creates a `Array` of values not included in the other given `Iterable`.
The order and references of result values are determined by the first `Iterable`.

To import and use `difference` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.difference
```

**Signature**

```ts
export declare const difference: {
  <A>(that: Iterable<A>): (self: Iterable<A>) => A[]
  <A>(self: Iterable<A>, that: Iterable<A>): A[]
}
```
