# orDie

Translates effect failure into death of the fiber, making all failures
unchecked and not a part of the type of the layer.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const orDie: <R, E, A>(self: Layer<R, E, A>) => Layer<R, never, A>
```
