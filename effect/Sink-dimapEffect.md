## dimapEffect

Effectfully transforms both inputs and result of this sink using the
provided functions.

**Signature**

```ts
declare const dimapEffect: { <In0, In, E2, R2, A, A2, E3, R3>(options: { readonly onInput: (input: In0) => Effect.Effect<In, E2, R2>; readonly onDone: (a: A) => Effect.Effect<A2, E3, R3>; }): <L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In0, L, E2 | E3 | E, R2 | R3 | R>; <A, In, L, E, R, In0, E2, R2, A2, E3, R3>(self: Sink<A, In, L, E, R>, options: { readonly onInput: (input: In0) => Effect.Effect<In, E2, R2>; readonly onDone: (a: A) => Effect.Effect<A2, E3, R3>; }): Sink<A2, In0, L, E | E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L380)

Since v2.0.0