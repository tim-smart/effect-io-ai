# zip

Takes two `Iterable`s and returns an `Iterable` of corresponding pairs.

To import and use `zip` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.zip
undefined

**Signature**

```ts
export declare const zip: {
  <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<[A, B]>
  <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<[A, B]>
}
```
