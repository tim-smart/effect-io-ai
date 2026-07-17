Package: `effect`<br />
Module: `Duration`<br />

## Duration.Equivalence

Provides an `Equivalence` instance for comparing `Duration` values.

**Example** (Comparing durations for equivalence)

```ts
import { Duration } from "effect"

const isEqual = Duration.Equivalence(Duration.seconds(5), Duration.millis(5000))
console.log(isEqual) // true
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<Duration>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Duration.ts#L1213)

Since v2.0.0