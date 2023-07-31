# withParentSpanScoped

Adds the provided span to the current span stack.

To import and use `withParentSpanScoped` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.withParentSpanScoped
```

**Signature**

```ts
export declare const withParentSpanScoped: (span: Tracer.ParentSpan) => Effect<Scope.Scope, never, void>
```
