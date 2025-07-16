Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Predicate

Represents a function that takes a value of type `A` and returns `true` if the value
satisfies some condition, `false` otherwise.

**Example**

```ts
import { Predicate } from "effect"
import * as assert from "node:assert"

const isEven: Predicate.Predicate<number> = (n) => n % 2 === 0

assert.strictEqual(isEven(2), true)
assert.strictEqual(isEven(3), false)
```

**Signature**

```ts
export interface Predicate<in A> {
  (a: A): boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L41)

Since v2.0.0