Package: `effect`<br />
Module: `Schema`<br />

## Schema.asserts

By default the option `exact` is set to `true`.

**Throws**

`ParseError`

**Signature**

```ts
declare const asserts: <A, I, R>(schema: Schema<A, I, R>, options?: AST.ParseOptions) => (u: unknown, overrideOptions?: AST.ParseOptions) => asserts u is A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L425)

Since v3.10.0