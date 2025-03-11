## asyncPush

Creates a stream from an external push-based resource.

You can use the `emit` helper to emit values to the stream. The `emit` helper
returns a boolean indicating whether the value was emitted or not.

You can also use the `emit` helper to signal the end of the stream by
using apis such as `emit.end` or `emit.fail`.

By default it uses an "unbounded" buffer size.
You can customize the buffer size and strategy by passing an object as the
second argument with the `bufferSize` and `strategy` fields.

**Example**

```ts
import { Effect, Stream } from "effect"

Stream.asyncPush<string>((emit) =>
  Effect.acquireRelease(
    Effect.gen(function*() {
      yield* Effect.log("subscribing")
      return setInterval(() => emit.single("tick"), 1000)
    }),
    (handle) =>
      Effect.gen(function*() {
        yield* Effect.log("unsubscribing")
        clearInterval(handle)
      })
  ), { bufferSize: 16, strategy: "dropping" })
```

**Signature**

```ts
declare const asyncPush: <A, E = never, R = never>(register: (emit: Emit.EmitOpsPush<E, A>) => Effect.Effect<unknown, E, R | Scope.Scope>, options?: { readonly bufferSize: "unbounded"; } | { readonly bufferSize?: number | undefined; readonly strategy?: "dropping" | "sliding" | undefined; } | undefined) => Stream<A, E, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L414)

Since v3.6.0