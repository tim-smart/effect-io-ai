Package: `effect`<br />
Module: `Atom`<br />

## Atom.refreshOnWindowFocus

Refreshes an atom whenever `windowFocusSignal` changes.

**Details**

This helper is browser-only because `windowFocusSignal` depends on `window` and
`document.visibilityState`.

**Signature**

```ts
declare const refreshOnWindowFocus: <A extends Atom<any>>(self: A) => WithoutSerializable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2096)

Since v4.0.0