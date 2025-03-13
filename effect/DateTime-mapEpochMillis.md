Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.mapEpochMillis

Transform a `DateTime` by applying a function to the number of milliseconds
since the Unix epoch.

**Example**

```ts
import { DateTime } from "effect"

// add 10 milliseconds
DateTime.unsafeMake(0).pipe(
  DateTime.mapEpochMillis((millis) => millis + 10)
)
```

**Signature**

```ts
declare const mapEpochMillis: { (f: (millis: number) => number): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, f: (millis: number) => number): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1171)

Since v3.6.0