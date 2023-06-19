# auto

Makes a new reloadable service from a layer that describes the construction
of a static service. The service is automatically reloaded according to the
provided schedule.

Part of the `Reloadable` module, imported from `@effect/io/Reloadable`.

**Signature**

```ts
export declare const auto: <Out extends Context.Tag<any, any>, In, E, R>(
  tag: Out,
  layer: Layer.Layer<In, E, Context.Tag.Identifier<Out>>,
  policy: Schedule.Schedule<R, unknown, unknown>
) => Layer.Layer<In | R, E, Reloadable<Context.Tag.Identifier<Out>>>
```
