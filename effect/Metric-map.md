# map

Returns a new metric that is powered by this one, but which outputs a new
state type, determined by transforming the state type of this metric by the
specified function.

To import and use `map` from the "Metric" module:

```ts
import * as Metric from 'effect/Metric'

// Can be accessed like this
Metric.map
```

**Signature**

```ts
export declare const map: {
  <Out, Out2>(f: (out: Out) => Out2): <Type, In>(self: Metric<Type, In, Out>) => Metric<Type, In, Out2>
  <Type, In, Out, Out2>(self: Metric<Type, In, Out>, f: (out: Out) => Out2): Metric<Type, In, Out2>
}
```
