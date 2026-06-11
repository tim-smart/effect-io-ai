Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomRefPropValue

Subscribes to a property ref derived from an atom ref and returns its current
value.

**When to use**

Use when a React component needs only the current value of one property from
an object-shaped `AtomRef`.

**Details**

The hook composes `useAtomRefProp(ref, prop)` with `useAtomRef`, so the
property ref is memoized for the `[ref, prop]` pair and then subscribed
through `ref.subscribe`.

**See**

- `useAtomRefProp` for returning the property ref directly
- `useAtomRef` for subscribing to a whole atom ref value

**Signature**

```ts
declare const useAtomRefPropValue: <A, K extends keyof A>(ref: AtomRef.AtomRef<A>, prop: K) => A[K]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L475)

Since v4.0.0