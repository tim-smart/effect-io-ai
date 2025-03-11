## getMonoid

Lift a `Monoid` into `F`, combining the inner values using the provided `Monoid`:

- `combine` is provided by `semiApplicative.getSemigroup`.
- `empty` is `F.of(M.empty)`

**Signature**

```ts
declare const getMonoid: <F extends TypeLambda>(F: Applicative<F>) => <A, R, O, E>(M: Monoid<A>) => Monoid<Kind<F, R, O, E, A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Applicative.ts#L25)

Since v0.24.0