Package: `effect`<br />
Module: `Sink`<br />

## Sink.ensuringWith

Returns a new sink with an attached finalizer. The finalizer is guaranteed
to be executed so long as the sink begins execution (and regardless of
whether or not it completes).

**Signature**

```ts
declare const ensuringWith: { <A, E, X, R2>(finalizer: (exit: Exit.Exit<A, E>) => Effect.Effect<X, never, R2>): <In, L, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, L, E, R2 | R>; <A, In, L, E, R, X, R2>(self: Sink<A, In, L, E, R>, finalizer: (exit: Exit.Exit<A, E>) => Effect.Effect<X, never, R2>): Sink<A, In, L, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L511)

Since v2.0.0