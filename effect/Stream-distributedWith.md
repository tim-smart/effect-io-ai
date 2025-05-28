Package: `effect`<br />
Module: `Stream`<br />

## Stream.distributedWith

More powerful version of `Stream.broadcast`. Allows to provide a function
that determines what queues should receive which elements. The decide
function will receive the indices of the queues in the resulting list.

**Signature**

```ts
declare const distributedWith: { <N extends number, A>(options: { readonly size: N; readonly maximumLag: number; readonly decide: (a: A) => Effect.Effect<Predicate<number>>; }): <E, R>(self: Stream<A, E, R>) => Effect.Effect<TupleOf<N, Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>>, never, Scope.Scope | R>; <A, E, R, N extends number>(self: Stream<A, E, R>, options: { readonly size: N; readonly maximumLag: number; readonly decide: (a: A) => Effect.Effect<Predicate<number>>; }): Effect.Effect<TupleOf<N, Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1276)

Since v2.0.0