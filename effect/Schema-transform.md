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
  <R2, C, D, B>(
    to: Schema<R2, C, D>,
    decode: (b: B) => C,
    encode: (c: C) => B
  ): <R1, A>(self: Schema<R1, A, B>) => Schema<R2 | R1, A, D>
  <R2, C, D, B>(
    to: Schema<R2, C, D>,
    decode: (b: B) => unknown,
    encode: (c: C) => unknown,
    options: { strict: false }
  ): <R1, A>(self: Schema<R1, A, B>) => Schema<R2 | R1, A, D>
  <R1, A, B, R2, C, D>(
    from: Schema<R1, A, B>,
    to: Schema<R2, C, D>,
    decode: (b: B) => C,
    encode: (c: C) => B
  ): Schema<R1 | R2, A, D>
  <R1, A, B, R2, C, D>(
    from: Schema<R1, A, B>,
    to: Schema<R2, C, D>,
    decode: (b: B) => unknown,
    encode: (c: C) => unknown,
    options: { strict: false }
  ): Schema<R1 | R2, A, D>
}
```
