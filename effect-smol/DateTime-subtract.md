Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.subtract

Subtract the given `amount` of `unit`'s from a `DateTime`.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1949)

Since v3.6.0