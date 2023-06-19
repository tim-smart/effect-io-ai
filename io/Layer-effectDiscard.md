# effectDiscard

Constructs a layer from the specified effect discarding it's output.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const effectDiscard: <R, E, _>(effect: Effect.Effect<R, E, _>) => Layer<R, E, never>
```
