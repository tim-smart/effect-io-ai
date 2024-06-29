# liftPredicate

Lifts a predicate into an array.

To import and use `liftPredicate` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.liftPredicate
```

**Example**

```ts
import { Array } from "effect"

const isEven = (n: number) => n % 2 === 0
const to = Array.liftPredicate(isEven)
assert.deepStrictEqual(to(1), [])
assert.deepStrictEqual(to(2), [2])
```

**Signature**

```ts
export declare const liftPredicate: {
  <A, B extends A>(refinement: Refinement<A, B>): (a: A) => B[]
  <A>(predicate: Predicate<A>): <B extends A>(b: B) => B[]
}
```
