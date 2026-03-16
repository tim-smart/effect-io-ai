Package: `effect`<br />
Module: `Duration`<br />

## Duration.equals

Checks if two Durations are equal.

**Example**

```ts
import { Duration } from "effect"

const isEqual = Duration.equals(Duration.seconds(5), Duration.millis(5000))
console.log(isEqual) // true
```

**Signature**

```ts
declare const equals: { (that: Duration): (self: Duration) => boolean; (self: Duration, that: Duration): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1437)

Since v2.0.0