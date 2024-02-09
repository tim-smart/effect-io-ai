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
  <ToA, ToI, ToR, FromA>(
    to: Schema<ToA, ToI, ToR>,
    decode: (fromA: FromA) => ToI,
    encode: (toI: ToI) => FromA
  ): <FromI, FromR>(from: Schema<FromA, FromI, FromR>) => Schema<ToA, FromI, ToR | FromR>
  <ToA, ToI, ToR, FromA>(
    to: Schema<ToA, ToI, ToR>,
    decode: (fromA: FromA) => unknown,
    encode: (toI: ToI) => unknown,
    options: { strict: false }
  ): <FromI, FromR>(from: Schema<FromA, FromI, FromR>) => Schema<ToA, FromI, ToR | FromR>
  <FromA, FromI, FromR, ToA, ToI, ToR>(
    from: Schema<FromA, FromI, FromR>,
    to: Schema<ToA, ToI, ToR>,
    decode: (fromA: FromA) => ToI,
    encode: (toI: ToI) => FromA
  ): Schema<ToA, FromI, FromR | ToR>
  <FromA, FromI, FromR, ToA, ToI, ToR>(
    from: Schema<FromA, FromI, FromR>,
    to: Schema<ToA, ToI, ToR>,
    decode: (fromA: FromA) => unknown,
    encode: (toI: ToI) => unknown,
    options: { strict: false }
  ): Schema<ToA, FromI, FromR | ToR>
}
```
