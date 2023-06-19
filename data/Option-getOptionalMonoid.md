# getOptionalMonoid

Monoid that models the combination of values that may be absent, elements that are `None` are ignored
while elements that are `Some` are combined using the provided `Semigroup`.

The `empty` value is `none()`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'
import * as N from '@effect/data/Number'
import { pipe } from '@effect/data/Function'

const M = O.getOptionalMonoid(N.SemigroupSum)

assert.deepStrictEqual(M.combine(O.none(), O.none()), O.none())
assert.deepStrictEqual(M.combine(O.some(1), O.none()), O.some(1))
assert.deepStrictEqual(M.combine(O.none(), O.some(1)), O.some(1))
assert.deepStrictEqual(M.combine(O.some(1), O.some(2)), O.some(3))
```

**Signature**

```ts
export declare const getOptionalMonoid: <A>(Semigroup: Semigroup<A>) => Monoid<Option<A>>
```
