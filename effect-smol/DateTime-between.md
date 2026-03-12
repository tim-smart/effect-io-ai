Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.between

Checks if a `DateTime` is between two other `DateTime` values (inclusive).

**Example**

```ts
import { DateTime } from "effect"

const min = DateTime.makeUnsafe("2024-01-01")
const max = DateTime.makeUnsafe("2024-12-31")
const date = DateTime.makeUnsafe("2024-06-15")

console.log(DateTime.between(date, { minimum: min, maximum: max })) // true
```

**Signature**

```ts
declare const between: { (options: { minimum: DateTime; maximum: DateTime; }): (self: DateTime) => boolean; (self: DateTime, options: { minimum: DateTime; maximum: DateTime; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1105)

Since v3.6.0