Package: `effect`<br />
Module: `Atom`<br />

## Atom.keepAlive

Returns a copy of an atom that remains cached and mounted even when no subscribers are using it.

**Signature**

```ts
declare const keepAlive: <A extends Atom<any>>(self: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1494)

Since v4.0.0