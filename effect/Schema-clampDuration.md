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
  minimum: duration_.DurationInput,
  maximum: duration_.DurationInput
) => <R, I, A extends duration_.Duration>(self: Schema<A, I, R>) => Schema<A, I, R>
```
