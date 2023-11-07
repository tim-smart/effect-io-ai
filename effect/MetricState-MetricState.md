# MetricState

A `MetricState` describes the state of a metric. The type parameter of a
metric state corresponds to the type of the metric key (`MetricStateType`).
This phantom type parameter is used to tie keys to their expected states.

To import and use `MetricState` from the "MetricState" module:

```ts
import * as MetricState from 'effect/MetricState'

// Can be accessed like this
MetricState.MetricState
```
