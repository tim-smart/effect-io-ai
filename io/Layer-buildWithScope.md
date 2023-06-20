# buildWithScope

Builds a layer into an `Effect` value. Any resources associated with this
layer will be released when the specified scope is closed unless their scope
has been extended. This allows building layers where the lifetime of some of
the services output by the layer exceed the lifetime of the effect the
layer is provided to.

To import and use `buildWithScope` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.buildWithScope
```

**Signature**

```ts
export declare const buildWithScope: {
  (scope: Scope.Scope): <RIn, E, ROut>(self: Layer<RIn, E, ROut>) => Effect.Effect<RIn, E, Context.Context<ROut>>
  <RIn, E, ROut>(self: Layer<RIn, E, ROut>, scope: Scope.Scope): Effect.Effect<RIn, E, Context.Context<ROut>>
}
```
