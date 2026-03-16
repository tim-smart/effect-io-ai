Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.mutate

Modify a `DateTime` by applying a function to a cloned `Date` instance.

The `Date` will first have the time zone applied if possible, and then be
converted back to a `DateTime` within the same time zone.

Supports `disambiguation` when the new wall clock time is ambiguous.

**Example**

```ts
import { DateTime } from "effect"

const dt = DateTime.makeUnsafe("2024-01-01T12:00:00Z")

const modified = DateTime.mutate(dt, (date) => {
  date.setHours(15) // Set to 3 PM
  date.setMinutes(30) // Set to 30 minutes
})

console.log(DateTime.formatIso(modified)) // "2024-01-01T15:30:00.000Z"
```

**Signature**

```ts
declare const mutate: { (f: (date: Date) => void, options?: { readonly disambiguation?: Disambiguation | undefined; }): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, f: (date: Date) => void, options?: { readonly disambiguation?: Disambiguation | undefined; }): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1686)

Since v3.6.0