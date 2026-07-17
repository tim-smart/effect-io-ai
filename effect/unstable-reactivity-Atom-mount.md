Package: `effect`<br />
Module: `Atom`<br />

## Atom.mount

Mounts an atom in the `AtomRegistry` for the lifetime of the current scope.

**Details**

Mounting keeps the atom subscribed with a no-op listener until the scope
finalizer releases it.

**Signature**

```ts
declare const mount: <A>(self: Atom<A>) => Effect.Effect<void, never, AtomRegistry | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Atom.ts#L2381)

Since v4.0.0