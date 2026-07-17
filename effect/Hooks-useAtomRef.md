Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomRef

Subscribes to an atom ref and returns its latest value.

**When to use**

Use when a React component should render from an `AtomRef.ReadonlyRef`
directly instead of reading an atom through the current registry.

**Details**

The hook subscribes with `ref.subscribe`, triggers re-renders through React
state, and returns the current `ref.value`.

**See**

- `useAtomValue` for reading an `Atom` from the current registry
- `useAtomRefPropValue` for reading a property ref value

**Signature**

```ts
declare const useAtomRef: <A>(ref: AtomRef.ReadonlyRef<A>) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L426)

Since v4.0.0