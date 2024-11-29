# tagged

Returns a new metric, which is identical in every way to this one, except
the specified tags have been added to the tags of this metric.

To import and use `tagged` from the "Metric" module:

ts
import \* as Metric from "effect/Metric"
// Can be accessed like this
Metric.tagged
undefined

**Signature**

```ts
export declare const tagged: {
  <Type, In, Out>(key: string, value: string): (self: Metric<Type, In, Out>) => Metric<Type, In, Out>
  <Type, In, Out>(self: Metric<Type, In, Out>, key: string, value: string): Metric<Type, In, Out>
}
```
