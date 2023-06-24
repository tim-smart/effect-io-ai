# setTracer

Create a Layer that sets the current Tracer

To import and use `setTracer` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.setTracer
```

**Signature**

```ts
export declare const setTracer: (tracer: Tracer.Tracer) => Layer.Layer<never, never, never>
```
