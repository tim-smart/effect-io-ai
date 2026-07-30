Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.some

Takes an iterable of predicates and returns a new predicate. The new predicate
returns `true` if at least one predicate in the collection returns `true` for a given value.

This is like `Array.prototype.some` but for a collection of predicates.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

const isNegative = (n: number) => n < 0
const isOdd = (n: number) => n % 2 !== 0

const isNegativeOrOdd = Predicate.some([isNegative, isOdd])

assert.strictEqual(isNegativeOrOdd(-2), true) // isNegative is true
assert.strictEqual(isNegativeOrOdd(3), true)  // isOdd is true
assert.strictEqual(isNegativeOrOdd(4), false) // both are false
```

**See**

- every

**Signature**

```ts
declare const some: <A>(collection: Iterable<Predicate<A>>) => Predicate<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1398)

Since v2.0.0