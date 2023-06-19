# sync

Creates a metric that ignores input and produces constant output.

Part of the `Metric` module, imported from `@effect/io/Metric`.

**Signature**

```ts
export declare const sync: <Out>(evaluate: LazyArg<Out>) => Metric<void, unknown, Out>
```
