# linkSpans

For all spans in this effect, add a link with the provided span.

To import and use `linkSpans` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.linkSpans
```

**Signature**

```ts
export declare const linkSpans: {
  (span: Tracer.ParentSpan, attributes?: Record<string, unknown>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, span: Tracer.ParentSpan, attributes?: Record<string, unknown>): Effect<R, E, A>
}
```
