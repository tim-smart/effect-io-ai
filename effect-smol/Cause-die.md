Package: `effect`<br />
Module: `Cause`<br />

## Cause.die

Creates a `Cause` containing a single `Die` reason with the
given defect.

**When to use**

Use to construct a cause from an untyped defect or unexpected thrown value.

**Example** (creating a die cause)

```ts
import { Cause } from "effect"

const cause = Cause.die("Unexpected")
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L516)

Since v2.0.0