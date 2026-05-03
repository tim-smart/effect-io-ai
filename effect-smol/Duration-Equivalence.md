Package: `effect`<br />
Module: `Duration`<br />

## Duration.Equivalence

Equivalence instance for `Duration`, allowing equality comparisons.

**Example**

```ts
import { Duration } from "effect"

const isEqual = Duration.Equivalence(Duration.seconds(5), Duration.millis(5000))
console.log(isEqual) // true
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1088)

Since v2.0.0