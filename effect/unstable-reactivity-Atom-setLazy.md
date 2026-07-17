Package: `effect`<br />
Module: `Atom`<br />

## Atom.setLazy

Sets whether an atom should be lazy.

**Details**

Lazy atoms defer recomputation while they have no active listeners or active
non-lazy dependents, rebuilding the next time their value is observed.

**Signature**

```ts
declare const setLazy: { (lazy: boolean): <A extends Atom<any>>(self: A) => A; <A extends Atom<any>>(self: A, lazy: boolean): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Atom.ts#L1499)

Since v4.0.0