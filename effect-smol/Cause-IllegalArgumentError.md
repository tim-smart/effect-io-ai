Package: `effect`<br />
Module: `Cause`<br />

## Cause.IllegalArgumentError

An error indicating that a function received an argument that violates
its contract (e.g. negative where positive was expected).

Implements `YieldableError`.

**Example** (creating and checking)

```ts
import { Cause } from "effect"

const error = new Cause.IllegalArgumentError("Expected positive number")
console.log(error._tag)    // "IllegalArgumentError"
console.log(error.message) // "Expected positive number"
```

**See**

- `isIllegalArgumentError` — type guard

**Signature**

```ts
export interface IllegalArgumentError extends YieldableError {
  readonly [IllegalArgumentErrorTypeId]: typeof IllegalArgumentErrorTypeId
  readonly _tag: "IllegalArgumentError"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1384)

Since v4.0.0