# counter

Creates a metric key for a counter, with the specified name.

To import and use `counter` from the "MetricKey" module:

```ts
import * as MetricKey from '@effect/io/MetricKey'

// Can be accessed like this
MetricKey.counter
```

**Signature**

```ts
export declare const counter: (name: string, description?: string) => MetricKey.Counter
```
