# auto

Makes a new reloadable service from a layer that describes the construction
of a static service. The service is automatically reloaded according to the
provided schedule.

To import and use `auto` from the "Reloadable" module:

```ts
import * as Reloadable from "effect/Reloadable"
// Can be accessed like this
Reloadable.auto
```

**Signature**

```ts
export declare const auto: <I, S, E, In, R>(
  tag: Context.Tag<I, S>,
  options: { readonly layer: Layer.Layer<I, E, In>; readonly schedule: Schedule.Schedule<unknown, unknown, R> }
) => Layer.Layer<Reloadable<I>, E, R | In>
```
