# effectContext

Constructs a layer from the specified effect, which must return one or more
services.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const effectContext: <R, E, A>(effect: Effect.Effect<R, E, Context.Context<A>>) => Layer<R, E, A>
```
