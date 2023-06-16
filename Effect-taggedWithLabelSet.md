# taggedWithLabelSet

Tags each metric in this effect with the specific tag.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const taggedWithLabelSet: {
  (labels: HashSet.HashSet<MetricLabel.MetricLabel>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, labels: HashSet.HashSet<MetricLabel.MetricLabel>): Effect<R, E, A>
}
```
