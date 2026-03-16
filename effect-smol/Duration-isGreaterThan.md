Package: `effect`<br />
Module: `Duration`<br />

## Duration.isGreaterThan

Checks if the first Duration is greater than the second.

**Example**

```ts
import { Duration } from "effect"

const isGreater = Duration.isGreaterThan(Duration.seconds(5), Duration.seconds(3))
console.log(isGreater) // true
```

**Signature**

```ts
declare const isGreaterThan: { (that: Duration): (self: Duration) => boolean; (self: Duration, that: Duration): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1396)

Since v2.0.0