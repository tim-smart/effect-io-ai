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
  (span: Tracer.AnySpan, attributes?: Record<string, unknown>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(self: Effect<A, E, R>, span: Tracer.AnySpan, attributes?: Record<string, unknown>): Effect<A, E, R>
}
```
