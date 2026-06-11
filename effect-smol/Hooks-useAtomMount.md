Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomMount

Mounts an atom in the current React registry for the lifetime of the
component.

**When to use**

Use to keep an atom mounted from a React component without reading, writing,
or refreshing it.

**Details**

The hook uses the current `RegistryContext` and releases the mount through
React effect cleanup when the component unmounts or when the registry or atom
dependency changes.

**See**

- `useAtomSet` for mounting a writable atom while returning a setter
- `useAtomRefresh` for mounting an atom while returning a refresh callback

**Signature**

```ts
declare const useAtomMount: <A>(atom: Atom.Atom<A>) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L185)

Since v4.0.0