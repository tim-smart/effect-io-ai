Package: `effect`<br />
Module: `ParseResult`<br />

## ParseResult.asserts

By default the option `exact` is set to `true`.

**Throws**

`ParseError`

**Signature**

```ts
declare const asserts: <A, I, R>(schema: Schema.Schema<A, I, R>, options?: AST.ParseOptions) => (u: unknown, overrideOptions?: AST.ParseOptions) => asserts u is A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L677)

Since v3.10.0