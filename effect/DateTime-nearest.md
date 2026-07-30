Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.nearest

Converts a `DateTime` to the nearest given `part`.

If the part is `week`, the `weekStartsOn` option can be used to specify the
day of the week that the week starts on. The default is 0 (Sunday).

**Example**

```ts
import { DateTime } from "effect"

// returns "2024-01-02T00:00:00Z"
DateTime.unsafeMake("2024-01-01T12:01:00Z").pipe(
  DateTime.nearest("day"),
  DateTime.formatIso
)
```

**Signature**

```ts
declare const nearest: { (part: DateTime.UnitSingular, options?: { readonly weekStartsOn?: 0 | 1 | 2 | 3 | 4 | 5 | 6 | undefined; }): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, part: DateTime.UnitSingular, options?: { readonly weekStartsOn?: 0 | 1 | 2 | 3 | 4 | 5 | 6 | undefined; }): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1502)

Since v3.6.0