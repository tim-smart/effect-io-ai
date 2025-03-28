Package: `effect`<br />
Module: `Sink`<br />

## Sink.findEffect

Creates a sink that produces values until one verifies the predicate `f`.

**Signature**

```ts
declare const findEffect: { <A, E2, R2>(f: (a: A) => Effect.Effect<boolean, E2, R2>): <In, L extends In, E, R>(self: Sink<A, In, L, E, R>) => Sink<Option.Option<A>, In, L, E2 | E, R2 | R>; <A, In, L extends In, E, R, E2, R2>(self: Sink<A, In, L, E, R>, f: (a: A) => Effect.Effect<boolean, E2, R2>): Sink<Option.Option<A>, In, L, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L634)

Since v2.0.0