# sync

Creates a metric that ignores input and produces constant output.

To import and use `sync` from the "Metric" module:

```ts
import * as Metric from 'effect/Metric'

// Can be accessed like this
Metric.sync
```

**Signature**

```ts
export declare const sync: <Out>(evaluate: LazyArg<Out>) => Metric<void, unknown, Out>
```
