# declare

The constraint `R extends Schema.Context<P[number]>` enforces dependencies solely from `typeParameters`.
This ensures that when you call `Schema.to` or `Schema.from`, you receive a schema with a `never` context.

To import and use `declare` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.declare
```

**Signature**

```ts
export declare const declare: {
  <A>(
    is: (input: unknown) => input is A,
    annotations?: DeclareAnnotations<readonly [], A> | undefined
  ): Schema<never, A, A>
  <const P extends readonly Schema<any, any, any>[], R extends Schema.Context<P[number]>, I, A>(
    typeParameters: P,
    decodeUnknown: (
      ...typeParameters: P
    ) => (input: unknown, options: ParseOptions, ast: AST.Declaration) => Effect.Effect<R, ParseResult.ParseIssue, A>,
    encodeUnknown: (
      ...typeParameters: P
    ) => (input: unknown, options: ParseOptions, ast: AST.Declaration) => Effect.Effect<R, ParseResult.ParseIssue, I>,
    annotations?: DeclareAnnotations<{ readonly [K in keyof P]: Schema.To<P[K]> }, A> | undefined
  ): Schema<Schema.Context<P[number]>, I, A>
}
```
