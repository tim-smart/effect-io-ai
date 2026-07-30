Package: `effect`<br />
Module: `RedBlackTree`<br />

## RedBlackTree.RedBlackTree

A Red-Black Tree.

**Signature**

```ts
export interface RedBlackTree<in out Key, out Value> extends Iterable<[Key, Value]>, Equal, Pipeable, Inspectable {
  readonly [TypeId]: {
    readonly _Key: Types.Invariant<Key>
    readonly _Value: Types.Covariant<Value>
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L34)

Since v2.0.0