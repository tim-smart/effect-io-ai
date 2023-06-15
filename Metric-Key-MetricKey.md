# MetricKey

A `MetricKey` is a unique key associated with each metric. The key is based
on a combination of the metric type, the name and tags associated with the
metric, and any other information to describe a metric, such as the
boundaries of a histogram. In this way, it is impossible to ever create
different metrics with conflicting keys.

Part of the `Metric/Key` module from the `@effect/io` package. Also known as `Metric/Key.MetricKey`.
