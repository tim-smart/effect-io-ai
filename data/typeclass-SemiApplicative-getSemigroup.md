# getSemigroup

Lift a `Semigroup` into 'F', the inner values are combined using the provided `Semigroup`.

Part of the `SemiApplicative` module, imported from `@effect/data/typeclass/SemiApplicative`.

**Signature**

```ts
export declare const getSemigroup: <F extends TypeLambda>(
  F: SemiApplicative<F>
) => <A, R, O, E>(S: Semigroup<A>) => Semigroup<Kind<F, R, O, E, A>>
```
