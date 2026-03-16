Package: `effect`<br />
Module: `Atom`<br />

## Atom.autoDispose

Reverts the `keepAlive` behavior of a reactive value, allowing it to be
disposed of when not in use.

Note that Atom's have this behavior by default.

**Signature**

```ts
declare const autoDispose: <A extends Atom<any>>(self: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1376)

Since v4.0.0