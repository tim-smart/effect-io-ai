# scoped

Constructs a layer from the specified scoped effect.

To import and use `scoped` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.scoped
```

**Signature**

```ts
export declare const scoped: <T extends Context.Tag<any, any>, R, E>(
  tag: T,
  effect: Effect.Effect<R, E, Context.Tag.Service<T>>
) => Layer<Exclude<R, Scope.Scope>, E, Context.Tag.Identifier<T>>
```
