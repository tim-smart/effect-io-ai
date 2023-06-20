# tags

Retrieves the metric tags associated with the current scope.

To import and use `tags` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tags
```

**Signature**

```ts
export declare const tags: (_: void) => Effect<never, never, HashSet.HashSet<MetricLabel.MetricLabel>>
```
