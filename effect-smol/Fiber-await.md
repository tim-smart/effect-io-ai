Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.await

Waits for a fiber to complete and returns its exit value.

**When to use**

Use when you need to inspect whether the fiber succeeded,
failed, died, or was interrupted without propagating the failure.

**Details**

The returned Effect always succeeds with an `Exit` describing the fiber's
outcome.

**Gotchas**

This does not flatten the fiber result into the current Effect. Use
`join` when you want fiber failures to fail the current Effect.

**Example** (Awaiting a fiber exit)

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  const fiber = yield* Effect.forkChild(Effect.succeed(42))
  const exit = yield* Fiber.await(fiber)
  console.log(exit) // Exit.succeed(42)
})
```

**Signature**

```ts
declare const await: <A, E>(self: Fiber<A, E>) => Effect<Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L194)

Since v2.0.0