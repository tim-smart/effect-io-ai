Package: `effect`<br />
Module: `Channel`<br />

## Channel.callbackArray

Creates a `Channel` that interacts with a callback function using a queue, emitting arrays.

**Example**

```ts
import { Channel, Effect, Queue } from "effect"

const channel = Channel.callbackArray<number>(Effect.fn(function*(queue) {
  yield* Queue.offer(queue, 1)
  yield* Queue.offer(queue, 2)
}))
// Emits arrays of numbers instead of individual numbers
```

**Signature**

```ts
declare const callbackArray: <A, E = never, R = never>(f: (queue: Queue.Queue<A, E | Cause.Done>) => Effect.Effect<unknown, E, R | Scope.Scope>, options?: { readonly bufferSize?: number | undefined; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; }) => Channel<Arr.NonEmptyReadonlyArray<A>, E, void, unknown, unknown, unknown, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L499)

Since v4.0.0