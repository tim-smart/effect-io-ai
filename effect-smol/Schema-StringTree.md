Package: `effect`<br />
Module: `Schema`<br />

## Schema.StringTree

A `Tree` of `string | undefined` nodes. Leaf values are either a
string representation or `undefined` for opaque/declaration types.

**Signature**

```ts
type StringTree = Tree<string | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10587)

Since v4.0.0