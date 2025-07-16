Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Refinement

Represents a function that serves as a type guard.

A `Refinement<A, B>` is a function that takes a value of type `A` and returns a
type predicate `a is B`, where `B` is a subtype of `A`. If the function returns
`true`, TypeScript will narrow the type of the input variable to `B`.

**Example**

```ts
import { Predicate } from "effect"
import * as assert from "node:assert"

const isString: Predicate.Refinement<unknown, string> = (u): u is string => typeof u === "string"

const value: unknown = "hello"

if (isString(value)) {
  // value is now known to be a string
  assert.strictEqual(value.toUpperCase(), "HELLO")
}
```

**Signature**

```ts
export interface Refinement<in A, out B extends A> {
  (a: A): a is B
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L81)

Since v2.0.0