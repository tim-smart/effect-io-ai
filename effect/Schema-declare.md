# declare

The constraint `R extends Schema.Context<P[number]>` enforces dependencies solely from `typeParameters`.
This ensures that when you call `Schema.to` or `Schema.from`, you receive a schema with a `never` context.

To import and use `declare` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.declare
```

**Signature**

```ts
export declare const declare: {
  <A>(is: (input: unknown) => input is A, annotations?: Annotations.Schema<A>): declare<A>
  <A, I, const P extends ReadonlyArray<Schema.All>>(
    typeParameters: P,
    options: {
      readonly decode: (
        ...typeParameters: { readonly [K in keyof P]: Schema<Schema.Type<P[K]>, Schema.Encoded<P[K]>, never> }
      ) => (
        input: unknown,
        options: ParseOptions,
        ast: AST.Declaration
      ) => Effect.Effect<A, ParseResult.ParseIssue, never>
      readonly encode: (
        ...typeParameters: { readonly [K in keyof P]: Schema<Schema.Type<P[K]>, Schema.Encoded<P[K]>, never> }
      ) => (
        input: unknown,
        options: ParseOptions,
        ast: AST.Declaration
      ) => Effect.Effect<I, ParseResult.ParseIssue, never>
    },
    annotations?: Annotations.Schema<A, { readonly [K in keyof P]: Schema.Type<P[K]> }>
  ): declare<A, I, P>
}
```
