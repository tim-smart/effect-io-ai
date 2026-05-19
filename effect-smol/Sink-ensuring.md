Package: `effect`<br />
Module: `Sink`<br />

## Sink.ensuring

Runs a finalizer effect after this sink completes, fails, or is interrupted.

The original sink result and leftovers are preserved unless the finalizer
itself fails.

**Signature**

```ts
declare const ensuring: { <X, E2, R2>(effect: Effect.Effect<X, E2, R2>): <A, E, In, L, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, L, E | E2, R2 | R>; <A, In, L, E, R, X, E2, R2>(self: Sink<A, In, L, E, R>, effect: Effect.Effect<X, E2, R2>): Sink<A, In, L, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1952)

Since v2.0.0