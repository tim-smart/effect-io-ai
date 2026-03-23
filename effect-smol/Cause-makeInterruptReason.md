Package: `effect`<br />
Module: `Cause`<br />

## Cause.makeInterruptReason

Creates a standalone `Interrupt` reason (not wrapped in a `Cause`),
optionally carrying the interrupting fiber's ID.

**Example** (creating an Interrupt reason)

```ts
import { Cause } from "effect"

const reason = Cause.makeInterruptReason(42)
console.log(reason._tag) // "Interrupt"
console.log(reason.fiberId) // 42
```

**See**

- `makeFailReason` — create a `Fail` reason
- `makeDieReason` — create a `Die` reason

**Signature**

```ts
declare const makeInterruptReason: (fiberId?: number | undefined) => Interrupt
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L613)

Since v4.0.0