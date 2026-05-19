Package: `effect`<br />
Module: `Atom`<br />

## Atom.initialValue

Pairs an atom with an initial value for registry initialization.

The returned tuple can be supplied to `AtomRegistry` initial values so the atom
starts with the provided value before it is first rebuilt.

**Signature**

```ts
declare const initialValue: { <A>(initialValue: A): (self: Atom<A>) => readonly [Atom<A>, A]; <A>(self: Atom<A>, initialValue: A): readonly [Atom<A>, A]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1534)

Since v4.0.0