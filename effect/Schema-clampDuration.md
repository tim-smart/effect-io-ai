# clampDuration

Clamps a `Duration` between a minimum and a maximum value.

To import and use `clampDuration` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.clampDuration
```

**Signature**

```ts
export declare const clampDuration: (
  minimum: Duration.DurationInput,
  maximum: Duration.DurationInput
) => <I, A extends Duration.Duration>(self: Schema<I, A>) => Schema<I, A>
```
