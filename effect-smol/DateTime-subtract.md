Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.subtract

Subtracts the given `amount` of `unit` from a `DateTime`.

**Example** (Subtracting date and time parts)

```ts
import { DateTime } from "effect"

// subtract 5 minutes
DateTime.makeUnsafe(0).pipe(
  DateTime.subtract({ minutes: 5 })
)
```

**Signature**

```ts
declare const subtract: { (parts: Partial<DateTime.PartsForMath>): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, parts: Partial<DateTime.PartsForMath>): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L2374)

Since v3.6.0