# taggedScopedWithLabelSet

Tags each metric in a scope with a the specific tag.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const taggedScopedWithLabelSet: (
  labels: HashSet.HashSet<MetricLabel.MetricLabel>
) => Effect<Scope.Scope, never, void>
```
