# provideService

The `provideService` function is used to provide an actual
implementation for a service in the context of an effect.

This function allows you to associate a service with its implementation so
that it can be used in your program. You define the service (e.g., a random
number generator), and then you use `provideService` to link that
service to its implementation. Once the implementation is provided, the
effect can be run successfully without further requirements.

To import and use `provideService` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.provideService
```

**Example**

```ts
import { Effect, Context } from "effect"

// Declaring a tag for a service that generates random numbers
class Random extends Context.Tag("MyRandomService")<Random, { readonly next: Effect.Effect<number> }>() {}

// Using the service
const program = Effect.gen(function* () {
  const random = yield* Random
  const randomNumber = yield* random.next
  console.log(`random number: ${randomNumber}`)
})

// Providing the implementation
//
//      ┌─── Effect<void, never, never>
//      ▼
const runnable = Effect.provideService(program, Random, {
  next: Effect.sync(() => Math.random())
})

// Run successfully
Effect.runPromise(runnable)
// Example Output:
// random number: 0.8241872233134417
```

**Signature**

```ts
export declare const provideService: {
  <T extends Context.Tag<any, any>>(
    tag: T,
    service: Context.Tag.Service<T>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, Context.Tag.Identifier<T>>>
  <A, E, R, T extends Context.Tag<any, any>>(
    self: Effect<A, E, R>,
    tag: T,
    service: Context.Tag.Service<T>
  ): Effect<A, E, Exclude<R, Context.Tag.Identifier<T>>>
}
```
