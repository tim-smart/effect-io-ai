# tagged

Returns a new metric, which is identical in every way to this one, except
the specified tags have been added to the tags of this metric.

Part of the `Metric` module, imported from `@effect/io/Metric`.

**Signature**

```ts
export declare const tagged: {
  <Type, In, Out>(key: string, value: string): (self: Metric<Type, In, Out>) => Metric<Type, In, Out>
  <Type, In, Out>(self: Metric<Type, In, Out>, key: string, value: string): Metric<Type, In, Out>
}
```
