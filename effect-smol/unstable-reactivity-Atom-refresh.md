Package: `effect`<br />
Module: `Atom`<br />

## Atom.refresh

Runs a refresh request for an atom through the `AtomRegistry` service.

**When to use**

Use to invalidate and recompute an atom from an Effect that has access to the
active registry.

**Signature**

```ts
declare const refresh: <A>(self: Atom<A>) => Effect.Effect<void, never, AtomRegistry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2364)

Since v4.0.0