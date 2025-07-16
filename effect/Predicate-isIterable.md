Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isIterable

A refinement that checks if a value is an `Iterable`.
Many built-in types are iterable, such as `Array`, `string`, `Map`, and `Set`.

**Example**

```ts
import * as assert from "node:assert"
import { isIterable } from "effect/Predicate"

assert.strictEqual(isIterable([]), true)
assert.strictEqual(isIterable("hello"), true)
assert.strictEqual(isIterable(new Set()), true)

assert.strictEqual(isIterable({}), false)
assert.strictEqual(isIterable(123), false)
```

**Signature**

```ts
declare const isIterable: (input: unknown) => input is Iterable<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L772)

Since v2.0.0