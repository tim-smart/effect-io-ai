Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isFunction

A refinement that checks if a value is a `Function`.

**Example**

```ts
import * as assert from "node:assert"
import { isFunction } from "effect/Predicate"

assert.strictEqual(isFunction(() => {}), true)
assert.strictEqual(isFunction(isFunction), true)

assert.strictEqual(isFunction("function"), false)
```

**Signature**

```ts
declare const isFunction: (input: unknown) => input is Function
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L439)

Since v2.0.0