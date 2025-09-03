Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.compose

Composes a `Refinement` with another `Refinement` or `Predicate`.

This can be used to chain checks. The first refinement is applied, and if it
passes, the second check is applied to the same value, potentially refining
the type further.

**Example**

```ts
import { Predicate } from "effect"
import * as assert from "node:assert"

const isString = (u: unknown): u is string => typeof u === "string"
const minLength = (n: number) => (s: string): boolean => s.length >= n

// Create a refinement that checks for a string with a minimum length of 3
const isLongString = Predicate.compose(isString, minLength(3))

let value: unknown = "hello"

assert.strictEqual(isLongString(value), true)
if (isLongString(value)) {
  // value is narrowed to string
  assert.strictEqual(value.toUpperCase(), "HELLO")
}
assert.strictEqual(isLongString("hi"), false)
```

**Signature**

```ts
declare const compose: { <A, B extends A, C extends B, D extends C>(bc: Refinement<C, D>): (ab: Refinement<A, B>) => Refinement<A, D>; <A, B extends A>(bc: Predicate<NoInfer<B>>): (ab: Refinement<A, B>) => Refinement<A, B>; <A, B extends A, C extends B, D extends C>(ab: Refinement<A, B>, bc: Refinement<C, D>): Refinement<A, D>; <A, B extends A>(ab: Refinement<A, B>, bc: Predicate<NoInfer<B>>): Refinement<A, B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L922)

Since v2.0.0