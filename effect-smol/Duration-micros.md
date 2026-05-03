Package: `effect`<br />
Module: `Duration`<br />

## Duration.micros

Creates a Duration from microseconds.

**Example**

```ts
import { Duration } from "effect"

const duration = Duration.micros(BigInt(500_000))
console.log(Duration.toMillis(duration)) // 500
```

**Signature**

```ts
declare const micros: (micros: bigint) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L569)

Since v2.0.0