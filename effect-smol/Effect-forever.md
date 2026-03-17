Package: `effect`<br />
Module: `Effect`<br />

## Effect.forever

Repeats this effect forever (until the first error).

**Example**

```ts
import { Console, Effect, Fiber } from "effect"

const task = Effect.gen(function*() {
  yield* Console.log("Task running...")
  yield* Effect.sleep("1 second")
})

// This will run forever, printing every second
const program = task.pipe(Effect.forever)

// This will run forever, without yielding every iteration
const programNoYield = task.pipe(Effect.forever({ disableYield: true }))

// Run for 5 seconds then interrupt
const timedProgram = Effect.gen(function*() {
  const fiber = yield* Effect.forkChild(program)
  yield* Effect.sleep("5 seconds")
  yield* Fiber.interrupt(fiber)
})
```

**Signature**

```ts
declare const forever: <Arg extends Effect<any, any, any> | { readonly disableYield?: boolean | undefined; } | undefined = { readonly disableYield?: boolean | undefined; }>(effectOrOptions?: Arg, options?: { readonly disableYield?: boolean | undefined; } | undefined) => [Arg] extends [Effect<infer _A, infer _E, infer _R>] ? Effect<never, _E, _R> : <A, E, R>(self: Effect<A, E, R>) => Effect<never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7107)

Since v2.0.0