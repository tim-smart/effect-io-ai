Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.swap

Swaps the two elements of a tuple.

**Example**

```ts
import * as assert from "node:assert"
import { swap } from "effect/Tuple"

assert.deepStrictEqual(swap(["hello", 42]), [42, "hello"])
```

**Signature**

```ts
declare const swap: <L, R>(self: readonly [L, R]) => [R, L]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L196)

Since v2.0.0