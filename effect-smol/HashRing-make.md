Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.make

Creates an empty `HashRing`.

**Details**

`baseWeight` controls how many virtual points are added for a node with
weight `1`; it defaults to `128` and is clamped to at least `1`.

**Signature**

```ts
declare const make: <A extends PrimaryKey.PrimaryKey>(options?: { readonly baseWeight?: number | undefined; }) => HashRing<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashRing.ts#L111)

Since v3.19.0