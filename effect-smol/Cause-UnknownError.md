Package: `effect`<br />
Module: `Cause`<br />

## Cause.UnknownError

A wrapper for errors whose type is not statically known.

**Details**

Used when a thrown or rejected value is not represented by a more specific
typed error. The original value is stored in the `cause` property inherited
from `Error`. Implements `YieldableError`.

**Example** (creating and checking)

```ts
import { Cause } from "effect"

const error = new Cause.UnknownError("original", "Something unknown")
console.log(error._tag)    // "UnknownError"
console.log(error.message) // "Something unknown"
```

**Signature**

```ts
export interface UnknownError extends YieldableError {
  readonly [UnknownErrorTypeId]: typeof UnknownErrorTypeId
  readonly _tag: "UnknownError"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1826)

Since v4.0.0