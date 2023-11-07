# withParentSpan

Adds the provided span to the current span stack.

To import and use `withParentSpan` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.withParentSpan
```

**Signature**

```ts
export declare const withParentSpan: {
  (span: Tracer.ParentSpan): <R, E, A>(self: Effect<R, E, A>) => Effect<Exclude<R, Tracer.ParentSpan>, E, A>
  <R, E, A>(self: Effect<R, E, A>, span: Tracer.ParentSpan): Effect<Exclude<R, Tracer.ParentSpan>, E, A>
}
```
