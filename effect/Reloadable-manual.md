# manual

Makes a new reloadable service from a layer that describes the construction
of a static service.

To import and use `manual` from the "Reloadable" module:

ts
import \* as Reloadable from "effect/Reloadable"
// Can be accessed like this
Reloadable.manual
undefined

**Signature**

```ts
export declare const manual: <Out extends Context.Tag<any, any>, In, E>(
  tag: Out,
  options: { readonly layer: Layer.Layer<Context.Tag.Identifier<Out>, E, In> }
) => Layer.Layer<Reloadable<Context.Tag.Identifier<Out>>, E, In>
```
