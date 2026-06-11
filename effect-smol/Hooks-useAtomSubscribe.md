Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomSubscribe

Subscribes a callback to an atom in the current React registry for the
component lifetime.

**When to use**

Use when a React component needs to run a callback for atom changes without
reading the atom value during render.

**Details**

The subscription is installed in a React effect and cleaned up on unmount or
dependency change. When `options.immediate` is enabled, the callback receives
the current value when the effect subscribes.

**See**

- `useAtomValue` for reading an atom value during render instead of running a callback

**Signature**

```ts
declare const useAtomSubscribe: <A>(atom: Atom.Atom<A>, f: (_: A) => void, options?: { readonly immediate?: boolean; }) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L395)

Since v4.0.0