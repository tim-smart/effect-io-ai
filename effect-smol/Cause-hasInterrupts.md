Package: `effect`<br />
Module: `Cause`<br />

## Cause.hasInterrupts

Returns `true` if the cause contains at least one `Interrupt` reason.

**Example** (checking for interruptions)

```ts
import { Cause } from "effect"

console.log(Cause.hasInterrupts(Cause.interrupt(123))) // true
console.log(Cause.hasInterrupts(Cause.fail("error")))  // false
```

**See**

- `hasInterruptsOnly` — `true` only when *all* reasons are interrupts
- `hasFails` — check for typed errors
- `hasDies` — check for defects

**Signature**

```ts
declare const hasInterrupts: <E>(self: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L915)

Since v2.0.0