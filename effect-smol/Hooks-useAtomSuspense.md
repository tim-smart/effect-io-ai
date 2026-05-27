Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomSuspense

Reads an `AsyncResult` atom through React Suspense, suspending while the
result is initial or configured as waiting.

**When to use**

Use when a React component should render only after an `AsyncResult` atom has
left its initial state, with loading delegated to a Suspense boundary.

**Details**

`suspendOnWaiting` defaults to `false`. When `includeFailure` is `true`, a
failure result is returned instead of being thrown.

**Gotchas**

Without `includeFailure`, failure results are thrown with
`Cause.squash(result.cause)`, so callers need an error boundary for failures.

**See**

- `useAtomValue` for reading the raw `AsyncResult` value without Suspense

**Signature**

```ts
declare const useAtomSuspense: <A, E, const IncludeFailure extends boolean = false>(atom: Atom.Atom<AsyncResult.AsyncResult<A, E>>, options?: { readonly suspendOnWaiting?: boolean | undefined; readonly includeFailure?: IncludeFailure | undefined; }) => AsyncResult.Success<A, E> | (IncludeFailure extends true ? AsyncResult.Failure<A, E> : never)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L373)

Since v4.0.0