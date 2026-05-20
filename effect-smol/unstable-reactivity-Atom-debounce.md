Package: `effect`<br />
Module: `Atom`<br />

## Atom.debounce

Creates an atom that publishes source changes only after the source has stopped
changing for the specified duration.

**Details**

The current source value is used immediately, and any pending debounce timer is
cleared when the derived atom is disposed.

**Signature**

```ts
declare const debounce: { (duration: Duration.Input): <A extends Atom<any>>(self: A) => WithoutSerializable<A>; <A extends Atom<any>>(self: A, duration: Duration.Input): WithoutSerializable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1688)

Since v4.0.0