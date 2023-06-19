# fromEffect

Creates a single-value sink produced from an effect.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const fromEffect: <R, E, Z>(effect: Effect.Effect<R, E, Z>) => Sink<R, E, unknown, never, Z>
```
