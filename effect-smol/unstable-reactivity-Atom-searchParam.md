Package: `effect`<br />
Module: `Atom`<br />

## Atom.searchParam

Create an Atom that reads and writes a URL search parameter.

Note: If you pass a schema, it has to be synchronous and have no context.

**Signature**

```ts
declare const searchParam: <S extends Schema.Codec<any, string> = never>(name: string, options?: { readonly schema?: S | undefined; }) => Writable<S extends never ? string : Option.Option<S["Type"]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1826)

Since v4.0.0