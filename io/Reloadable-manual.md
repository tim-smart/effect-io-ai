# manual

Makes a new reloadable service from a layer that describes the construction
of a static service.

To import and use `manual` from the "Reloadable" module:

```ts
import * as Reloadable from '@effect/io/Reloadable'

// Can be accessed like this
Reloadable.manual
```

**Signature**

```ts
export declare const manual: <Out extends Context.Tag<any, any>, In, E>(
  tag: Out,
  options: { readonly layer: Layer.Layer<In, E, Context.Tag.Identifier<Out>> }
) => Layer.Layer<In, E, Reloadable<Context.Tag.Identifier<Out>>>
```
