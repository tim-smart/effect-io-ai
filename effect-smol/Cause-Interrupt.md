Package: `effect`<br />
Module: `Cause`<br />

## Cause.Interrupt

A fiber interruption signal, optionally carrying the ID of the fiber that
initiated the interruption.

Use `isInterruptReason` to narrow a `Reason` to this type.

**Example** (accessing the fiber ID)

```ts
import { Cause } from "effect"

const cause = Cause.interrupt(123)
const reason = cause.reasons[0]
if (Cause.isInterruptReason(reason)) {
  console.log(reason.fiberId) // 123
}
```

**See**

- `interrupt` — create a `Cause` containing a single `Interrupt`
- `isInterruptReason` — type guard

**Signature**

```ts
export interface Interrupt extends Cause.ReasonProto<"Interrupt"> {
  readonly fiberId: number | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L433)

Since v2.0.0