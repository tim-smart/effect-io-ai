# setParentSpan

Adds the provided span to the span stack.

To import and use `setParentSpan` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.setParentSpan
```

**Signature**

```ts
export declare const setParentSpan: (span: Tracer.ParentSpan) => Layer.Layer<never, never, never>
```
