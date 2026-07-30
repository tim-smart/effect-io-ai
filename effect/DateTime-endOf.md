Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.endOf

Converts a `DateTime` to the end of the given `part`.

If the part is `week`, the `weekStartsOn` option can be used to specify the
day of the week that the week starts on. The default is 0 (Sunday).

**Example**

```ts
import { DateTime } from "effect"

// returns "2024-01-01T23:59:59.999Z"
DateTime.unsafeMake("2024-01-01T12:00:00Z").pipe(
  DateTime.endOf("day"),
  DateTime.formatIso
)
```

**Signature**

```ts
declare const endOf: { (part: DateTime.UnitSingular, options?: { readonly weekStartsOn?: 0 | 1 | 2 | 3 | 4 | 5 | 6 | undefined; }): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, part: DateTime.UnitSingular, options?: { readonly weekStartsOn?: 0 | 1 | 2 | 3 | 4 | 5 | 6 | undefined; }): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1471)

Since v3.6.0