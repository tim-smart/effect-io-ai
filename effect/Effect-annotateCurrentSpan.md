# annotateCurrentSpan

Adds an annotation to the current span if available

To import and use `annotateCurrentSpan` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.annotateCurrentSpan
```

**Signature**

```ts
export declare const annotateCurrentSpan: {
  (key: string, value: unknown): Effect<never, never, void>
  (values: Record<string, unknown>): Effect<never, never, void>
}
```
