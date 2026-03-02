Package: `effect`<br />
Module: `Duration`<br />

## Duration.toNanosUnsafe

Get the duration in nanoseconds as a bigint.

If the duration is infinite, it throws an error.

**Example**

```ts
import { Duration } from "effect"

const duration = Duration.seconds(2)
const nanos = Duration.toNanosUnsafe(duration)
console.log(nanos) // 2000000000n

// This will throw an error
try {
  Duration.toNanosUnsafe(Duration.infinity)
} catch (error) {
  console.log((error as Error).message) // "Cannot convert infinite duration to nanos"
}
```

**Signature**

```ts
declare const toNanosUnsafe: (self: Duration) => bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L756)

Since v2.0.0