Package: `effect`<br />
Module: `AtomRegistry`<br />

## AtomRegistry.AtomRegistry

The runtime registry that stores atom nodes and coordinates reads, writes,
refreshes, subscriptions, and disposal.

It also manages scheduler configuration, serializable preloaded values, and node
addition/removal callbacks.

**Signature**

```ts
export interface AtomRegistry {
  readonly [TypeId]: TypeId
  readonly scheduler: Scheduler
  readonly schedulerAsync: Scheduler
  readonly getNodes: () => ReadonlyMap<Atom.Atom<any> | string, Node<any>>
  readonly get: <A>(atom: Atom.Atom<A>) => A
  readonly mount: <A>(atom: Atom.Atom<A>) => () => void
  readonly refresh: <A>(atom: Atom.Atom<A>) => void
  readonly set: <R, W>(atom: Atom.Writable<R, W>, value: W) => void
  readonly setSerializable: (key: string, encoded: unknown) => void
  readonly modify: <R, W, A>(atom: Atom.Writable<R, W>, f: (_: R) => [returnValue: A, nextValue: W]) => A
  readonly update: <R, W>(atom: Atom.Writable<R, W>, f: (_: R) => W) => void
  readonly subscribe: <A>(atom: Atom.Atom<A>, f: (_: A) => void, options?: {
    readonly immediate?: boolean
  }) => () => void
  readonly reset: () => void
  readonly dispose: () => void
  onNodeAdded?: ((node: Node<any>) => void) | undefined
  onNodeRemoved?: ((node: Node<any>) => void) | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRegistry.ts#L73)

Since v4.0.0