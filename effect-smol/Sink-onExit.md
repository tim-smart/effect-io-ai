Package: `effect`<br />
Module: `Sink`<br />

## Sink.onExit

Runs an effect after this sink completes, fails, or is interrupted.

**Details**

The effect receives the sink's `Exit` for the result value. The original
sink result and leftovers are preserved unless the finalizer itself fails.

**Signature**

```ts
declare const onExit: { <A, E, X, E2, R2>(f: (exit: Exit.Exit<A, E>) => Effect.Effect<X, E2, R2>): <In, L, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, L, E | E2, R2 | R>; <A, In, L, E, R, X, E2, R2>(self: Sink<A, In, L, E, R>, f: (exit: Exit.Exit<A, E>) => Effect.Effect<X, E2, R2>): Sink<A, In, L, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L2158)

Since v4.0.0