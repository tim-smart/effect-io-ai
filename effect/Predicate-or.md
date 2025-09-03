Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.or

Combines two predicates with a logical "OR". The resulting predicate returns `true`
if at least one of the predicates returns `true`.

If both predicates are `Refinement`s, the resulting predicate is a `Refinement` to the
union of their target types (`B | C`).

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

const isString = (u: unknown): u is string => typeof u === "string"
const isNumber = (u: unknown): u is number => typeof u === "number"

const isStringOrNumber = Predicate.or(isString, isNumber)

assert.strictEqual(isStringOrNumber("hello"), true)
assert.strictEqual(isStringOrNumber(123), true)
assert.strictEqual(isStringOrNumber(null), false)

const value: unknown = "world"
if (isStringOrNumber(value)) {
  // value is narrowed to string | number
  console.log(value)
}
```

**Signature**

```ts
declare const or: { <A, C extends A>(that: Refinement<A, C>): <B extends A>(self: Refinement<A, B>) => Refinement<A, B | C>; <A, B extends A, C extends A>(self: Refinement<A, B>, that: Refinement<A, C>): Refinement<A, B | C>; <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1137)

Since v2.0.0