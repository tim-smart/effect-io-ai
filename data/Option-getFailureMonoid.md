# getFailureMonoid

Monoid that models the combination of computations that can fail, if at least one element is `None`
then the resulting combination is `None`, otherwise if all elements are `Some` then the resulting combination
is the combination of the wrapped elements using the provided `Monoid`.

The `empty` value is `some(M.empty)`.

See also `getFailureSemigroup` if you need a `Semigroup` instead of a `Monoid`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const getFailureMonoid: <A>(M: Monoid<A>) => Monoid<Option<A>>
```
