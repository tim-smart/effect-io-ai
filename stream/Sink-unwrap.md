# unwrap

Creates a sink produced from an effect.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const unwrap: <R, E, R2, E2, In, L, Z>(
  effect: Effect.Effect<R, E, Sink<R2, E2, In, L, Z>>
) => Sink<R | R2, E | E2, In, L, Z>
```
