Package: `effect`<br />
Module: `Atom`<br />

## Atom.get

Reads an atom's current value from the `AtomRegistry` service.

**Signature**

```ts
declare const get: <A>(self: Atom<A>) => Effect.Effect<A, never, AtomRegistry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2293)

Since v4.0.0