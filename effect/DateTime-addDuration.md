Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.addDuration

Add the given `Duration` to a `DateTime`.

**Example**

```ts
import { DateTime } from "effect"

// add 5 minutes
DateTime.unsafeMake(0).pipe(
  DateTime.addDuration("5 minutes")
)
```

**Signature**

```ts
declare const addDuration: { (duration: Duration.DurationInput): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, duration: Duration.DurationInput): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1353)

Since v3.6.0