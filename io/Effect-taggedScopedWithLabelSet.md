# taggedScopedWithLabelSet

Tags each metric in a scope with a the specific tag.

To import and use `taggedScopedWithLabelSet` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.taggedScopedWithLabelSet
```

**Signature**

```ts
export declare const taggedScopedWithLabelSet: (
  labels: HashSet.HashSet<MetricLabel.MetricLabel>
) => Effect<Scope.Scope, never, void>
```
