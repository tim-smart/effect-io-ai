# toRuntime

Converts a layer that requires no services into a scoped runtime, which can
be used to execute effects.

To import and use `toRuntime` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.toRuntime
```

**Signature**

```ts
export declare const toRuntime: <RIn, E, ROut>(
  self: Layer<ROut, E, RIn>
) => Effect.Effect<Runtime.Runtime<ROut>, E, Scope.Scope | RIn>
```
