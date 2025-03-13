Package: `effect`<br />
Module: `Stream`<br />

## Stream.interruptWhenDeferred

Interrupts the evaluation of this stream when the provided promise
resolves. This combinator will also interrupt any in-progress element being
pulled from upstream.

If the promise completes with a failure, the stream will emit that failure.

**Signature**

```ts
declare const interruptWhenDeferred: { <X, E2>(deferred: Deferred.Deferred<X, E2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R>; <A, E, R, X, E2>(self: Stream<A, E, R>, deferred: Deferred.Deferred<X, E2>): Stream<A, E | E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2658)

Since v2.0.0