# manual

Makes a new reloadable service from a layer that describes the construction
of a static service.

To import and use `manual` from the "Reloadable" module:

```ts
import * as Reloadable from "effect/Reloadable"
// Can be accessed like this
Reloadable.manual
```

**Signature**

```ts
export declare const manual: <I, S, In, E>(
  tag: Context.Tag<I, S>,
  options: { readonly layer: Layer.Layer<I, E, In> }
) => Layer.Layer<Reloadable<I>, E, In>
```
