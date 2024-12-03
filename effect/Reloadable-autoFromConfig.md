# autoFromConfig

Makes a new reloadable service from a layer that describes the construction
of a static service. The service is automatically reloaded according to a
schedule, which is extracted from the input to the layer.

To import and use `autoFromConfig` from the "Reloadable" module:

```ts
import * as Reloadable from "effect/Reloadable"
// Can be accessed like this
Reloadable.autoFromConfig
```

**Signature**

```ts
export declare const autoFromConfig: <Out extends Context.Tag<any, any>, E, In, R>(
  tag: Out,
  options: {
    readonly layer: Layer.Layer<Context.Tag.Identifier<Out>, E, In>
    readonly scheduleFromConfig: (context: Context.Context<In>) => Schedule.Schedule<unknown, unknown, R>
  }
) => Layer.Layer<Reloadable<Context.Tag.Identifier<Out>>, E, In | R>
```
