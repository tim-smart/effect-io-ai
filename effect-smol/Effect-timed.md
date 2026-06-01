Package: `effect`<br />
Module: `Effect`<br />

## Effect.timed

Returns the runtime duration of an effect together with its result.

**Details**

The original success, failure, or interruption is preserved; only the success
value is paired with the duration.

**Example** (Measuring execution time)

```ts
import { Console, Duration, Effect } from "effect"

const program = Effect.gen(function*() {
  const [duration, value] = yield* Effect.timed(Effect.succeed("ok"))
  yield* Console.log(`took ${Duration.toMillis(duration)}ms: ${value}`)
})
```

**Signature**

```ts
declare const timed: <A, E, R>(self: Effect<A, E, R>) => Effect<[duration: Duration.Duration, result: A], E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4723)

Since v2.0.0