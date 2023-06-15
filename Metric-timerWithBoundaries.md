# timerWithBoundaries

Creates a timer metric, based on a histogram created from the provided
boundaries, which keeps track of durations in milliseconds. The unit of time
will automatically be added to the metric as a tag (i.e.
`"time_unit: milliseconds"`).

Part of the `Metric` module from the `@effect/io` package. Also known as `Metric.timerWithBoundaries`.
