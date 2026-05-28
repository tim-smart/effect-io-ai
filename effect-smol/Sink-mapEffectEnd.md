Package: `effect`<br />
Module: `Sink`<br />

## Sink.mapEffectEnd

Transforms the full `End` produced by this sink effectfully.

**Details**

This can change both the result value and the optional leftovers, and the
transformation can fail or require services.

**Signature**

```ts
declare const mapEffectEnd: { <A, L, A2, E2, R2, L2 = never>(f: (end: End<A, L>) => Effect.Effect<End<A2, L2>, E2, R2>): <In, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In, L2, E2 | E, R2 | R>; <A, In, L, E, R, A2, E2, R2, L2 = never>(self: Sink<A, In, L, E, R>, f: (end: End<A, L>) => Effect.Effect<End<A2, L2>, E2, R2>): Sink<A2, In, L2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1058)

Since v4.0.0