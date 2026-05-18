Package: `effect`<br />
Module: `Stream`<br />

## Stream.partitionEffect

Splits a stream with an effectful `Filter`, returning scoped streams for
filter successes and failures.

The returned streams are backed by queues in the current scope and should be
consumed while that scope remains open. The first stream emits success values
from the filter, and the second emits failure values.

**Signature**

```ts
declare const partitionEffect: { <A, Pass, Fail, EX, RX>(filter: Filter.FilterEffect<NoInfer<A>, Pass, Fail, EX, RX>, options?: { readonly capacity?: number | "unbounded" | undefined; readonly concurrency?: number | "unbounded" | undefined; }): <E, R>(self: Stream<A, E, R>) => Effect.Effect<[passes: Stream<Pass, E | EX>, fails: Stream<Fail, E | EX>], never, R | RX | Scope.Scope>; <A, E, R, Pass, Fail, EX, RX>(self: Stream<A, E, R>, filter: Filter.FilterEffect<NoInfer<A>, Pass, Fail, EX, RX>, options?: { readonly capacity?: number | "unbounded" | undefined; readonly concurrency?: number | "unbounded" | undefined; }): Effect.Effect<[passes: Stream<Pass, E | EX>, fails: Stream<Fail, E | EX>], never, R | RX | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4484)

Since v4.0.0