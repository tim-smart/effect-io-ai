Package: `effect`<br />
Module: `Atom`<br />

## Atom.getServerValue

Reads an atom from a registry, using its server-side read override when one is
present.

**Details**

Nested reads performed by the override are resolved against the same registry.

**Signature**

```ts
declare const getServerValue: { (registry: Registry.AtomRegistry): <A>(self: Atom<A>) => A; <A>(self: Atom<A>, registry: Registry.AtomRegistry): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2501)

Since v4.0.0