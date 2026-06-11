Package: `effect`<br />
Module: `AtomRegistry`<br />

## AtomRegistry.Node

A registry node for a single atom.

**Details**

Nodes expose the current value, parent and child dependency links, listener set,
and current lifecycle state.

**Signature**

```ts
export interface Node<A> {
  readonly atom: Atom.Atom<A>
  readonly value: () => A
  parents: Array<Node<any>>
  children: Array<Node<any>>
  listeners: Set<() => void>
  currentState(): "uninitialized" | "stale" | "valid" | "removed"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRegistry.ts#L96)

Since v4.0.0