Package: `effect`<br />
Module: `Duration`<br />

## Duration.isLessThan

Checks if the first Duration is less than the second.

**Example**

```ts
import { Duration } from "effect"

const isLess = Duration.isLessThan(Duration.seconds(3), Duration.seconds(5))
console.log(isLess) // true
```

**Signature**

```ts
declare const isLessThan: { (that: Duration): (self: Duration) => boolean; (self: Duration, that: Duration): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1369)

Since v2.0.0