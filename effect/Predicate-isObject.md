Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isObject

A refinement that checks if a value is an `object`. Note that in JavaScript,
arrays and functions are also considered objects.

**Example**

```ts
import * as assert from "node:assert"
import { isObject } from "effect/Predicate"

assert.strictEqual(isObject({}), true)
assert.strictEqual(isObject([]), true)
assert.strictEqual(isObject(() => {}), true)

assert.strictEqual(isObject(null), false)
assert.strictEqual(isObject("hello"), false)
```

**See**

- isRecord to check for plain objects (excluding arrays and functions).

**Signature**

```ts
declare const isObject: (input: unknown) => input is object
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L581)

Since v2.0.0