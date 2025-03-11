## is

By default the option `exact` is set to `true`.

**Signature**

```ts
declare const is: <A, I, R>(schema: Schema.Schema<A, I, R>, options?: AST.ParseOptions) => (u: unknown, overrideOptions?: AST.ParseOptions | number) => u is A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L663)

Since v3.10.0