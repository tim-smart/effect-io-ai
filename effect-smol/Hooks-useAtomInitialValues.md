Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomInitialValues

Seeds initial atom values in the current React atom registry.

**When to use**

Use to seed atom values from a React component after the current registry
already exists.

**Gotchas**

Each atom is initialized at most once for a given registry by this hook, so
later calls for the same atom in that registry are ignored.

**Signature**

```ts
declare const useAtomInitialValues: (initialValues: Iterable<readonly [Atom.Atom<any>, any]>) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L91)

Since v4.0.0