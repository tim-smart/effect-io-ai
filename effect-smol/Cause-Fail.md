Package: `effect`<br />
Module: `Cause`<br />

## Cause.Fail

A typed, expected error produced by `Effect.fail`.

The `error` property carries the typed value `E`. Use `isFailReason`
to narrow a `Reason` to this type.

**Example** (accessing the error)

```ts
import { Cause } from "effect"

const cause = Cause.fail("Something went wrong")
const reason = cause.reasons[0]
if (Cause.isFailReason(reason)) {
  console.log(reason.error) // "Something went wrong"
}
```

**See**

- `fail` — create a `Cause` containing a single `Fail`
- `isFailReason` — type guard

**Signature**

```ts
export interface Fail<out E> extends Cause.ReasonProto<"Fail"> {
  readonly error: E
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L406)

Since v2.0.0