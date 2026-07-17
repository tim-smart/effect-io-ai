Package: `effect`<br />
Module: `Cause`<br />

## Cause.NoSuchElementError

An error indicating that an expected value was absent.

**When to use**

Use to model APIs that intentionally turn absence into an error.

**Details**

Used by APIs that convert absence into an exception or effect failure, such
as `Option.getOrThrow`. Implements `YieldableError` so it can be
yielded directly in `Effect.gen`.

**Gotchas**

Prefer APIs that return `Option` or a typed failure when absence is an
expected case. This error is mainly for APIs that intentionally turn absence
into a thrown value or failed effect.

**Example** (Creating and checking a NoSuchElementError)

```ts
import { Cause } from "effect"

const error = new Cause.NoSuchElementError("Element not found")
console.log(error._tag)    // "NoSuchElementError"
console.log(error.message) // "Element not found"
```

**Signature**

```ts
export interface NoSuchElementError extends YieldableError {
  readonly [NoSuchElementErrorTypeId]: typeof NoSuchElementErrorTypeId
  readonly _tag: "NoSuchElementError"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1249)

Since v4.0.0