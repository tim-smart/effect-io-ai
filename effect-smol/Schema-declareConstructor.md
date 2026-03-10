Package: `effect`<br />
Module: `Schema`<br />

## Schema.declareConstructor

An API for creating schemas for parametric types.

**See**

- `declare` for creating schemas for non parametric types.

**Signature**

```ts
declare const declareConstructor: <T, E = T, Iso = T>() => <const TypeParameters extends ReadonlyArray<Top>>(typeParameters: TypeParameters, run: (typeParameters: { readonly [K in keyof TypeParameters]: Codec<TypeParameters[K]["Type"], TypeParameters[K]["Encoded"]>; }) => (u: unknown, self: AST.Declaration, options: AST.ParseOptions) => Effect.Effect<T, Issue.Issue>, annotations?: Annotations.Declaration<T, TypeParameters>) => declareConstructor<T, E, TypeParameters, Iso>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L188)

Since v4.0.0