Package: `effect`<br />
Module: `Cause`<br />

## Cause.Interrupt

A fiber interruption signal, optionally carrying the ID of the fiber that
initiated the interruption.

**Details**

Use `isInterruptReason` to narrow a `Reason` to this type.

**Example** (Accessing the fiber ID)

```ts
import { Cause } from "effect"

const cause = Cause.interrupt(123)
const reason = cause.reasons[0]
if (Cause.isInterruptReason(reason)) {
  console.log(reason.fiberId) // 123
}
```

**Signature**

```ts
export interface Interrupt extends Cause.ReasonProto<"Interrupt"> {
  readonly fiberId: number | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L390)

Since v2.0.0