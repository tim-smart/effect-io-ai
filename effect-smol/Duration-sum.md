Package: `effect`<br />
Module: `Duration`<br />

## Duration.sum

Adds two Durations together.

**Infinity Addition Rules**
- infinity + infinity = infinity
- infinity + negativeInfinity = zero
- infinity + finite = infinity
- negativeInfinity + negativeInfinity = negativeInfinity
- negativeInfinity + finite = negativeInfinity

**Example**

```ts
import { Duration } from "effect"

const total = Duration.sum(Duration.seconds(5), Duration.seconds(3))
console.log(Duration.toSeconds(total)) // 8
```

**Signature**

```ts
declare const sum: { (that: Duration): (self: Duration) => Duration; (self: Duration, that: Duration): Duration; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1319)

Since v2.0.0