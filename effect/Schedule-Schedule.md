# Schedule

A `Schedule<Out, In, R>` defines a recurring schedule, which consumes values
of type `In`, and which returns values of type `Out`.

The `Schedule` type is structured as follows:

```text
          ┌─── The type of output produced by the schedule
          │   ┌─── The type of input consumed by the schedule
          │   │     ┌─── Additional requirements for the schedule
          ▼   ▼     ▼
Schedule<Out, In, Requirements>
```

A schedule operates by consuming values of type `In` (such as errors in the
case of `Effect.retry`, or values in the case of `Effect.repeat`) and
producing values of type `Out`. It determines when to halt or continue the
execution based on input values and its internal state.

The inclusion of a `Requirements` parameter allows the schedule to leverage
additional services or resources as needed.

Schedules are defined as a possibly infinite set of intervals spread out over
time. Each interval defines a window in which recurrence is possible.

When schedules are used to repeat or retry effects, the starting boundary of
each interval produced by a schedule is used as the moment when the effect
will be executed again.

Schedules can be composed in different ways:

- Union: Combines two schedules and recurs if either schedule wants to
  continue, using the shorter delay.
- Intersection: Combines two schedules and recurs only if both schedules want
  to continue, using the longer delay.
- Sequencing: Combines two schedules by running the first one fully, then
  switching to the second.

In addition, schedule inputs and outputs can be transformed, filtered (to
terminate a schedule early in response to some input or output), and so
forth.

A variety of other operators exist for transforming and combining schedules,
and the companion object for `Schedule` contains all common types of
schedules, both for performing retrying, as well as performing repetition.

To import and use `Schedule` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.Schedule
```
