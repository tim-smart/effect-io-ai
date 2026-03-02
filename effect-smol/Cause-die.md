Package: `effect`<br />
Module: `Cause`<br />

## Cause.die

Creates a `Cause` containing a single `Die` reason with the
given defect.

**Example** (creating a die cause)

```ts
import { Cause } from "effect"

const cause = Cause.die(new Error("Unexpected"))
console.log(cause.reasons.length) // 1
console.log(Cause.isDieReason(cause.reasons[0])) // true
```

**See**

- `fail` — for typed errors
- `interrupt` — for fiber interruptions

**Signature**

```ts
declare const die: (defect: unknown) => Cause<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L524)

Since v2.0.0