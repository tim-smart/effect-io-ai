Package: `effect`<br />
Module: `Duration`<br />

## Duration.toNanos

Get the duration in nanoseconds as a bigint.

If the duration is infinite, returns `undefined`.

**Example**

```ts
import { Duration } from "effect"

Duration.toNanos(Duration.seconds(1)) // 1000000000n

Duration.toNanos(Duration.infinity) // undefined
```

**Signature**

```ts
declare const toNanos: (self: Duration) => bigint | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L841)

Since v4.0.0