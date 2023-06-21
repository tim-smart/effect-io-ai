# counter

A counter, which can be incremented by numbers.

To import and use `counter` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.counter
```

**Signature**

```ts
export declare const counter: (name: string, description?: string) => Metric.Counter<number>
```
