Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.hasProperty

A refinement that checks if a value is an object-like value and has a specific property key.

**Example**

```ts
import * as assert from "node:assert"
import { hasProperty } from "effect/Predicate"

assert.strictEqual(hasProperty({ a: 1 }, "a"), true)
assert.strictEqual(hasProperty({ a: 1 }, "b"), false)

const value: unknown = { name: "Alice" };
if (hasProperty(value, "name")) {
  // The type of `value` is narrowed to `{ name: unknown }`
  // and we can safely access `value.name`
  console.log(value.name)
}
```

**Signature**

```ts
declare const hasProperty: { <P extends PropertyKey>(property: P): (self: unknown) => self is { [K in P]: unknown; }; <P extends PropertyKey>(self: unknown, property: P): self is { [K in P]: unknown; }; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L604)

Since v2.0.0