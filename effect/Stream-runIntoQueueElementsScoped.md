Package: `effect`<br />
Module: `Stream`<br />

## Stream.runIntoQueueElementsScoped

Like `Stream.runIntoQueue`, but provides the result as a scoped Effect
to allow for scope composition.

**Signature**

```ts
declare const runIntoQueueElementsScoped: { <A, E>(queue: Queue.Enqueue<Exit.Exit<A, Option.Option<E>>>): <R>(self: Stream<A, E, R>) => Effect.Effect<void, never, Scope.Scope | R>; <A, E, R>(self: Stream<A, E, R>, queue: Queue.Enqueue<Exit.Exit<A, Option.Option<E>>>): Effect.Effect<void, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4441)

Since v2.0.0