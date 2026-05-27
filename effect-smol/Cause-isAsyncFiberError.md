Package: `effect`<br />
Module: `Cause`<br />

## Cause.isAsyncFiberError

Tests if an arbitrary value is an `AsyncFiberError`.

**Example** (runtime type check)

```ts
import { Cause } from "effect"
import type { Fiber } from "effect"

declare const fiber: Fiber.Fiber<unknown, unknown>

const error = new Cause.AsyncFiberError(fiber)
console.log(Cause.isAsyncFiberError(error)) // true
console.log(Cause.isAsyncFiberError("nope")) // false
```

**Signature**

```ts
declare const isAsyncFiberError: (u: unknown) => u is AsyncFiberError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1718)

Since v4.0.0