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
  <C, D, B>(
    to: Schema<C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.AST) => C,
    encode: (c: C, options: ParseOptions, ast: AST.AST) => B
  ): <A>(self: Schema<A, B>) => Schema<A, D>
  <C, D, B>(
    to: Schema<C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.AST) => unknown,
    encode: (c: C, options: ParseOptions, ast: AST.AST) => unknown,
    options: { strict: false }
  ): <A>(self: Schema<A, B>) => Schema<A, D>
  <A, B, C, D>(
    from: Schema<A, B>,
    to: Schema<C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.AST) => C,
    encode: (c: C, options: ParseOptions, ast: AST.AST) => B
  ): Schema<A, D>
  <A, B, C, D>(
    from: Schema<A, B>,
    to: Schema<C, D>,
    decode: (b: B, options: ParseOptions, ast: AST.AST) => unknown,
    encode: (c: C, options: ParseOptions, ast: AST.AST) => unknown,
    options: { strict: false }
  ): Schema<A, D>
}
```
