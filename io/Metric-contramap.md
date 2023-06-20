# contramap

Returns a new metric that is powered by this one, but which accepts updates
of the specified new type, which must be transformable to the input type of
this metric.

To import and use `contramap` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.contramap
```

**Signature**

```ts
export declare const contramap: {
  <In, In2>(f: (input: In2) => In): <Type, Out>(self: Metric<Type, In, Out>) => Metric<Type, In2, Out>
  <Type, In, Out, In2>(self: Metric<Type, In, Out>, f: (input: In2) => In): Metric<Type, In2, Out>
}
```
