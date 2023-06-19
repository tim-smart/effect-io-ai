# scoped

Constructs a layer from the specified scoped effect.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const scoped: <T extends Context.Tag<any, any>, R, E>(
  tag: T,
  effect: Effect.Effect<R, E, Context.Tag.Service<T>>
) => Layer<Exclude<R, Scope.Scope>, E, Context.Tag.Identifier<T>>
```
