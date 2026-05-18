Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomRefPropValue

Subscribes to a property ref derived from an atom ref and returns its current
value.

**Signature**

```ts
declare const useAtomRefPropValue: <A, K extends keyof A>(ref: AtomRef.AtomRef<A>, prop: K) => A[K]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L353)

Since v4.0.0