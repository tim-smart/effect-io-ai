Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.every

Takes an iterable of predicates and returns a new predicate. The new predicate
returns `true` if all predicates in the collection return `true` for a given value.

This is like `Array.prototype.every` but for a collection of predicates.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

const isPositive = (n: number) => n > 0
const isEven = (n: number) => n % 2 === 0

const isPositiveAndEven = Predicate.every([isPositive, isEven])

assert.strictEqual(isPositiveAndEven(4), true)
assert.strictEqual(isPositiveAndEven(3), false)
assert.strictEqual(isPositiveAndEven(-2), false)
```

**See**

- some

**Signature**

```ts
declare const every: <A>(collection: Iterable<Predicate<A>>) => Predicate<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1364)

Since v2.0.0