Package: `effect`<br />
Module: `Graph`<br />

## Graph.sum

Returns the disjoint union of two graphs.

**Details**

Copies all nodes and edges from both graphs without merging equal node data.
The result has the same graph kind as `self`. Throws a `GraphError` when the
graph kinds do not match.

`G1 + G2 = {disjoint V1 + V2, disjoint E1 + E2}`

**Signature**

```ts
declare const sum: { <N, E, T extends Kind>(that: Graph<N, E, T>): (self: Graph<N, E, NoInfer<T>>) => Graph<N, E, T>; <N, E, T extends Kind>(self: Graph<N, E, T>, that: Graph<N, E, NoInfer<T>>): Graph<N, E, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1407)

Since v4.0.0