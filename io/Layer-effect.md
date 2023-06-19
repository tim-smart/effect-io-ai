# effect

Constructs a layer from the specified effect.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const effect: <T extends Context.Tag<any, any>, R, E>(
  tag: T,
  effect: Effect.Effect<R, E, Context.Tag.Service<T>>
) => Layer<R, E, Context.Tag.Identifier<T>>
```
