Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomRefresh

Mounts an atom and returns a callback that refreshes it in the current React
registry.

**Signature**

```ts
declare const useAtomRefresh: <A>(atom: Atom.Atom<A>) => () => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L206)

Since v4.0.0