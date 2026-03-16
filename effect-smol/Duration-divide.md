Package: `effect`<br />
Module: `Duration`<br />

## Duration.divide

Divides a Duration by a number, returning `Option.none()` if division is invalid.

**Example**

```ts
import { Duration, Option } from "effect"

const d = Duration.divide(Duration.seconds(10), 2)
console.log(Option.map(d, Duration.toSeconds)) // Some(5)

Duration.divide(Duration.seconds(10), 0) // None
```

**Signature**

```ts
declare const divide: { (by: number): (self: Duration) => Option.Option<Duration>; (self: Duration, by: number): Option.Option<Duration>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1158)

Since v4.0.0