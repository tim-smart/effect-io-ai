# discard

Replaces the layer's output with `void` and includes the layer only for its
side-effects.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const discard: <RIn, E, ROut>(self: Layer<RIn, E, ROut>) => Layer<RIn, E, never>
```
