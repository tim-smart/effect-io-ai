Package: `effect`<br />
Module: `Cause`<br />

## Cause.NoSuchElementError

An error indicating that an expected value was absent.

Used by APIs that convert absence into an exception or effect failure, such
as `Option.getOrThrow`. Implements `YieldableError` so it can be
yielded directly in `Effect.gen`.

**Notes**

Safe lookup APIs that return `Option` should document the `None` case rather
than describing it as a thrown `NoSuchElementError`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1155)

Since v4.0.0