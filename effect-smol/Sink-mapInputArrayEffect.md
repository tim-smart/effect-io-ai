Package: `effect`<br />
Module: `Sink`<br />

## Sink.mapInputArrayEffect

Effectfully transforms this sink's input elements.

**Signature**

```ts
declare const mapInputArrayEffect: { <In0, In, E2, R2>(f: (input: Arr.NonEmptyReadonlyArray<In0>) => Effect.Effect<Arr.NonEmptyReadonlyArray<In>, E2, R2>): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In0, L, E2 | E, R2 | R>; <A, In, L, E, R, In0, E2, R2>(self: Sink<A, In, L, E, R>, f: (input: Arr.NonEmptyReadonlyArray<In0>) => Effect.Effect<Arr.NonEmptyReadonlyArray<In>, E2, R2>): Sink<A, In0, L, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L820)

Since v4.0.0