Package: `effect`<br />
Module: `Schema`<br />

## Schema.link

Constructs an `AST.Link` that describes how a value of type `T` encodes to and decodes from a `To` schema.
Used when building low-level AST transformations that bridge two schema types.

**Signature**

```ts
declare const link: <T>() => <To extends Top>(encodeTo: To, transformation: { readonly decode: Getter.Getter<T, NoInfer<To["Type"]>>; readonly encode: Getter.Getter<NoInfer<To["Type"]>, T>; }) => AST.Link
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4837)

Since v4.0.0