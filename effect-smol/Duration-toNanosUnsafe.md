Package: `effect`<br />
Module: `Duration`<br />

## Duration.toNanosUnsafe

Gets the duration in nanoseconds as a bigint, throwing for infinite durations.

**Gotchas**

If the duration is infinite, it throws an error.

**Example** (Reading nanoseconds unsafely)

```ts
import { Duration } from "effect"

const duration = Duration.seconds(2)
const nanos = Duration.toNanosUnsafe(duration)
console.log(nanos) // 2000000000n

// Duration.toNanosUnsafe(Duration.infinity)
// throws Error: "Cannot convert infinite duration to nanos"
```

**Signature**

```ts
declare const toNanosUnsafe: (input: Input) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L934)

Since v4.0.0