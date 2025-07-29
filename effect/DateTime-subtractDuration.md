Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.subtractDuration

Subtract the given `Duration` from a `DateTime`.

**Example**

```ts
import { DateTime } from "effect"

// subtract 5 minutes
DateTime.unsafeMake(0).pipe(
  DateTime.subtractDuration("5 minutes")
)
```

**Signature**

```ts
declare const subtractDuration: { (duration: Duration.DurationInput): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, duration: Duration.DurationInput): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L1373)

Since v3.6.0