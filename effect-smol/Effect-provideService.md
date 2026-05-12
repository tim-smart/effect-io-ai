Package: `effect`<br />
Module: `Effect`<br />

## Effect.provideService

The `provideService` function is used to provide an actual
implementation for a service in the context of an effect.

This function allows you to associate a service with its implementation so
that it can be used in your program. You define the service (e.g., a random
number generator), and then you use `provideService` to link that
service to its implementation. Once the implementation is provided, the
effect can be run successfully without further requirements.

**Example**

```ts
import { Console, Effect, Context } from "effect"

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

**Signature**

```ts
declare const provideService: { <I, S>(service: Context.Key<I, S>): { (implementation: S): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, I>>; <A, E, R>(self: Effect<A, E, R>, implementation: S): Effect<A, E, Exclude<R, I>>; }; <I, S>(service: Context.Key<I, S>, implementation: S): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, I>>; <A, E, R, I, S>(self: Effect<A, E, R>, service: Context.Key<I, S>, implementation: S): Effect<A, E, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5888)

Since v2.0.0