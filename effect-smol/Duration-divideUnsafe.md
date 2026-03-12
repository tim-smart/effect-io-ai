Package: `effect`<br />
Module: `Duration`<br />

## Duration.divideUnsafe

Divides a Duration by a number, potentially returning infinity or zero.

**Example**

```ts
import { Duration } from "effect"

const half = Duration.divideUnsafe(Duration.seconds(10), 2)
console.log(Duration.toSeconds(half)) // 5

const infinite = Duration.divideUnsafe(Duration.seconds(10), 0)
console.log(Duration.toMillis(infinite)) // Infinity
```

**Signature**

```ts
declare const divideUnsafe: { (by: number): (self: Duration) => Duration; (self: Duration, by: number): Duration; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1197)

Since v2.4.19