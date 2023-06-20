# toRuntime

Converts a layer that requires no services into a scoped runtime, which can
be used to execute effects.

To import and use `toRuntime` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.toRuntime
```

**Signature**

```ts
export declare const toRuntime: <RIn, E, ROut>(
  self: Layer<RIn, E, ROut>
) => Effect.Effect<Scope.Scope | RIn, E, Runtime.Runtime<ROut>>
```
