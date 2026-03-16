Package: `effect`<br />
Module: `Duration`<br />

## Duration.subtract

Subtracts one Duration from another. The result can be negative.

**Infinity Subtraction Rules**
- infinity - infinity = 0
- infinity - negativeInfinity = infinity
- infinity - finite = infinity
- negativeInfinity - negativeInfinity = 0
- negativeInfinity - infinity = negativeInfinity
- negativeInfinity - finite = negativeInfinity
- finite - infinity = negativeInfinity
- finite - negativeInfinity = infinity

**Example**

```ts
import { Duration } from "effect"

const result = Duration.subtract(Duration.seconds(10), Duration.seconds(3))
console.log(Duration.toSeconds(result)) // 7
```

**Signature**

```ts
declare const subtract: { (that: Duration): (self: Duration) => Duration; (self: Duration, that: Duration): Duration; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1279)

Since v2.0.0