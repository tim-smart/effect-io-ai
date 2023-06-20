# taggedScopedWithLabels

Tags each metric in a scope with a the specific tag.

To import and use `taggedScopedWithLabels` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.taggedScopedWithLabels
```

**Signature**

```ts
export declare const taggedScopedWithLabels: (
  labels: ReadonlyArray<MetricLabel.MetricLabel>
) => Effect<Scope.Scope, never, void>
```
