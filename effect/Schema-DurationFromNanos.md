# DurationFromNanos

A schema that transforms a non negative `bigint` into a `Duration`. Treats
the value as the number of nanoseconds.

To import and use `DurationFromNanos` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.DurationFromNanos
```
