Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.interrupt

Interrupts a fiber, causing it to stop executing and clean up any
acquired resources.

**When to use**

Use when you need to cancel a forked fiber and wait for its cleanup to
complete.

**Details**

The returned Effect completes only after the interrupted fiber has completed.

**Gotchas**

Interruption is cooperative. A fiber can continue running while it is inside
uninterruptible work or finalizers.

**Example** (Interrupting a fiber)

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  const fiber = yield* Effect.forkChild(
    Effect.delay("1 second")(Effect.succeed(42))
  )
  yield* Fiber.interrupt(fiber)
  console.log("Fiber interrupted")
})
```

**See**

- `interruptAs` for specifying the interrupting fiber ID
- `await` for observing the interrupted fiber's Exit

**Signature**

```ts
declare const interrupt: <A, E>(self: Fiber<A, E>) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L346)

Since v2.0.0