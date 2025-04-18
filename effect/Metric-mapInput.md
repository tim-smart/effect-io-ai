Package: `effect`<br />
Module: `Metric`<br />

## Metric.mapInput

Returns a new metric that is powered by this one, but which accepts updates
of the specified new type, which must be transformable to the input type of
this metric.

**Signature**

```ts
declare const mapInput: { <In, In2>(f: (input: In2) => In): <Type, Out>(self: Metric<Type, In, Out>) => Metric<Type, In2, Out>; <Type, In, Out, In2>(self: Metric<Type, In, Out>, f: (input: In2) => In): Metric<Type, In2, Out>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L154)

Since v2.0.0