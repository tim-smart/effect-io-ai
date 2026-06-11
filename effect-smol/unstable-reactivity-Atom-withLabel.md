Package: `effect`<br />
Module: `Atom`<br />

## Atom.withLabel

Attaches a diagnostic label to an atom.

**Details**

The label is used for inspection and debugging metadata and does not change the
atom's read or write behavior.

**Signature**

```ts
declare const withLabel: { (name: string): <A extends Atom<any>>(self: A) => A; <A extends Atom<any>>(self: A, name: string): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1519)

Since v4.0.0