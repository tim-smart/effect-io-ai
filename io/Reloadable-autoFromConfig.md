# autoFromConfig

Makes a new reloadable service from a layer that describes the construction
of a static service. The service is automatically reloaded according to a
schedule, which is extracted from the input to the layer.

Part of the `Reloadable` module, imported from `@effect/io/Reloadable`.

**Signature**

```ts
export declare const autoFromConfig: <Out extends Context.Tag<any, any>, In, E, R>(
  tag: Out,
  layer: Layer.Layer<In, E, Context.Tag.Identifier<Out>>,
  scheduleFromConfig: (context: Context.Context<In>) => Schedule.Schedule<R, unknown, unknown>
) => Layer.Layer<In | R, E, Reloadable<Context.Tag.Identifier<Out>>>
```
