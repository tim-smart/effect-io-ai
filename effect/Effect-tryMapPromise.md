Package: `effect`<br />
Module: `Effect`<br />

## Effect.tryMapPromise

Returns an effect that maps its success using the specified side-effecting
`try` function, converting any promise rejections into typed failed effects
using the `catch` function.

An optional `AbortSignal` can be provided to allow for interruption of the
wrapped `Promise` API.

**See**

- `tryMap` for a version that works with synchronous computations.

**Signature**

```ts
declare const tryMapPromise: { <A, B, E1>(options: { readonly try: (a: A, signal: AbortSignal) => PromiseLike<B>; readonly catch: (error: unknown) => E1; }): <E, R>(self: Effect<A, E, R>) => Effect<B, E1 | E, R>; <A, E, R, B, E1>(self: Effect<A, E, R>, options: { readonly try: (a: A, signal: AbortSignal) => PromiseLike<B>; readonly catch: (error: unknown) => E1; }): Effect<B, E | E1, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4610)

Since v2.0.0