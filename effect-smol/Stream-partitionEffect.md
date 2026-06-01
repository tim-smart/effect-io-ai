Package: `effect`<br />
Module: `Stream`<br />

## Stream.partitionEffect

Splits a stream with an effectful `Filter`, returning scoped streams for
filter successes and failures.

**When to use**

Use when you need to classify each stream element with an effectful `Filter`
and consume both passing and failing mapped values as streams.

**Details**

The returned streams are backed by queues in the current scope and should be
consumed while that scope remains open. The first stream emits success values
from the filter, and the second emits failure values.

**See**

- `partition` for the pure `Filter` variant, which returns the failing stream before the passing stream
- `partitionQueue` for the lower-level queue result
- `filterMapEffect` for effectful filtering that discards failed filter results

**Signature**

```ts
declare const partitionEffect: { <A, Pass, Fail, EX, RX>(filter: Filter.FilterEffect<NoInfer<A>, Pass, Fail, EX, RX>, options?: { readonly capacity?: number | "unbounded" | undefined; readonly concurrency?: number | "unbounded" | undefined; }): <E, R>(self: Stream<A, E, R>) => Effect.Effect<[passes: Stream<Pass, E | EX>, fails: Stream<Fail, E | EX>], never, R | RX | Scope.Scope>; <A, E, R, Pass, Fail, EX, RX>(self: Stream<A, E, R>, filter: Filter.FilterEffect<NoInfer<A>, Pass, Fail, EX, RX>, options?: { readonly capacity?: number | "unbounded" | undefined; readonly concurrency?: number | "unbounded" | undefined; }): Effect.Effect<[passes: Stream<Pass, E | EX>, fails: Stream<Fail, E | EX>], never, R | RX | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4649)

Since v4.0.0