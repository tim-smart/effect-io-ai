Package: `effect`<br />
Module: `Cause`<br />

## Cause.hasInterruptsOnly

Returns `true` if every reason in the cause is an `Interrupt` (and
there is at least one reason).

Useful for deciding whether a failure was entirely due to interruption and
can be silently discarded.

**Example** (checking interrupt-only causes)

```ts
import { Cause } from "effect"

console.log(Cause.hasInterruptsOnly(Cause.interrupt(123))) // true
console.log(Cause.hasInterruptsOnly(Cause.fail("error")))  // false
console.log(Cause.hasInterruptsOnly(Cause.empty))          // false
```

**See**

- `hasInterrupts` — `true` if the cause contains *any* interrupts

**Signature**

```ts
declare const hasInterruptsOnly: <E>(self: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L636)

Since v2.0.0