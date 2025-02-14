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
  <I, S>(tag: Context.Tag<I, S>): (evaluate: LazyArg<Types.NoInfer<S>>) => Layer<I>
  <I, S>(tag: Context.Tag<I, S>, evaluate: LazyArg<Types.NoInfer<S>>): Layer<I>
}
```
