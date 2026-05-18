Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomSuspense

Reads an `AsyncResult` atom through React Suspense, suspending while the
result is initial or configured as waiting.

**Signature**

```ts
declare const useAtomSuspense: <A, E, const IncludeFailure extends boolean = false>(atom: Atom.Atom<AsyncResult.AsyncResult<A, E>>, options?: { readonly suspendOnWaiting?: boolean | undefined; readonly includeFailure?: IncludeFailure | undefined; }) => AsyncResult.Success<A, E> | (IncludeFailure extends true ? AsyncResult.Failure<A, E> : never)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L291)

Since v4.0.0