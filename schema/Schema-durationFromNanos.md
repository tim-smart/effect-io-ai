# durationFromNanos

A combinator that transforms a `bigint` into a `Duration`.
Treats the value as the number of nanoseconds.

To import and use `durationFromNanos` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.durationFromNanos
```

**Signature**

```ts
export declare const durationFromNanos: <I, A extends bigint>(self: Schema<I, A>) => Schema<I, Duration.Duration>
```
