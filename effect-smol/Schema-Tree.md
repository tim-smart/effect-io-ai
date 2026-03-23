Package: `effect`<br />
Module: `Schema`<br />

## Schema.Tree

Creates a recursive schema for a `Tree` of values described by `node`.
The resulting schema accepts a single node value, an array of trees, or an
object whose values are trees.

**Signature**

```ts
declare const Tree: <S extends Top>(node: S) => Union<readonly [S, $Array<suspend<Codec<Tree<S["Type"]>, Tree<S["Encoded"]>, S["DecodingServices"], S["EncodingServices"]>>>, $Record<String, suspend<Codec<Tree<S["Type"]>, Tree<S["Encoded"]>, S["DecodingServices"], S["EncodingServices"]>>>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11042)

Since v4.0.0