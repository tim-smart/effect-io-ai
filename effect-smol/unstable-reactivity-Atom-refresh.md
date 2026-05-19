Package: `effect`<br />
Module: `Atom`<br />

## Atom.refresh

Requests a refresh of an atom through the `AtomRegistry` service.

**Signature**

```ts
declare const refresh: <A>(self: Atom<A>) => Effect.Effect<void, never, AtomRegistry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2315)

Since v4.0.0