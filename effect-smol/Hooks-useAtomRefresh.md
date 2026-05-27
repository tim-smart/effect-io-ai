Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomRefresh

Mounts an atom and returns a callback that refreshes it in the current React
registry.

**When to use**

Use to expose a React callback that requests a refresh for an atom without
reading or writing its value.

**Details**

The hook uses the current `RegistryContext`, mounts the atom for the
component lifetime, and returns a callback that calls `registry.refresh`.

**See**

- `useAtomMount` for mounting an atom without returning a refresh callback

**Signature**

```ts
declare const useAtomRefresh: <A>(atom: Atom.Atom<A>) => () => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L263)

Since v4.0.0