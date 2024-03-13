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
  <To extends Schema.Any, From extends Schema.Any, RD, RE>(
    to: To,
    decode: (
      fromA: Schema.Type<From>,
      options: ParseOptions,
      ast: AST.Transformation
    ) => Effect.Effect<Schema.Encoded<To>, ParseResult.ParseIssue, RD>,
    encode: (
      toI: Schema.Encoded<To>,
      options: ParseOptions,
      ast: AST.Transformation
    ) => Effect.Effect<Schema.Type<From>, ParseResult.ParseIssue, RE>
  ): (from: From) => transformOrFail<From, To, RD | RE>
  <To extends Schema.Any, From extends Schema.Any, RD, RE>(
    to: To,
    decode: (
      fromA: Schema.Type<From>,
      options: ParseOptions,
      ast: AST.Transformation
    ) => Effect.Effect<unknown, ParseResult.ParseIssue, RD>,
    encode: (
      toI: Schema.Encoded<To>,
      options: ParseOptions,
      ast: AST.Transformation
    ) => Effect.Effect<unknown, ParseResult.ParseIssue, RE>,
    options: { strict: false }
  ): (from: From) => transformOrFail<From, To, RD | RE>
  <To extends Schema.Any, From extends Schema.Any, RD, R4>(
    from: From,
    to: To,
    decode: (
      fromA: Schema.Type<From>,
      options: ParseOptions,
      ast: AST.Transformation
    ) => Effect.Effect<Schema.Encoded<To>, ParseResult.ParseIssue, RD>,
    encode: (
      toI: Schema.Encoded<To>,
      options: ParseOptions,
      ast: AST.Transformation
    ) => Effect.Effect<Schema.Type<From>, ParseResult.ParseIssue, R4>
  ): transformOrFail<From, To, RD | R4>
  <To extends Schema.Any, From extends Schema.Any, RD, RE>(
    from: From,
    to: To,
    decode: (
      fromA: Schema.Type<From>,
      options: ParseOptions,
      ast: AST.Transformation
    ) => Effect.Effect<unknown, ParseResult.ParseIssue, RD>,
    encode: (
      toI: Schema.Encoded<To>,
      options: ParseOptions,
      ast: AST.Transformation
    ) => Effect.Effect<unknown, ParseResult.ParseIssue, RE>,
    options: { strict: false }
  ): transformOrFail<From, To, RD | RE>
}
```
