Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTagged

A refinement that checks if a value is an object with a `_tag` property
that matches the given tag. This is a powerful tool for working with
discriminated union types.

**Example**

```ts
import * as assert from "node:assert"
import { isTagged } from "effect/Predicate"

type Shape = { _tag: "circle"; radius: number } | { _tag: "square"; side: number }

const isCircle = isTagged("circle")

const shape1: Shape = { _tag: "circle", radius: 10 }
const shape2: Shape = { _tag: "square", side: 5 }

assert.strictEqual(isCircle(shape1), true)
assert.strictEqual(isCircle(shape2), false)

if (isCircle(shape1)) {
  // shape1 is now narrowed to { _tag: "circle"; radius: number }
  assert.strictEqual(shape1.radius, 10)
}
```

**Signature**

```ts
declare const isTagged: { <K extends string>(tag: K): (self: unknown) => self is { _tag: K; }; <K extends string>(self: unknown, tag: K): self is { _tag: K; }; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L642)

Since v2.0.0