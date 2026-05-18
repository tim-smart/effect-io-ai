Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomRefProp

Returns a memoized atom ref for a property of another atom ref.

**Signature**

```ts
declare const useAtomRefProp: <A, K extends keyof A>(ref: AtomRef.AtomRef<A>, prop: K) => AtomRef.AtomRef<A[K]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L343)

Since v4.0.0