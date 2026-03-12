Package: `effect`<br />
Module: `Duration`<br />

## Duration.max

Returns the larger of two Durations.

**Example**

```ts
import { Duration } from "effect"

const longer = Duration.max(Duration.seconds(5), Duration.seconds(3))
console.log(Duration.toSeconds(longer)) // 5
```

**Signature**

```ts
declare const max: { (that: Duration): (self: Duration) => Duration; (self: Duration, that: Duration): Duration; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1113)

Since v2.0.0