# toRefinement

Returns a type guard from a `Option` returning function.
This function ensures that a type guard definition is type-safe.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

const parsePositive = (n: number): O.Option<number> => (n > 0 ? O.some(n) : O.none())

const isPositive = O.toRefinement(parsePositive)

assert.deepStrictEqual(isPositive(1), true)
assert.deepStrictEqual(isPositive(-1), false)
```

**Signature**

```ts
export declare const toRefinement: <A, B extends A>(f: (a: A) => Option<B>) => (a: A) => a is B
```
