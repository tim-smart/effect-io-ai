# manual

Makes a new reloadable service from a layer that describes the construction
of a static service.

Part of the `Reloadable` module, imported from `@effect/io/Reloadable`.

**Signature**

```ts
export declare const manual: <Out extends Context.Tag<any, any>, In, E>(
  tag: Out,
  layer: Layer.Layer<In, E, Context.Tag.Identifier<Out>>
) => Layer.Layer<In, E, Reloadable<Context.Tag.Identifier<Out>>>
```
