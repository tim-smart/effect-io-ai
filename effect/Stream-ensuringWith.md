## ensuringWith

Executes the provided finalizer after this stream's finalizers run.

**Signature**

```ts
declare const ensuringWith: { <E, R2>(finalizer: (exit: Exit.Exit<unknown, E>) => Effect.Effect<unknown, never, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>; <A, E, R, R2>(self: Stream<A, E, R>, finalizer: (exit: Exit.Exit<unknown, E>) => Effect.Effect<unknown, never, R2>): Stream<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1506)

Since v2.0.0