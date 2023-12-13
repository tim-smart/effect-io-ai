# durationFromMillis

A combinator that transforms a `number` into a `Duration`.
Treats the value as the number of milliseconds.

To import and use `durationFromMillis` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.durationFromMillis
```

**Signature**

```ts
export declare const durationFromMillis: <I, A extends number>(self: Schema<I, A>) => Schema<I, Duration.Duration>
```
