## onDone

Runs the specified effect if this stream ends.

**Signature**

```ts
declare const onDone: { <X, R2>(cleanup: () => Effect.Effect<X, never, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>; <A, E, R, X, R2>(self: Stream<A, E, R>, cleanup: () => Effect.Effect<X, never, R2>): Stream<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3210)

Since v2.0.0