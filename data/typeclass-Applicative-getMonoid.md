# getMonoid

Lift a `Monoid` into `F`, combining the inner values using the provided `Monoid`:

- `combine` is provided by {@link semiApplicative.getSemigroup}.
- `empty` is `F.of(M.empty)`

Part of the `Applicative` module, imported from `@effect/data/typeclass/Applicative`.

**Signature**

```ts
export declare const getMonoid: <F extends TypeLambda>(
  F: Applicative<F>
) => <A, R, O, E>(M: Monoid<A>) => Monoid<Kind<F, R, O, E, A>>
```
