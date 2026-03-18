Package: `effect`<br />
Module: `Channel`<br />

## Channel.callback

Creates a `Channel` that interacts with a callback function using a queue.

**Example**

```ts
import { Channel, Effect, Queue } from "effect"

const channel = Channel.callback<number>((queue) =>
  Effect.gen(function*() {
    yield* Queue.offer(queue, 1)
    yield* Queue.offer(queue, 2)
    yield* Queue.offer(queue, 3)
  })
)
```

**Signature**

```ts
declare const callback: <A, E = never, R = never>(f: (queue: Queue.Queue<A, E | Cause.Done>) => Effect.Effect<unknown, E, R | Scope.Scope>, options?: { readonly bufferSize?: number | undefined; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; }) => Channel<A, E, void, unknown, unknown, unknown, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L473)

Since v2.0.0