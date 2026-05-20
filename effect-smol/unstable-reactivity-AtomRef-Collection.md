Package: `effect`<br />
Module: `AtomRef`<br />

## AtomRef.Collection

A reactive collection of mutable item references.

**Details**

The collection can push, insert, and remove item refs, and `toArray` returns the
current raw item values.

**Signature**

```ts
export interface Collection<A> extends ReadonlyRef<ReadonlyArray<AtomRef<A>>> {
  readonly push: (item: A) => Collection<A>
  readonly insertAt: (index: number, item: A) => Collection<A>
  readonly remove: (ref: AtomRef<A>) => Collection<A>
  readonly toArray: () => Array<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRef.ts#L88)

Since v4.0.0