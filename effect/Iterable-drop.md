# drop

Drop a max number of elements from the start of an `Iterable`

**Note**. `n` is normalized to a non negative integer.

To import and use `drop` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.drop
undefined

**Signature**

```ts
export declare const drop: {
  (n: number): <A>(self: Iterable<A>) => Iterable<A>
  <A>(self: Iterable<A>, n: number): Iterable<A>
}
```
