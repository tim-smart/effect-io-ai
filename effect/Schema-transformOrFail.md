Package: `effect`<br />
Module: `Schema`<br />

## Schema.transformOrFail

Create a new `Schema` by transforming the input and output of an existing `Schema`
using the provided decoding functions.

**Signature**

```ts
declare const transformOrFail: { <To extends Schema.Any, From extends Schema.Any, RD, RE>(to: To, options: { readonly decode: (fromA: Schema.Type<From>, options: ParseOptions, ast: AST.Transformation, fromI: Schema.Encoded<From>) => Effect.Effect<Schema.Encoded<To>, ParseResult.ParseIssue, RD>; readonly encode: (toI: Schema.Encoded<To>, options: ParseOptions, ast: AST.Transformation, toA: Schema.Type<To>) => Effect.Effect<Schema.Type<From>, ParseResult.ParseIssue, RE>; readonly strict?: true; } | { readonly decode: (fromA: Schema.Type<From>, options: ParseOptions, ast: AST.Transformation, fromI: Schema.Encoded<From>) => Effect.Effect<unknown, ParseResult.ParseIssue, RD>; readonly encode: (toI: Schema.Encoded<To>, options: ParseOptions, ast: AST.Transformation, toA: Schema.Type<To>) => Effect.Effect<unknown, ParseResult.ParseIssue, RE>; readonly strict: false; }): (from: From) => transformOrFail<From, To, RD | RE>; <To extends Schema.Any, From extends Schema.Any, RD, RE>(from: From, to: To, options: { readonly decode: (fromA: Schema.Type<From>, options: ParseOptions, ast: AST.Transformation, fromI: Schema.Encoded<From>) => Effect.Effect<Schema.Encoded<To>, ParseResult.ParseIssue, RD>; readonly encode: (toI: Schema.Encoded<To>, options: ParseOptions, ast: AST.Transformation, toA: Schema.Type<To>) => Effect.Effect<Schema.Type<From>, ParseResult.ParseIssue, RE>; readonly strict?: true; } | { readonly decode: (fromA: Schema.Type<From>, options: ParseOptions, ast: AST.Transformation, fromI: Schema.Encoded<From>) => Effect.Effect<unknown, ParseResult.ParseIssue, RD>; readonly encode: (toI: Schema.Encoded<To>, options: ParseOptions, ast: AST.Transformation, toA: Schema.Type<To>) => Effect.Effect<unknown, ParseResult.ParseIssue, RE>; readonly strict: false; }): transformOrFail<From, To, RD | RE>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L3788)

Since v3.10.0