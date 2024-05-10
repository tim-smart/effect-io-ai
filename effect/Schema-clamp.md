# clamp

Clamps a number between a minimum and a maximum value.

To import and use `clamp` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.clamp
```

**Signature**

```ts
export declare const clamp: (
  minimum: number,
  maximum: number
) => <A extends number, I, R>(self: Schema<A, I, R>) => transform<Schema<A, I, R>, filter<Schema<A, A, never>>>
```
