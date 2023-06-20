# getSemigroup

Lift a `Semigroup` into 'F', the inner values are combined using the provided `Semigroup`.

To import and use `getSemigroup` from the "SemiApplicative" module:

```ts
import * as SemiApplicative from '@effect/data/typeclass/SemiApplicative'

// Can be accessed like this
SemiApplicative.getSemigroup
```

**Signature**

```ts
export declare const getSemigroup: <F extends TypeLambda>(
  F: SemiApplicative<F>
) => <A, R, O, E>(S: Semigroup<A>) => Semigroup<Kind<F, R, O, E, A>>
```
