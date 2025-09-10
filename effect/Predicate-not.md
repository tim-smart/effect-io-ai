Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.not

Returns a new predicate that is the logical negation of the given predicate.

**Note**: If the input is a `Refinement`, the resulting predicate will be a
simple `Predicate`, as TypeScript cannot infer the negative type.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate, Number } from "effect"

const isNonPositive = Predicate.not(Number.greaterThan(0))

assert.strictEqual(isNonPositive(-1), true)
assert.strictEqual(isNonPositive(0), true)
assert.strictEqual(isNonPositive(1), false)
```

**Signature**

```ts
declare const not: <A>(self: Predicate<A>) => Predicate<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1103)

Since v2.0.0