Package: `effect`<br />
Module: `Effect`<br />

## Effect.asyncEffect

A variant of `async` where the registration function may return an `Effect`.

**Signature**

```ts
declare const asyncEffect: <A, E, R, R3, E2, R2>(register: (callback: (_: Effect<A, E, R>) => void) => Effect<Effect<void, never, R3> | void, E2, R2>) => Effect<A, E | E2, R | R2 | R3>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2435)

Since v2.0.0