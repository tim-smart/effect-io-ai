Package: `effect`<br />
Module: `Console`<br />

## Console.withTime

Wraps an Effect with a timer.

This function measures the execution time of an Effect, automatically
starting a timer before the Effect runs and logging the elapsed time
after the Effect completes.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L709)

Since v2.0.0