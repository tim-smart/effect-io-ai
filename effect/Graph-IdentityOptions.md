Package: `effect`<br />
Module: `Graph`<br />

## Graph.IdentityOptions

Configures node and edge identity for graph set operations.

**Details**

Both functions default to using the complete node or edge data. Edge identity
also includes the identities of its endpoint nodes and the graph kind.

**Gotchas**

Edge identity defines set membership, not edge multiplicity. Parallel edges
with the same endpoint identities and projected edge identity are treated as
the same member by graph set operations.

**Signature**

```ts
export interface IdentityOptions<N, E, NI = N, EI = E> {
  readonly nodeIdentity?: (node: N) => NI
  readonly edgeIdentity?: (edge: E) => EI
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L778)

Since v4.0.0