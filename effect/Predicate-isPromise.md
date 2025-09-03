Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isPromise

A refinement that checks if a value is a `Promise`. It performs a duck-typing check
for `.then` and `.catch` methods.

**Example**

```ts
import * as assert from "node:assert"
import { isPromise } from "effect/Predicate"

assert.strictEqual(isPromise(Promise.resolve(1)), true)
assert.strictEqual(isPromise(new Promise(() => {})), true)

assert.strictEqual(isPromise({ then() {} }), false) // Missing .catch
assert.strictEqual(isPromise({}), false)
```

**See**

- isPromiseLike

**Signature**

```ts
declare const isPromise: (input: unknown) => input is Promise<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L845)

Since v2.0.0