# frequency

A string histogram metric, which keeps track of the counts of different
strings.

To import and use `frequency` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.frequency
```

**Signature**

```ts
export declare const frequency: (name: string, description?: string) => Metric.Frequency<string>
```
