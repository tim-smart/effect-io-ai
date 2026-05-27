Package: `effect`<br />
Module: `Atom`<br />

## Atom.windowFocusSignal

A browser-only signal atom that increments when the document becomes visible.

**Details**

It listens for `visibilitychange` events on `window` and removes the listener
when the atom is disposed.

**Signature**

```ts
declare const windowFocusSignal: Atom<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2051)

Since v4.0.0