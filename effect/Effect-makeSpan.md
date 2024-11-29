# makeSpan

Create a new span for tracing.

To import and use `makeSpan` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.makeSpan
undefined

**Signature**

```ts
export declare const makeSpan: (name: string, options?: Tracer.SpanOptions) => Effect<Tracer.Span>
```
