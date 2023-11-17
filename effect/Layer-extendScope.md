# extendScope

Extends the scope of this layer, returning a new layer that when provided
to an effect will not immediately release its associated resources when
that effect completes execution but instead when the scope the resulting
effect depends on is closed.

To import and use `extendScope` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.extendScope
```

**Signature**

```ts
export declare const extendScope: <RIn, E, ROut>(self: Layer<RIn, E, ROut>) => Layer<Scope.Scope | RIn, E, ROut>
```
