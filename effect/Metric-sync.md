Package: `effect`<br />
Module: `Metric`<br />

## Metric.sync

Creates a metric that ignores input and produces constant output.

**Signature**

```ts
declare const sync: <Out>(evaluate: LazyArg<Out>) => Metric<void, unknown, Out>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L397)

Since v2.0.0