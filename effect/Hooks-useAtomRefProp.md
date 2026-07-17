Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomRefProp

Returns a memoized atom ref for a property of another atom ref.

**When to use**

Use to derive an `AtomRef` for one property of an object-shaped atom ref.

**Details**

The hook memoizes `ref.prop(prop)` for the `[ref, prop]` dependency pair and
returns the property ref so callers can read, set, update, or subscribe to
that nested property.

**See**

- `useAtomRef` for subscribing to an atom ref value
- `useAtomRefPropValue` for subscribing directly to a property value

**Signature**

```ts
declare const useAtomRefProp: <A, K extends keyof A>(ref: AtomRef.AtomRef<A>, prop: K) => AtomRef.AtomRef<A[K]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L451)

Since v4.0.0