Package: `effect`<br />
Module: `Duration`<br />

## Duration.toNanos

Gets the duration in nanoseconds safely as an `Option<bigint>`.

**Details**

If the duration is infinite, returns `Option.none()`.

**Example** (Safely reading nanoseconds)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L968)

Since v2.0.0