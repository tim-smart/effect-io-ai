Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomValue

Subscribes to an atom in the current React registry and returns its current
value, optionally mapped through a selector.

**Signature**

```ts
declare const useAtomValue: { <A>(atom: Atom.Atom<A>): A; <A, B>(atom: Atom.Atom<A>, f: (_: A) => B): B; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L108)

Since v4.0.0