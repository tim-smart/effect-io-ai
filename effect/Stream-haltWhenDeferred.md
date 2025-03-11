## haltWhenDeferred

Halts the evaluation of this stream when the provided promise resolves.

If the promise completes with a failure, the stream will emit that failure.

**Signature**

```ts
declare const haltWhenDeferred: { <X, E2>(deferred: Deferred.Deferred<X, E2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R>; <A, E, R, X, E2>(self: Stream<A, E, R>, deferred: Deferred.Deferred<X, E2>): Stream<A, E | E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2469)

Since v2.0.0