Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.subtractDuration

Subtract the given `Duration` from a `DateTime`.

**Example**

```ts
import { DateTime } from "effect"

// subtract 5 minutes
DateTime.makeUnsafe(0).pipe(
  DateTime.subtractDuration("5 minutes")
)
```

**Signature**

```ts
declare const subtractDuration: { (duration: Duration.Input): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, duration: Duration.Input): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1864)

Since v3.6.0