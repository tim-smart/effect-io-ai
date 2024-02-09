# withParentSpan

Adds the provided span to the current span stack.

To import and use `withParentSpan` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withParentSpan
```

**Signature**

```ts
export declare const withParentSpan: {
  (span: Tracer.ParentSpan): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, Tracer.ParentSpan>>
  <A, E, R>(self: Effect<A, E, R>, span: Tracer.ParentSpan): Effect<A, E, Exclude<R, Tracer.ParentSpan>>
}
```
