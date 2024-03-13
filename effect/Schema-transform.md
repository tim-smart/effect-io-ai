# transform

Create a new `Schema` by transforming the input and output of an existing `Schema`
using the provided mapping functions.

To import and use `transform` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.transform
```

**Signature**

```ts
export declare const transform: {
  <To extends Schema.Any, From extends Schema.Any>(
    to: To,
    decode: (fromA: Schema.Type<From>) => Schema.Encoded<To>,
    encode: (toI: Schema.Encoded<To>) => Schema.Type<From>
  ): (from: From) => transform<From, To>
  <To extends Schema.Any, From extends Schema.Any>(
    to: To,
    decode: (fromA: Schema.Type<From>) => unknown,
    encode: (toI: Schema.Encoded<To>) => unknown,
    options: { strict: false }
  ): (from: From) => transform<From, To>
  <To extends Schema.Any, From extends Schema.Any>(
    from: From,
    to: To,
    decode: (fromA: Schema.Type<From>) => Schema.Encoded<To>,
    encode: (toI: Schema.Encoded<To>) => Schema.Type<From>
  ): transform<From, To>
  <To extends Schema.Any, From extends Schema.Any>(
    from: From,
    to: To,
    decode: (fromA: Schema.Type<From>) => unknown,
    encode: (toI: Schema.Encoded<To>) => unknown,
    options: { strict: false }
  ): transform<From, To>
}
```
