Package: `effect`<br />
Module: `Stream`<br />

## Stream.runIntoQueueScoped

Like `Stream.runIntoQueue`, but provides the result as a scoped effect
to allow for scope composition.

**Signature**

```ts
declare const runIntoQueueScoped: { <A, E>(queue: Queue.Enqueue<Take.Take<A, E>>): <R>(self: Stream<A, E, R>) => Effect.Effect<void, never, Scope.Scope | R>; <A, E, R>(self: Stream<A, E, R>, queue: Queue.Enqueue<Take.Take<A, E>>): Effect.Effect<void, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4423)

Since v2.0.0