# array

Given a type `A`, this function creates and returns a `Semigroup` for `ReadonlyArray<A>`.

The `empty` value is the empty array.

Part of the `Monoid` module, imported from `@effect/data/typeclass/Monoid`.

**Signature**

```ts
export declare const array: <A>() => Monoid<readonly A[]>
```
