Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.join

Joins a fiber, blocking until it completes. If the fiber succeeds,
returns its value. If it fails, the error is propagated.

**When to use**

Use when you need a forked fiber's failure to fail the current Effect because
that fiber is part of the current workflow.

**Gotchas**

Joining a failed fiber propagates the fiber's Cause. Use `await` when
you need to inspect the `Exit` instead of failing.

**Example** (Joining a fiber)

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  const fiber = yield* Effect.forkChild(Effect.succeed(42))
  const result = yield* Fiber.join(fiber)
  console.log(result) // 42
})
```

**See**

- `await` for inspecting the fiber outcome as an Exit

**Signature**

```ts
declare const join: <A, E>(self: Fiber<A, E>) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L272)

Since v2.0.0