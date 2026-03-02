Package: `effect`<br />
Module: `Cause`<br />

## Cause.interrupt

Creates a `Cause` containing a single `Interrupt` reason,
optionally carrying the interrupting fiber's ID.

**Example** (creating an interrupt cause)

```ts
import { Cause } from "effect"

const cause = Cause.interrupt(123)
console.log(cause.reasons.length) // 1
console.log(Cause.isInterruptReason(cause.reasons[0])) // true
```

**See**

- `fail` — for typed errors
- `die` — for untyped defects

**Signature**

```ts
declare const interrupt: (fiberId?: number | undefined) => Cause<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L546)

Since v2.0.0