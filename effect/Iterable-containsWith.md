# containsWith

Returns a function that checks if an `Iterable` contains a given value using a provided `isEquivalent` function.

To import and use `containsWith` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.containsWith
undefined

**Signature**

```ts
export declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (a: A): (self: Iterable<A>) => boolean
  (self: Iterable<A>, a: A): boolean
}
```
