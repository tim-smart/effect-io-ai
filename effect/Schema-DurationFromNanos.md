# DurationFromNanos

A schema that transforms a `bigint` tuple into a `Duration`.
Treats the value as the number of nanoseconds.

To import and use `DurationFromNanos` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.DurationFromNanos
```

**Signature**

```ts
export declare const DurationFromNanos: Schema<Duration.Duration, bigint, never>
```
