# Metric

A `Metric<Type, In, Out>` represents a concurrent metric which accepts
updates of type `In` and are aggregated to a stateful value of type `Out`.

For example, a counter metric would have type `Metric<number, number>`,
representing the fact that the metric can be updated with numbers (the amount
to increment or decrement the counter by), and the state of the counter is a
number.

There are five primitive metric types supported by Effect:

- Counters
- Frequencies
- Gauges
- Histograms
- Summaries

Part of the `Metric` module from the `@effect/io` package. Also known as `Metric.Metric`.
