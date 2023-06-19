# taggedScopedWithLabelSet

Tags each metric in a scope with a the specific tag.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const taggedScopedWithLabelSet: (
  labels: HashSet.HashSet<MetricLabel.MetricLabel>
) => Effect<Scope.Scope, never, void>
```
