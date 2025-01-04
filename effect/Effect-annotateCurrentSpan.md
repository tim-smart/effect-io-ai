# annotateCurrentSpan

Adds annotations to the currently active span for traceability.

**Details**

This function adds key-value annotations to the currently active span in the
effect's trace. These annotations help provide more context about the
operation being executed at a specific point in time. Unlike
{@link annotateSpans}, which applies to all spans in an effect, this function
focuses solely on the active span.

You can either pass a single key-value pair or a record of key-value pairs to
annotate the span. These annotations are useful for adding metadata to
operations, especially in systems with detailed observability requirements.

To import and use `annotateCurrentSpan` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.annotateCurrentSpan
```

**Signature**

```ts
export declare const annotateCurrentSpan: {
  (key: string, value: unknown): Effect<void>
  (values: Record<string, unknown>): Effect<void>
}
```
