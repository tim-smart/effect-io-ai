Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.awaitAll

Waits for all fibers in the provided iterable to complete and returns
an array of their exit values.

**When to use**

Use when you need every fiber outcome as data, including failures and
interruptions.

**Details**

The returned array is ordered like the input iterable.

**Gotchas**

Failures are captured as `Exit.Failure` values. Use `joinAll` when you
want the first failed fiber to fail the returned Effect.

**Example** (Awaiting multiple fiber exits)

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  const fiber1 = yield* Effect.forkChild(Effect.succeed(1))
  const fiber2 = yield* Effect.forkChild(Effect.succeed(2))
  const exits = yield* Fiber.awaitAll([fiber1, fiber2])
  console.log(exits) // [Exit.succeed(1), Exit.succeed(2)]
})
```

**Signature**

```ts
declare const awaitAll: <A extends Fiber<any, any>>(self: Iterable<A>) => Effect<Array<Exit<A extends Fiber<infer _A, infer _E> ? _A : never, A extends Fiber<infer _A, infer _E> ? _E : never>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L277)

Since v2.0.0