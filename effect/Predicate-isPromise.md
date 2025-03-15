Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isPromise

A guard that succeeds when the input is a Promise.

**Example**

```ts
import * as assert from "node:assert"
import { isPromise } from "effect/Predicate"

assert.deepStrictEqual(isPromise({}), false)
assert.deepStrictEqual(isPromise(Promise.resolve("hello")), true)
```

**Signature**

```ts
declare const isPromise: (input: unknown) => input is Promise<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L683)

Since v2.0.0