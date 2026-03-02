Package: `effect`<br />
Module: `Cause`<br />

## Cause.makeDieReason

Creates a standalone `Die` reason (not wrapped in a `Cause`).

**Example** (creating a Die reason)

```ts
import { Cause } from "effect"

const reason = Cause.makeDieReason(new Error("bug"))
console.log(reason._tag) // "Die"
```

**See**

- `makeFailReason` — create a `Fail` reason
- `makeInterruptReason` — create an `Interrupt` reason

**Signature**

```ts
declare const makeDieReason: (defect: unknown) => Die
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L590)

Since v4.0.0