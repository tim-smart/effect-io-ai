Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomValue

Subscribes to an atom in the current React registry and returns its current
value, optionally mapped through a selector.

**When to use**

Use when a React component needs to render from an atom value without also
returning a setter.

**Details**

When a selector is provided, the hook maps the atom before subscribing so the
component reads the selected value from the current `RegistryContext`.

**See**

- `useAtom` for reading and updating a writable atom from one component
- `useAtomRef` for reading an `AtomRef` directly

**Signature**

```ts
declare const useAtomValue: { <A>(atom: Atom.Atom<A>): A; <A, B>(atom: Atom.Atom<A>, f: (_: A) => B): B; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L126)

Since v4.0.0