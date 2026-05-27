Package: `effect`<br />
Module: `Atom`<br />

## Atom.writable

Creates a writable atom from read and write functions, with an optional custom refresh registration callback.

**Signature**

```ts
declare const writable: <R, W>(read: (get: AtomContext) => R, write: (ctx: WriteContext<R>, value: W) => void, refresh?: (f: <A>(atom: Atom<A>) => void) => void) => Writable<R, W>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L413)

Since v4.0.0