## isIterable

A guard that succeeds when the input is an `Iterable`.

**Example**

```ts
import * as assert from "node:assert"
import { isIterable } from "effect/Predicate"

assert.deepStrictEqual(isIterable([]), true)
assert.deepStrictEqual(isIterable(new Set()), true)

assert.deepStrictEqual(isIterable(null), false)
assert.deepStrictEqual(isIterable({}), false)
```

**Signature**

```ts
declare const isIterable: (input: unknown) => input is Iterable<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L614)

Since v2.0.0