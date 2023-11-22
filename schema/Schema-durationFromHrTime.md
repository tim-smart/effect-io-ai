# durationFromHrTime

A combinator that transforms a `[number, number]` tuple into a `Duration`.

To import and use `durationFromHrTime` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.durationFromHrTime
```

**Signature**

```ts
export declare const durationFromHrTime: <I, A extends readonly [seconds: number, nanos: number]>(
  self: Schema<I, A>
) => Schema<I, Duration.Duration>
```
