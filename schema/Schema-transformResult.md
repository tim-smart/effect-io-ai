# transformResult

Create a new `Schema` by transforming the input and output of an existing `Schema`
using the provided decoding functions.

Part of the `Schema` module, imported from `@effect/schema/Schema`.

**Signature**

```ts
export declare const transformResult: {
  <I2, A2, A1>(
    to: Schema<I2, A2>,
    decode: (a1: A1, options?: ParseOptions) => ParseResult<I2>,
    encode: (i2: I2, options?: ParseOptions) => ParseResult<A1>
  ): <I1>(self: Schema<I1, A1>) => Schema<I1, A2>
  <I1, A1, I2, A2>(
    from: Schema<I1, A1>,
    to: Schema<I2, A2>,
    decode: (a1: A1, options?: ParseOptions) => ParseResult<I2>,
    encode: (i2: I2, options?: ParseOptions) => ParseResult<A1>
  ): Schema<I1, A2>
}
```
