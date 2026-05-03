Package: `effect`<br />
Module: `Duration`<br />

## Duration.toNanos

Get the duration in nanoseconds as a bigint.

If the duration is infinite, returns `Option.none()`.

**Example**

```ts
import { Duration, Option } from "effect"

Duration.toNanos(Duration.seconds(1)) // Some(1000000000n)

Duration.toNanos(Duration.infinity) // None
Option.getOrUndefined(Duration.toNanos(Duration.infinity)) // undefined
```

**Signature**

```ts
declare const toNanos: (self: Input) => Option.Option<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L855)

Since v4.0.0