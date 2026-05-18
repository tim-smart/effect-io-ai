Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomSubscribe

Subscribes a callback to an atom in the current React registry for the
component lifetime.

**Signature**

```ts
declare const useAtomSubscribe: <A>(atom: Atom.Atom<A>, f: (_: A) => void, options?: { readonly immediate?: boolean; }) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L313)

Since v4.0.0