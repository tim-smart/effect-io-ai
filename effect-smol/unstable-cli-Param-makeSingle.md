Package: `effect`<br />
Module: `Param`<br />

## Param.makeSingle

Constructs a leaf `Single` parameter from its kind, name, primitive parser,
and optional help metadata.

**Details**

The returned parser reads either one positional argument or the named flag,
depending on `kind`.

**Signature**

```ts
declare const makeSingle: <const Kind extends ParamKind, A>(params: { readonly kind: Kind; readonly name: string; readonly primitiveType: Primitive.Primitive<A>; readonly typeName?: string | undefined; readonly description?: Option.Option<string> | undefined; readonly aliases?: ReadonlyArray<string> | undefined; readonly hidden?: boolean | undefined; }) => Single<Kind, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L333)

Since v4.0.0