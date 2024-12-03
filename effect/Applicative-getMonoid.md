# getMonoid

Lift a `Monoid` into `F`, combining the inner values using the provided `Monoid`:

- `combine` is provided by {@link semiApplicative.getSemigroup}.
- `empty` is `F.of(M.empty)`

To import and use `getMonoid` from the "Applicative" module:

```ts
import * as Applicative from "@effect/typeclass/Applicative"
// Can be accessed like this
Applicative.getMonoid
```

**Signature**

```ts
export declare const getMonoid: <F extends TypeLambda>(
  F: Applicative<F>
) => <A, R, O, E>(M: Monoid<A>) => Monoid<Kind<F, R, O, E, A>>
```
