# array

Given a type `A`, this function creates and returns a `Semigroup` for `ReadonlyArray<A>`.

The `empty` value is the empty array.

To import and use `array` from the "Monoid" module:

```ts
import * as Monoid from "@effect/typeclass/Monoid"
// Can be accessed like this
Monoid.array
```

**Signature**

```ts
export declare const array: <A>() => Monoid<readonly A[]>
```
