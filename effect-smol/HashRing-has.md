Package: `effect`<br />
Module: `HashRing`<br />

## HashRing.has

Checks whether the ring contains a node with the same `PrimaryKey` value.

**Signature**

```ts
declare const has: { <A extends PrimaryKey.PrimaryKey>(node: A): (self: HashRing<A>) => boolean; <A extends PrimaryKey.PrimaryKey>(self: HashRing<A>, node: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashRing.ts#L240)

Since v3.19.0