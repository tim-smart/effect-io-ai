# buildWithScope

Builds a layer into an `Effect` value. Any resources associated with this
layer will be released when the specified scope is closed unless their scope
has been extended. This allows building layers where the lifetime of some of
the services output by the layer exceed the lifetime of the effect the
layer is provided to.

To import and use `buildWithScope` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.buildWithScope
undefined

**Signature**

```ts
export declare const buildWithScope: {
  (scope: Scope.Scope): <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect.Effect<Context.Context<ROut>, E, RIn>
  <RIn, E, ROut>(self: Layer<ROut, E, RIn>, scope: Scope.Scope): Effect.Effect<Context.Context<ROut>, E, RIn>
}
```
