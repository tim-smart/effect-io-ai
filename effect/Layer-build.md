# build

Builds a layer into a scoped value.

To import and use `build` from the "Layer" module:

```ts
import * as Layer from 'effect/Layer'

// Can be accessed like this
Layer.build
```

**Signature**

```ts
export declare const build: <RIn, E, ROut>(
  self: Layer<RIn, E, ROut>
) => Effect.Effect<Scope.Scope | RIn, E, Context.Context<ROut>>
```
