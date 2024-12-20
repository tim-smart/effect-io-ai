# sync

Lazily constructs a layer from the specified value.

To import and use `sync` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.sync
```

**Signature**

```ts
export declare const sync: {
  <T extends Context.Tag<any, any>>(
    tag: T
  ): (evaluate: LazyArg<Context.Tag.Service<T>>) => Layer<Context.Tag.Identifier<T>>
  <T extends Context.Tag<any, any>>(tag: T, evaluate: LazyArg<Context.Tag.Service<T>>): Layer<Context.Tag.Identifier<T>>
}
```
