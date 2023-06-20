# MetricState

A `MetricState` describes the state of a metric. The type parameter of a
metric state corresponds to the type of the metric key (`MetricStateType`).
This phantom type parameter is used to tie keys to their expected states.

To import and use `MetricState` from the "State" module:

```ts
import * as State from '@effect/io/Metric/State'

// Can be accessed like this
State.MetricState
```
