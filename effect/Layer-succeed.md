# succeed

Constructs a layer from the specified value.

To import and use `succeed` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.succeed
```

**Signature**

```ts
export declare const succeed: {
  <T extends Context.Tag<any, any>>(tag: T): (resource: Context.Tag.Service<T>) => Layer<Context.Tag.Identifier<T>>
  <T extends Context.Tag<any, any>>(tag: T, resource: Context.Tag.Service<T>): Layer<Context.Tag.Identifier<T>>
}
```
