Package: `effect`<br />
Module: `Metric`<br />

## Metric.withConstantInput

Returns a new metric that is powered by this one, but which accepts updates
of any type, and translates them to updates with the specified constant
update value.

**Signature**

```ts
declare const withConstantInput: { <In>(input: In): <Type, Out>(self: Metric<Type, In, Out>) => Metric<Type, unknown, Out>; <Type, In, Out>(self: Metric<Type, In, Out>, input: In): Metric<Type, unknown, Out>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L236)

Since v2.0.0