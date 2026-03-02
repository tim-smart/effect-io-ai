Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.clamp

Clamp a `DateTime` between a minimum and maximum value.

If the `DateTime` is before the minimum, the minimum is returned.
If the `DateTime` is after the maximum, the maximum is returned.
Otherwise, the original `DateTime` is returned.

**Example**

```ts
import { DateTime } from "effect"

const min = DateTime.makeUnsafe("2024-01-01")
const max = DateTime.makeUnsafe("2024-12-31")
const date = DateTime.makeUnsafe("2025-06-15")

const clamped = DateTime.clamp(date, { minimum: min, maximum: max })
// clamped equals max (2024-12-31)
```

**Signature**

```ts
declare const clamp: { <Min extends DateTime, Max extends DateTime>(options: { readonly minimum: Min; readonly maximum: Max; }): <A extends DateTime>(self: A) => A | Min | Max; <A extends DateTime, Min extends DateTime, Max extends DateTime>(self: A, options: { readonly minimum: Min; readonly maximum: Max; }): A | Min | Max; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L441)

Since v3.6.0