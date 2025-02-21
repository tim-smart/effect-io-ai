# tagMetricsScoped

Tags metrics within a scope with a specific key-value pair.

**Details**

This function tags all metrics within a scope with the provided key-value
pair. Once the scope is closed, the tag is automatically removed. This is
useful for applying temporary context-specific tags to metrics during scoped
operations.

To import and use `tagMetricsScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tagMetricsScoped
```

**Signature**

```ts
export declare const tagMetricsScoped: (key: string, value: string) => Effect<void, never, Scope.Scope>
```
