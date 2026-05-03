Package: `effect`<br />
Module: `Duration`<br />

## Duration.toHrTime

Converts a Duration to high-resolution time format [seconds, nanoseconds].

**Example**

```ts
import { Duration } from "effect"

const duration = Duration.millis(1500)
const hrtime = Duration.toHrTime(duration)
console.log(hrtime) // [1, 500000000]
```

**Signature**

```ts
declare const toHrTime: (input: Input) => [seconds: number, nanos: number]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L872)

Since v2.0.0