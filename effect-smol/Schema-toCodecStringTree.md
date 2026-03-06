Package: `effect`<br />
Module: `Schema`<br />

## Schema.toCodecStringTree

The StringTree canonical codec converts **every leaf value to a string**, while
preserving the original structure.

Declarations are converted to `undefined` (unless they have a
`toCodecJson` or `toCodec` annotation).

**Options**

- `keepDeclarations`: if `true`, it **does not** convert declarations to
  `undefined` but instead keeps them as they are (unless they have a
  `toCodecJson` or `toCodec` annotation).

   Defaults to `false`.

**Signature**

```ts
declare const toCodecStringTree: { <T, E, RD, RE>(schema: Codec<T, E, RD, RE>): Codec<T, StringTree, RD, RE>; <T, E, RD, RE>(schema: Codec<T, E, RD, RE>, options: { readonly keepDeclarations: true; }): Codec<T, unknown, RD, RE>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8678)

Since v4.0.0