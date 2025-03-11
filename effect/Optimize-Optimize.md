## Optimize

Represents optimization of a given document tree through fusion of redundant
document nodes.

**Signature**

```ts
export interface Optimize<A> {
  (depth: Optimize.Depth): Doc<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Optimize.ts#L19)

Since v1.0.0