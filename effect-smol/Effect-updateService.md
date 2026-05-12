Package: `effect`<br />
Module: `Effect`<br />

## Effect.updateService

Updates the service with the required service entry.

**Example**

```ts
import { Console, Effect, Context } from "effect"

// Define a counter service
const Counter = Context.Service<{ count: number }>("Counter")

const program = Effect.gen(function*() {
  const updatedCounter = yield* Effect.service(Counter)
  yield* Console.log(`Updated count: ${updatedCounter.count}`)
  return updatedCounter.count
}).pipe(
  Effect.updateService(Counter, (counter) => ({ count: counter.count + 1 }))
)

// Provide initial service and run
const result = Effect.provideService(program, Counter, { count: 0 })
Effect.runPromise(result).then(console.log)
// Output: Updated count: 1
// 1
```

**Signature**

```ts
declare const updateService: { <I, A>(service: Context.Key<I, A>, f: (value: A) => A): <XA, E, R>(self: Effect<XA, E, R>) => Effect<XA, E, R | I>; <XA, E, R, I, A>(self: Effect<XA, E, R>, service: Context.Key<I, A>, f: (value: A) => A): Effect<XA, E, R | I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5831)

Since v2.0.0