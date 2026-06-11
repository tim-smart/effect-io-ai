Package: `effect`<br />
Module: `Cause`<br />

## Cause.Fail

A typed, expected error produced by `Effect.fail`.

**When to use**

Use when inspecting `Cause` reasons that represent expected failures from the
typed error channel.

**Details**

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

- `fail` for constructing a cause with a single `Fail` reason
- `isFailReason` for narrowing a `Reason` to `Fail`

**Signature**

```ts
export interface Fail<out E> extends Cause.ReasonProto<"Fail"> {
  readonly error: E
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L363)

Since v2.0.0