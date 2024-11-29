# take

Keep only a max number of elements from the start of an `Iterable`, creating a new `Iterable`.

**Note**. `n` is normalized to a non negative integer.

To import and use `take` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.take
undefined

**Signature**

```ts
export declare const take: {
  (n: number): <A>(self: Iterable<A>) => Iterable<A>
  <A>(self: Iterable<A>, n: number): Iterable<A>
}
```
