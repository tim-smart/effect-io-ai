# Effect

The `Effect` interface defines a value that lazily describes a workflow or job.
The workflow requires some context `R`, and may fail with an error of type `E`,
or succeed with a value of type `A`.

`Effect` values model resourceful interaction with the outside world, including
synchronous, asynchronous, concurrent, and parallel interaction. They use a
fiber-based concurrency model, with built-in support for scheduling, fine-grained
interruption, structured concurrency, and high scalability.

To run an `Effect` value, you need a `Runtime`, which is a type that is capable
of executing `Effect` values.

To import and use `Effect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.Effect
```
