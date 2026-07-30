Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.get

Gets the node which should handle the given input. Returns undefined if
the hashring has no elements with weight.

**Signature**

```ts
declare const get: <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, input: string) => A | undefined
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashRing.ts#L190)

Since v3.19.0