Package: `effect`<br />
Module: `AtomRegistry`<br />

## AtomRegistry.mount

Mounts an atom in this registry for the lifetime of the current scope.

**Details**

The atom is subscribed with a no-op listener and the subscription is released
when the scope finalizer runs.

**Signature**

```ts
declare const mount: { <A>(atom: Atom.Atom<A>): (self: AtomRegistry) => Effect.Effect<void, never, Scope.Scope>; <A>(self: AtomRegistry, atom: Atom.Atom<A>): Effect.Effect<void, never, Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRegistry.ts#L300)

Since v4.0.0