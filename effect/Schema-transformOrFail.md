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
  <R2, C, D, B, R3, R4>(
    to: Schema<R2, C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.Transform) => Effect.Effect<R3, ParseResult.ParseIssue, C>,
    encode: (c: C, options: ParseOptions, ast: AST.Transform) => Effect.Effect<R4, ParseResult.ParseIssue, B>
  ): <R1, A>(self: Schema<R1, A, B>) => Schema<R2 | R3 | R4 | R1, A, D>
  <R2, C, D, B, R3, R4>(
    to: Schema<R2, C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.Transform) => Effect.Effect<R3, ParseResult.ParseIssue, unknown>,
    encode: (c: C, options: ParseOptions, ast: AST.Transform) => Effect.Effect<R4, ParseResult.ParseIssue, unknown>,
    options: { strict: false }
  ): <R1, A>(self: Schema<R1, A, B>) => Schema<R2 | R3 | R4 | R1, A, D>
  <R1, A, B, R2, C, D, R3, R4>(
    from: Schema<R1, A, B>,
    to: Schema<R2, C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.Transform) => Effect.Effect<R3, ParseResult.ParseIssue, C>,
    encode: (c: C, options: ParseOptions, ast: AST.Transform) => Effect.Effect<R4, ParseResult.ParseIssue, B>
  ): Schema<R1 | R2 | R3 | R4, A, D>
  <R1, A, B, R2, C, D, R3, R4>(
    from: Schema<R1, A, B>,
    to: Schema<R2, C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.Transform) => Effect.Effect<R3, ParseResult.ParseIssue, unknown>,
    encode: (c: C, options: ParseOptions, ast: AST.Transform) => Effect.Effect<R4, ParseResult.ParseIssue, unknown>,
    options: { strict: false }
  ): Schema<R1 | R2 | R3 | R4, A, D>
}
```
