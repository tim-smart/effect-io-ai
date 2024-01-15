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
  <C, D, B>(
    to: Schema<C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.AST) => Effect.Effect<never, ParseResult.ParseError, C>,
    encode: (c: C, options: ParseOptions, ast: AST.AST) => Effect.Effect<never, ParseResult.ParseError, B>
  ): <A>(self: Schema<A, B>) => Schema<A, D>
  <C, D, B>(
    to: Schema<C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.AST) => Effect.Effect<never, ParseResult.ParseError, unknown>,
    encode: (c: C, options: ParseOptions, ast: AST.AST) => Effect.Effect<never, ParseResult.ParseError, unknown>,
    options: { strict: false }
  ): <A>(self: Schema<A, B>) => Schema<A, D>
  <A, B, C, D>(
    from: Schema<A, B>,
    to: Schema<C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.AST) => Effect.Effect<never, ParseResult.ParseError, C>,
    encode: (c: C, options: ParseOptions, ast: AST.AST) => Effect.Effect<never, ParseResult.ParseError, B>
  ): Schema<A, D>
  <A, B, C, D>(
    from: Schema<A, B>,
    to: Schema<C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.AST) => Effect.Effect<never, ParseResult.ParseError, unknown>,
    encode: (c: C, options: ParseOptions, ast: AST.AST) => Effect.Effect<never, ParseResult.ParseError, unknown>,
    options: { strict: false }
  ): Schema<A, D>
}
```
