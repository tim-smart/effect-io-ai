# parentSpan

Adds the provided span to the span stack.

To import and use `parentSpan` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.parentSpan
undefined

**Signature**

```ts
export declare const parentSpan: (span: Tracer.AnySpan) => Layer<Tracer.ParentSpan>
```
