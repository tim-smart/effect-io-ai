Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.xor

Combines two predicates with a logical "XOR" (exclusive OR). The resulting predicate
returns `true` if one of the predicates returns `true`, but not both.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

const isPositive = (n: number) => n > 0
const isEven = (n: number) => n % 2 === 0

const isPositiveXorEven = Predicate.xor(isPositive, isEven)

assert.strictEqual(isPositiveXorEven(4), false)  // both true -> false
assert.strictEqual(isPositiveXorEven(3), true)   // one true -> true
assert.strictEqual(isPositiveXorEven(-2), true)  // one true -> true
assert.strictEqual(isPositiveXorEven(-1), false) // both false -> false
```

**Signature**

```ts
declare const xor: { <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1208)

Since v2.0.0