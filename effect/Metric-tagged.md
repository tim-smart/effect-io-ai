Package: `effect`<br />
Module: `Metric`<br />

## Metric.tagged

Returns a new metric, which is identical in every way to this one, except
the specified tags have been added to the tags of this metric.

**Signature**

```ts
declare const tagged: { <Type, In, Out>(key: string, value: string): (self: Metric<Type, In, Out>) => Metric<Type, In, Out>; <Type, In, Out>(self: Metric<Type, In, Out>, key: string, value: string): Metric<Type, In, Out>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L463)

Since v2.0.0