Package: `effect`<br />
Module: `Console`<br />

## Console.withTime

Runs an Effect with a console timer, starting the timer before execution and ending it after the Effect completes.

**Example** (Timing an effect)

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.withTime(
    Effect.gen(function*() {
      yield* Effect.sleep("1 second")
      yield* Console.log("Operation completed")
    }),
    "my-operation"
  )
})
```

**Signature**

```ts
declare const withTime: ((label?: string) => <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) & (<A, E, R>(self: Effect.Effect<A, E, R>, label?: string) => Effect.Effect<A, E, R>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L698)

Since v2.0.0