Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isPromiseLike

A refinement that checks if a value is `PromiseLike`. It performs a duck-typing
check for a `.then` method.

**Example**

```ts
import * as assert from "node:assert"
import { isPromiseLike } from "effect/Predicate"

assert.strictEqual(isPromiseLike(Promise.resolve(1)), true)
assert.strictEqual(isPromiseLike({ then: () => {} }), true)

assert.strictEqual(isPromiseLike({}), false)
```

**See**

- isPromise

**Signature**

```ts
declare const isPromiseLike: (input: unknown) => input is PromiseLike<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L869)

Since v2.0.0