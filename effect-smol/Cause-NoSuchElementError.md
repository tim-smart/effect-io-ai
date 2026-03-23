Package: `effect`<br />
Module: `Cause`<br />

## Cause.NoSuchElementError

An error indicating that a requested element does not exist.

Thrown by APIs like `Array.head`, `Option.getOrThrow`, `Map.get`, etc.
when no element matches. Implements `YieldableError` so it can be
yielded directly in `Effect.gen`.

**Example** (creating and checking)

```ts
import { Cause } from "effect"

const error = new Cause.NoSuchElementError("Element not found")
console.log(error._tag)    // "NoSuchElementError"
console.log(error.message) // "Element not found"
```

**See**

- `isNoSuchElementError` — type guard
- `| NoSuchElementError constructor`

**Signature**

```ts
export interface NoSuchElementError extends YieldableError {
  readonly [NoSuchElementErrorTypeId]: typeof NoSuchElementErrorTypeId
  readonly _tag: "NoSuchElementError"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1145)

Since v4.0.0