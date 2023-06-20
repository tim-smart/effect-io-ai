# getFailureMonoid

Monoid that models the combination of computations that can fail, if at least one element is `None`
then the resulting combination is `None`, otherwise if all elements are `Some` then the resulting combination
is the combination of the wrapped elements using the provided `Monoid`.

The `empty` value is `some(M.empty)`.

See also `getFailureSemigroup` if you need a `Semigroup` instead of a `Monoid`.

To import and use `getFailureMonoid` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.getFailureMonoid
```

**Signature**

```ts
export declare const getFailureMonoid: <A>(M: Monoid<A>) => Monoid<Option<A>>
```
