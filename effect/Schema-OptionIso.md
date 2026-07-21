Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionIso

Iso representation used for `Option` schemas.

**Details**

`None` is represented as `{ _tag: "None" }`, while `Some` is represented as
`{ _tag: "Some", value }` using the wrapped schema's `Iso` type.

**Signature**

```ts
type OptionIso<A> = | { readonly _tag: "None" }
  | { readonly _tag: "Some"; readonly value: A["Iso"] }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8555)

Since v4.0.0