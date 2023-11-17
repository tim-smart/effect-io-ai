# withConstantInput

Returns a new metric that is powered by this one, but which accepts updates
of any type, and translates them to updates with the specified constant
update value.

To import and use `withConstantInput` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.withConstantInput
```

**Signature**

```ts
export declare const withConstantInput: {
  <In>(input: In): <Type, Out>(self: Metric<Type, In, Out>) => Metric<Type, unknown, Out>
  <Type, In, Out>(self: Metric<Type, In, Out>, input: In): Metric<Type, unknown, Out>
}
```
