Package: `effect`<br />
Module: `Atom`<br />

## Atom.readable

Creates a read-only atom from a read function and an optional custom refresh registration callback.

**Signature**

```ts
declare const readable: <A>(read: (get: AtomContext) => A, refresh?: (f: <A>(atom: Atom<A>) => void) => void) => Atom<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L381)

Since v4.0.0