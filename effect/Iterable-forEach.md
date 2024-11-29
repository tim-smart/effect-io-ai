# forEach

Iterate over the `Iterable` applying `f`.

To import and use `forEach` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.forEach
undefined

**Signature**

```ts
export declare const forEach: {
  <A>(f: (a: A, i: number) => void): (self: Iterable<A>) => void
  <A>(self: Iterable<A>, f: (a: A, i: number) => void): void
}
```
