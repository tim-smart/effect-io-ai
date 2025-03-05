# clampDuration

Clamps a `Duration` between a minimum and a maximum value.

To import and use `clampDuration` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.clampDuration
```

**Signature**

```ts
export declare const clampDuration: (
  minimum: duration_.DurationInput,
  maximum: duration_.DurationInput
) => <S extends Schema.Any, A extends duration_.Duration>(
  self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>
) => transform<S, filter<SchemaClass<A>>>
```
