Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromEffect

Use an effect to write a single value to the channel.

**Example**

```ts
import { Channel, Data, Effect } from "effect"

class DatabaseError extends Data.TaggedError("DatabaseError")<{
  readonly message: string
}> {}

// Create a channel from a successful effect
const successChannel = Channel.fromEffect(
  Effect.succeed("Hello from effect!")
)

// Create a channel from an effect that might fail
const fetchUserChannel = Channel.fromEffect(
  Effect.tryPromise({
    try: () => fetch("/api/user").then((res) => res.json()),
    catch: (error) => new DatabaseError({ message: String(error) })
  })
)

// Channel from effect with async computation
const asyncChannel = Channel.fromEffect(
  Effect.gen(function*() {
    yield* Effect.sleep("100 millis")
    return "Async result"
  })
)
```

**Signature**

```ts
declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Channel<A, Pull.ExcludeDone<E>, void, unknown, unknown, unknown, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1040)

Since v2.0.0