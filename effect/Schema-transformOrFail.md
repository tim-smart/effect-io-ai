# transformOrFail

Create a new `Schema` by transforming the input and output of an existing `Schema`
using the provided decoding functions.

To import and use `transformOrFail` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.transformOrFail
```

**Signature**

```ts
export declare const transformOrFail: {
  <ToA, ToI, ToR, FromA, R3, R4>(
    to: Schema<ToA, ToI, ToR>,
    decode: (fromA: FromA, options: ParseOptions, ast: AST.Transform) => Effect.Effect<ToI, ParseResult.ParseIssue, R3>,
    encode: (toI: ToI, options: ParseOptions, ast: AST.Transform) => Effect.Effect<FromA, ParseResult.ParseIssue, R4>
  ): <FromI, FromR>(self: Schema<FromA, FromI, FromR>) => Schema<ToA, FromI, ToR | R3 | R4 | FromR>
  <ToA, ToI, ToR, FromA, R3, R4>(
    to: Schema<ToA, ToI, ToR>,
    decode: (
      fromA: FromA,
      options: ParseOptions,
      ast: AST.Transform
    ) => Effect.Effect<unknown, ParseResult.ParseIssue, R3>,
    encode: (toI: ToI, options: ParseOptions, ast: AST.Transform) => Effect.Effect<unknown, ParseResult.ParseIssue, R4>,
    options: { strict: false }
  ): <FromI, FromR>(self: Schema<FromA, FromI, FromR>) => Schema<ToA, FromI, ToR | R3 | R4 | FromR>
  <FromA, FromI, FromR, ToA, ToI, ToR, R3, R4>(
    from: Schema<FromA, FromI, FromR>,
    to: Schema<ToA, ToI, ToR>,
    decode: (fromA: FromA, options: ParseOptions, ast: AST.Transform) => Effect.Effect<ToI, ParseResult.ParseIssue, R3>,
    encode: (toI: ToI, options: ParseOptions, ast: AST.Transform) => Effect.Effect<FromA, ParseResult.ParseIssue, R4>
  ): Schema<ToA, FromI, FromR | ToR | R3 | R4>
  <FromA, FromI, FromR, ToA, ToI, ToR, R3, R4>(
    from: Schema<FromA, FromI, FromR>,
    to: Schema<ToA, ToI, ToR>,
    decode: (
      fromA: FromA,
      options: ParseOptions,
      ast: AST.Transform
    ) => Effect.Effect<unknown, ParseResult.ParseIssue, R3>,
    encode: (toI: ToI, options: ParseOptions, ast: AST.Transform) => Effect.Effect<unknown, ParseResult.ParseIssue, R4>,
    options: { strict: false }
  ): Schema<ToA, FromI, FromR | ToR | R3 | R4>
}
```
