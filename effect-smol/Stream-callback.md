Package: `effect`<br />
Module: `Stream`<br />

## Stream.callback

Creates a stream from a callback that can emit values into a queue.

You can use the `Queue` with the apis from the `Queue` module to emit
values to the stream or to signal the stream ending.

By default it uses an "unbounded" buffer size.
You can customize the buffer size and strategy by passing an object as the
second argument with the `bufferSize` and `strategy` fields.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.async`
- `Stream.asyncEffect`
- `Stream.asyncPush`
- `Stream.asyncScoped`

**Example**

```ts
import { Console, Effect, Queue, Stream } from "effect"

const stream = Stream.callback<number>((queue) =>
  Effect.sync(() => {
    // Emit values to the stream
    Queue.offerUnsafe(queue, 1)
    Queue.offerUnsafe(queue, 2)
    Queue.offerUnsafe(queue, 3)
    // Signal completion
    Queue.endUnsafe(queue)
  })
)

const program = Effect.gen(function*() {
  const values = yield* stream.pipe(Stream.runCollect)
  yield* Console.log(values)
  // [ 1, 2, 3 ]
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const callback: <A, E = never, R = never>(f: (queue: Queue.Queue<A, E | Cause.Done>) => Effect.Effect<unknown, E, R | Scope.Scope>, options?: { readonly bufferSize?: number | undefined; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; }) => Stream<A, E, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L692)

Since v2.0.0