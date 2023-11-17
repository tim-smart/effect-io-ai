# not

Negates the result of a given predicate.

To import and use `not` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.not
```

**Example**

```ts
import * as P from "effect/Predicate"
import * as N from "effect/Number"

const isPositive = P.not(N.lessThan(0))

assert.deepStrictEqual(isPositive(-1), false)
assert.deepStrictEqual(isPositive(0), true)
assert.deepStrictEqual(isPositive(1), true)
```

**Signature**

```ts
export declare const not: <A>(self: Predicate<A>) => Predicate<A>
```
