# unwrapScoped

Creates a sink produced from a scoped effect.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const unwrapScoped: <R, E, In, L, Z>(
  effect: Effect.Effect<Scope.Scope | R, E, Sink<R, E, In, L, Z>>
) => Sink<R, E, In, L, Z>
```
