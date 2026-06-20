Package: `effect`<br />
Module: `Schema`<br />

## Schema.Tree

Recursive tree type whose leaves are `Node` values and whose branches are
readonly arrays or string-keyed records of child trees.

**Signature**

```ts
type Tree<Node> = Node | TreeRecord<Node> | ReadonlyArray<Tree<Node>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L13678)

Since v4.0.0