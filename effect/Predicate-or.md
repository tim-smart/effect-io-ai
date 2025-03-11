## or

Combines two predicates into a new predicate that returns `true` if at least one of the predicates returns `true`.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate, Number } from "effect"

const nonZero = Predicate.or(Number.lessThan(0), Number.greaterThan(0))

assert.deepStrictEqual(nonZero(-1), true)
assert.deepStrictEqual(nonZero(0), false)
assert.deepStrictEqual(nonZero(1), true)
```

**Signature**

```ts
declare const or: { <A, C extends A>(that: Refinement<A, C>): <B extends A>(self: Refinement<A, B>) => Refinement<A, B | C>; <A, B extends A, C extends A>(self: Refinement<A, B>, that: Refinement<A, C>): Refinement<A, B | C>; <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L854)

Since v2.0.0