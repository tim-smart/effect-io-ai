# counter

Creates a metric key for a counter, with the specified name.

To import and use `counter` from the "Key" module:

```ts
import * as Key from '@effect/io/Metric/Key'

// Can be accessed like this
Key.counter
```

**Signature**

```ts
export declare const counter: (name: string, description?: string) => MetricKey.Counter
```
