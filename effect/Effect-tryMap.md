Package: `effect`<br />
Module: `Effect`<br />

## Effect.tryMap

Returns an effect that maps its success using the specified side-effecting
`try` function, converting any errors into typed failed effects using the
`catch` function.

**See**

- `tryPromise` for a version that works with asynchronous computations.

**Signature**

```ts
declare const tryMap: { <A, B, E1>(options: { readonly try: (a: A) => B; readonly catch: (error: unknown) => E1; }): <E, R>(self: Effect<A, E, R>) => Effect<B, E1 | E, R>; <A, E, R, B, E1>(self: Effect<A, E, R>, options: { readonly try: (a: A) => B; readonly catch: (error: unknown) => E1; }): Effect<B, E | E1, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4587)

Since v2.0.0