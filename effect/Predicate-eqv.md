Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.eqv

Combines two predicates with a logical "EQV" (equivalence). The resulting predicate
returns `true` if both predicates return the same boolean value (both `true` or both `false`).

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

const isPositive = (n: number) => n > 0
const isEven = (n: number) => n % 2 === 0

const isPositiveEqvEven = Predicate.eqv(isPositive, isEven)

assert.strictEqual(isPositiveEqvEven(4), true)   // both true -> true
assert.strictEqual(isPositiveEqvEven(3), false)  // different -> false
assert.strictEqual(isPositiveEqvEven(-2), false) // different -> false
assert.strictEqual(isPositiveEqvEven(-1), true)  // both false -> true
```

**Signature**

```ts
declare const eqv: { <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1236)

Since v2.0.0