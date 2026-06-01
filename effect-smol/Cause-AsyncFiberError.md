Package: `effect`<br />
Module: `Cause`<br />

## Cause.AsyncFiberError

An error that occurs when trying to run an async fiber with Effect.runSync.

**When to use**

Use to inspect failures produced when synchronous runners encounter an effect
that cannot complete synchronously.

**Details**

The `fiber` property stores the fiber that could not be synchronously
resolved. This error implements `YieldableError`.

**Example** (accessing the fiber)

```ts
import { Cause } from "effect"
import type { Fiber } from "effect"

declare const fiber: Fiber.Fiber<unknown, unknown>

const error = new Cause.AsyncFiberError(fiber)
console.log(error._tag) // "AsyncFiberError"
console.log(error.fiber === fiber) // true
```

**Signature**

```ts
export interface AsyncFiberError extends YieldableError {
  readonly [AsyncFiberErrorTypeId]: typeof AsyncFiberErrorTypeId
  readonly _tag: "AsyncFiberError"
  readonly fiber: Fiber<unknown, unknown>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1745)

Since v4.0.0