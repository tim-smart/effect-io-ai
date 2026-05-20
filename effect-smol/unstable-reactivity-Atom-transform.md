Package: `effect`<br />
Module: `Atom`<br />

## Atom.transform

Creates a derived atom by reading another atom with a custom `AtomContext`
function.

**Details**

If the source is writable, the derived atom keeps the source write input and
forwards writes to the source. `initialValueTarget` controls which atom receives
preloaded initial values for the derived atom.

**Signature**

```ts
declare const transform: { <R extends Atom<any>, B>(f: (get: AtomContext, atom: R) => B, options?: { readonly initialValueTarget?: Atom<B> | undefined; }): (self: R) => [R] extends [Writable<infer _, infer RW>] ? Writable<B, RW> : Atom<B>; <R extends Atom<any>, B>(self: R, f: (get: AtomContext, atom: R) => B, options?: { readonly initialValueTarget?: Atom<B> | undefined; }): [R] extends [Writable<infer _, infer RW>] ? Writable<B, RW> : Atom<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1562)

Since v4.0.0