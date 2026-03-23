Package: `effect`<br />
Module: `Cause`<br />

## Cause.UnknownError

A wrapper for errors whose type is not statically known.

Produced by the runtime when an effect throws a non-`Error` value.
The original thrown value is stored in the `cause` property (inherited
from `Error`). Implements `YieldableError`.

**Example** (creating and checking)

```ts
import { Cause } from "effect"

const error = new Cause.UnknownError("original", "Something unknown")
console.log(error._tag)    // "UnknownError"
console.log(error.message) // "Something unknown"
```

**See**

- `isUnknownError` — type guard

**Signature**

```ts
export interface UnknownError extends YieldableError {
  readonly [UnknownErrorTypeId]: typeof UnknownErrorTypeId
  readonly _tag: "UnknownError"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1556)

Since v4.0.0