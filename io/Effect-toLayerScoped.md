# toLayerScoped

Constructs a layer from this effect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const toLayerScoped: {
  <I, A>(tag: Context.Tag<I, A>): <R, E>(self: Effect<R, E, A>) => Layer.Layer<Exclude<R, Scope.Scope>, E, I>
  <R, E, I, A>(self: Effect<R, E, A>, tag: Context.Tag<I, A>): Layer.Layer<Exclude<R, Scope.Scope>, E, I>
}
```
