Package: `effect`<br />
Module: `Atom`<br />

## Atom.autoDispose

Reverts the `keepAlive` behavior of a reactive value, allowing it to be disposed of when not in use.

**Details**

Atoms have this behavior by default, so use this to undo `keepAlive` on a copied atom.

**Signature**

```ts
declare const autoDispose: <A extends Atom<any>>(self: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1481)

Since v4.0.0