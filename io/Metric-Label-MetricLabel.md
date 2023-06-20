# MetricLabel

A `MetricLabel` represents a key value pair that allows analyzing metrics at
an additional level of granularity.

For example if a metric tracks the response time of a service labels could
be used to create separate versions that track response times for different
clients.

To import and use `MetricLabel` from the "Label" module:

```ts
import * as Label from '@effect/io/Metric/Label'

// Can be accessed like this
Label.MetricLabel
```
