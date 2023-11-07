# runtime

Returns an effect that accesses the runtime, which can be used to
(unsafely) execute tasks. This is useful for integration with legacy code
that must call back into Effect code.

To import and use `runtime` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.runtime
```

**Signature**

```ts
export declare const runtime: <R>() => Effect<R, never, Runtime.Runtime<R>>
```
