# transform

Create a new `Schema` by transforming the input and output of an existing `Schema`
using the provided mapping functions.

To import and use `transform` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.transform
```

**Signature**

```ts
export declare const transform: {
  <I2, A2, A1>(to: Schema<I2, A2>, decode: (a1: A1) => I2, encode: (i2: I2) => A1): <I1>(
    self: Schema<I1, A1>
  ) => Schema<I1, A2>
  <I1, A1, I2, A2>(from: Schema<I1, A1>, to: Schema<I2, A2>, decode: (a1: A1) => I2, encode: (i2: I2) => A1): Schema<
    I1,
    A2
  >
}
```
