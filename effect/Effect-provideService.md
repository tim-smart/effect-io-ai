Package: `effect`<br />
Module: `Effect`<br />

## Effect.provideService

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

**Example**

```ts
import { Effect, Context } from "effect"

// Declaring a tag for a service that generates random numbers
class Random extends Context.Tag("MyRandomService")<
  Random,
  { readonly next: Effect.Effect<number> }
>() {}

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

**See**

- `provide` for providing multiple layers to an effect.

**Signature**

```ts
declare const provideService: { <I, S>(tag: Context.Tag<I, S>, service: NoInfer<S>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, I>>; <A, E, R, I, S>(self: Effect<A, E, R>, tag: Context.Tag<I, S>, service: NoInfer<S>): Effect<A, E, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7636)

Since v2.0.0