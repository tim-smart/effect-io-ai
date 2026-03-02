Package: `effect`<br />
Module: `Cause`<br />

## Cause.TimeoutError

An error indicating that an operation exceeded its time limit.

Produced by `Effect.timeout` and related APIs. Implements
`YieldableError`.

**Example** (creating and checking)

```ts
import { Cause } from "effect"

const error = new Cause.TimeoutError("Operation timed out")
console.log(error._tag)    // "TimeoutError"
console.log(error.message) // "Operation timed out"
```

**See**

- `isTimeoutError` — type guard

**Signature**

```ts
export interface TimeoutError extends YieldableError {
  readonly [TimeoutErrorTypeId]: typeof TimeoutErrorTypeId
  readonly _tag: "TimeoutError"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1316)

Since v4.0.0