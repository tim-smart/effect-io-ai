## not

Negates the result of a given predicate.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate, Number } from "effect"

const isPositive = Predicate.not(Number.lessThan(0))

assert.deepStrictEqual(isPositive(-1), false)
assert.deepStrictEqual(isPositive(0), true)
assert.deepStrictEqual(isPositive(1), true)
```

**Signature**

```ts
declare const not: <A>(self: Predicate<A>) => Predicate<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L834)

Since v2.0.0