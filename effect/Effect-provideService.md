# provideService

Provides an implementation for a service in the context of an effect.

**Details**

This function allows you to supply a specific implementation for a service
required by an effect. Services are typically defined using `Context.Tag`,
which acts as a unique identifier for the service. By using this function,
you link the service to its concrete implementation, enabling the effect to
execute successfully without additional requirements.

For example, you can use this function to provide a random number generator,
a logger, or any other service your effect depends on. Once the service is
provided, all parts of the effect that rely on the service will automatically
use the implementation you supplied.

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
// Effect.runPromise(runnable)
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
