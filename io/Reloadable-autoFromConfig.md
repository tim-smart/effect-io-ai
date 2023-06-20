# autoFromConfig

Makes a new reloadable service from a layer that describes the construction
of a static service. The service is automatically reloaded according to a
schedule, which is extracted from the input to the layer.

To import and use `autoFromConfig` from the "Reloadable" module:

```ts
import * as Reloadable from '@effect/io/Reloadable'

// Can be accessed like this
Reloadable.autoFromConfig
```

**Signature**

```ts
export declare const autoFromConfig: <Out extends Context.Tag<any, any>, In, E, R>(
  tag: Out,
  layer: Layer.Layer<In, E, Context.Tag.Identifier<Out>>,
  scheduleFromConfig: (context: Context.Context<In>) => Schedule.Schedule<R, unknown, unknown>
) => Layer.Layer<In | R, E, Reloadable<Context.Tag.Identifier<Out>>>
```
