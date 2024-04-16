# containsWith

Returns a function that checks if a `ReadonlyArray` contains a given value using a provided `isEquivalent` function.

To import and use `containsWith` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.containsWith
```

**Signature**

```ts
export declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (a: A): (self: Iterable<A>) => boolean
  (self: Iterable<A>, a: A): boolean
}
```
