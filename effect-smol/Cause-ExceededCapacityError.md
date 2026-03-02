Package: `effect`<br />
Module: `Cause`<br />

## Cause.ExceededCapacityError

An error indicating that a bounded resource (queue, pool, semaphore, etc.)
has exceeded its capacity.

Implements `YieldableError`.

**Example** (creating and checking)

```ts
import { Cause } from "effect"

const error = new Cause.ExceededCapacityError("Queue full")
console.log(error._tag)    // "ExceededCapacityError"
console.log(error.message) // "Queue full"
```

**See**

- `isExceededCapacityError` — type guard

**Signature**

```ts
export interface ExceededCapacityError extends YieldableError {
  readonly [ExceededCapacityErrorTypeId]: typeof ExceededCapacityErrorTypeId
  readonly _tag: "ExceededCapacityError"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1452)

Since v4.0.0