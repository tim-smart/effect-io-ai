# MetricKey

A `MetricKey` is a unique key associated with each metric. The key is based
on a combination of the metric type, the name and tags associated with the
metric, an optional description of the key, and any other information to
describe a metric, such as the boundaries of a histogram. In this way, it is
impossible to ever create different metrics with conflicting keys.

To import and use `MetricKey` from the "Key" module:

```ts
import * as Key from '@effect/io/Metric/Key'

// Can be accessed like this
Key.MetricKey
```