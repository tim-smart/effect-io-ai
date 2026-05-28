Package: `effect`<br />
Module: `Atom`<br />

## Atom.autoDispose

Allows a reactive value to be disposed of when it is not in use.

**Details**

Atoms have this behavior by default, so use this to undo `keepAlive` on a copied atom.

**Signature**

```ts
declare const autoDispose: <A extends Atom<any>>(self: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1510)

Since v4.0.0