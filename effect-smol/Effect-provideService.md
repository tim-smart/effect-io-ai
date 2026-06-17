Package: `effect`<br />
Module: `Effect`<br />

## Effect.provideService

Provides one concrete service implementation to an effect.

**When to use**

Use to satisfy one service requirement with an already-built implementation.

**Details**

The service requirement identified by the `Context.Key` is removed from the
effect requirements after the implementation is provided.

**Example** (Providing a service value)

```ts
import { Console, Context, Effect } from "effect"

// Define a service for configuration
const Config = Context.Service<{
  apiUrl: string
  timeout: number
}>("Config")

const fetchData = Effect.gen(function*() {
  const config = yield* Effect.service(Config)
  yield* Console.log(`Fetching from: ${config.apiUrl}`)
  yield* Console.log(`Timeout: ${config.timeout}ms`)
  return "data"
})

// Provide the service implementation
const program = Effect.provideService(fetchData, Config, {
  apiUrl: "https://api.example.com",
  timeout: 5000
})

Effect.runPromise(program).then(console.log)
// Output:
// Fetching from: https://api.example.com
// Timeout: 5000ms
// data
```

**See**

- `provide` for providing multiple layers to an effect.
- `provideServiceEffect` for acquiring the service implementation effectfully.
- `provideContext` for providing a complete context.

**Signature**

```ts
declare const provideService: { <I, S>(service: Context.Key<I, S>): { (implementation: S): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, I>>; <A, E, R>(self: Effect<A, E, R>, implementation: S): Effect<A, E, Exclude<R, I>>; }; <I, S>(service: Context.Key<I, S>, implementation: S): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, I>>; <A, E, R, I, S>(self: Effect<A, E, R>, service: Context.Key<I, S>, implementation: S): Effect<A, E, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6168)

Since v2.0.0