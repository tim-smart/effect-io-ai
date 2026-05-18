Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomInitialValues

Seeds initial atom values in the current React atom registry.

**Details**

Each atom is initialized at most once for a given registry, so subsequent
renders do not overwrite values that have already been established.

**Signature**

```ts
declare const useAtomInitialValues: (initialValues: Iterable<readonly [Atom.Atom<any>, any]>) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L86)

Since v4.0.0