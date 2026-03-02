Package: `effect`<br />
Module: `Stream`<br />

## Stream.scoped

Runs a stream that requires `Scope` in a managed scope, ensuring its
finalizers are run when the stream completes.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.scoped(
  Stream.fromEffect(
    Effect.acquireRelease(
      Console.log("acquire").pipe(Effect.as("resource")),
      () => Console.log("release")
    )
  )
)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// acquire
// release
// [ "resource" ]
```

**Signature**

```ts
declare const scoped: <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1693)

Since v2.0.0