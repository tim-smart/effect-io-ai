# nearest

Converts a `DateTime` to the nearest given `part`.

If the part is `week`, the `weekStartsOn` option can be used to specify the
day of the week that the week starts on. The default is 0 (Sunday).

To import and use `nearest` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.nearest
```

**Example**

```ts
import { DateTime } from "effect"

// returns "2024-01-02T00:00:00Z"
DateTime.unsafeMake("2024-01-01T12:01:00Z").pipe(DateTime.nearest("day"), DateTime.formatIso)
```

**Signature**

```ts
export declare const nearest: {
  (
    part: DateTime.UnitSingular,
    options?: { readonly weekStartsOn?: 0 | 1 | 2 | 3 | 4 | 5 | 6 | undefined }
  ): <A extends DateTime>(self: A) => DateTime.PreserveZone<A>
  <A extends DateTime>(
    self: A,
    part: DateTime.UnitSingular,
    options?: { readonly weekStartsOn?: 0 | 1 | 2 | 3 | 4 | 5 | 6 | undefined }
  ): DateTime.PreserveZone<A>
}
```
