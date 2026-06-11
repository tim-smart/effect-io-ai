Package: `effect`<br />
Module: `Sink`<br />

## Sink.mapEffect

Transforms this sink's result effectfully.

**When to use**

Use when you need a sink result transformation that is effectful, can fail,
or requires services.

**Details**

The transformed sink preserves the original sink's input consumption and
leftovers while adding the errors and requirements of the transformation.

**See**

- `map` for pure result transformations
- `mapEffectEnd` for effectfully transforming both the result and leftovers
- `flatMap` for continuing with another sink based on the result

**Signature**

```ts
declare const mapEffect: { <A, A2, E2, R2>(f: (a: A) => Effect.Effect<A2, E2, R2>): <In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In, L, E2 | E, R2 | R>; <A, In, L, E, R, A2, E2, R2>(self: Sink<A, In, L, E, R>, f: (a: A) => Effect.Effect<A2, E2, R2>): Sink<A2, In, L, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1068)

Since v2.0.0