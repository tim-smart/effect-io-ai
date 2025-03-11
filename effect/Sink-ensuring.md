## ensuring

Returns a new sink with an attached finalizer. The finalizer is guaranteed
to be executed so long as the sink begins execution (and regardless of
whether or not it completes).

**Signature**

```ts
declare const ensuring: { <X, R2>(finalizer: Effect.Effect<X, never, R2>): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, L, E, R2 | R>; <A, In, L, E, R, X, R2>(self: Sink<A, In, L, E, R>, finalizer: Effect.Effect<X, never, R2>): Sink<A, In, L, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L496)

Since v2.0.0