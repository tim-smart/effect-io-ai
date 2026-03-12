Package: `effect`<br />
Module: `Duration`<br />

## Duration.times

Multiplies a Duration by a number.

**Example**

```ts
import { Duration } from "effect"

const doubled = Duration.times(Duration.seconds(5), 2)
console.log(Duration.toSeconds(doubled)) // 10
```

**Signature**

```ts
declare const times: { (times: number): (self: Duration) => Duration; (self: Duration, times: number): Duration; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1240)

Since v2.0.0