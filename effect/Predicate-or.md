# or

Combines two predicates into a new predicate that returns `true` if at least one of the predicates returns `true`.

To import and use `or` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.or
```

**Example**

```ts
import * as P from "effect/Predicate"
import * as N from "effect/Number"

const nonZero = P.or(N.lessThan(0), N.greaterThan(0))

assert.deepStrictEqual(nonZero(-1), true)
assert.deepStrictEqual(nonZero(0), false)
assert.deepStrictEqual(nonZero(1), true)
```

**Signature**

```ts
export declare const or: {
  <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>
  <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>
}
```
