Package: `effect`<br />
Module: `Atom`<br />

## Atom.WriteContext

Context passed to writable atom write functions for reading atoms, refreshing or setting the current atom, and writing to other writable atoms.

**Signature**

```ts
export interface WriteContext<A> {
  get<T>(this: WriteContext<A>, atom: Atom<T>): T
  refreshSelf(this: WriteContext<A>): void
  setSelf(this: WriteContext<A>, a: A): void
  set<R, W>(this: WriteContext<A>, atom: Writable<R, W>, value: W): void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L208)

Since v4.0.0