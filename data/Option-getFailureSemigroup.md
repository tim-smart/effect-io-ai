# getFailureSemigroup

Semigroup that models the combination of computations that can fail, if at least one element is `None`
then the resulting combination is `None`, otherwise if all elements are `Some` then the resulting combination
is the combination of the wrapped elements using the provided `Semigroup`.

See also `getFailureMonoid` if you need a `Monoid` instead of a `Semigroup`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const getFailureSemigroup: <A>(S: Semigroup<A>) => Semigroup<Option<A>>
```
