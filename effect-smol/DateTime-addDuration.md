Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.addDuration

Add the given `Duration` to a `DateTime`.

**Example**

```ts
import { DateTime } from "effect"

// add 5 minutes
DateTime.makeUnsafe(0).pipe(
  DateTime.addDuration("5 minutes")
)
```

**Signature**

```ts
declare const addDuration: { (duration: Duration.Input): <A extends DateTime>(self: A) => A; <A extends DateTime>(self: A, duration: Duration.Input): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1844)

Since v3.6.0