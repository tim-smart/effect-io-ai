Package: `effect`<br />
Module: `Duration`<br />

## Duration.nanos

Creates a Duration from nanoseconds.

**Example**

```ts
import { Duration } from "effect"

const duration = Duration.nanos(BigInt(500_000_000))
console.log(Duration.toMillis(duration)) // 500
```

**Signature**

```ts
declare const nanos: (nanos: bigint) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L541)

Since v2.0.0