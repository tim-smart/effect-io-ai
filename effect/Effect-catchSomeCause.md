Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchSomeCause

Recovers from specific causes using a provided partial function.

**See**

- `catchSome` for a version that allows you to recover from errors.
- `catchSomeDefect` for a version that allows you to recover from defects.

**Signature**

```ts
declare const catchSomeCause: { <E, A2, E2, R2>(f: (cause: Cause.Cause<NoInfer<E>>) => Option.Option<Effect<A2, E2, R2>>): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E | E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, f: (cause: Cause.Cause<NoInfer<E>>) => Option.Option<Effect<A2, E2, R2>>): Effect<A2 | A, E | E2, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3731)

Since v2.0.0