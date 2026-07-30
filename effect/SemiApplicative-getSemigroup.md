Package: `@effect/typeclass`<br />
Module: `SemiApplicative`<br />

## SemiApplicative.getSemigroup

Lift a `Semigroup` into 'F', the inner values are combined using the provided `Semigroup`.

**Signature**

```ts
declare const getSemigroup: <F extends TypeLambda>(F: SemiApplicative<F>) => <A, R, O, E>(S: Semigroup<A>) => Semigroup<Kind<F, R, O, E, A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/SemiApplicative.ts#L23)

Since v0.24.0