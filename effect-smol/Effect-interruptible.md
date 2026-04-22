Package: `effect`<br />
Module: `Effect`<br />

## Effect.interruptible

Returns a new effect that allows the effect to be interruptible.

**Example**

```ts
import { Effect } from "effect"

const longRunning = Effect.forever(Effect.succeed("working..."))

const program = Effect.interruptible(longRunning)

// This effect can now be interrupted
const fiber = Effect.runFork(program)
// Later: fiber.interrupt()
```

**Signature**

```ts
declare const interruptible: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6851)

Since v2.0.0