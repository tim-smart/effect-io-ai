# getFirstLeftMonoid

`Monoid` returning the left-most `Left` value. If both operands are `Right`s then the inner values
are combined using the provided `Monoid`.

- `combine` is provided by {@link getFirstLeftSemigroup}.
- `empty` is `right(M.empty)`

To import and use `getFirstLeftMonoid` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.getFirstLeftMonoid
```

**Signature**

```ts
export declare const getFirstLeftMonoid: <A, E>(M: Monoid<A>) => Monoid<Either<E, A>>
```
