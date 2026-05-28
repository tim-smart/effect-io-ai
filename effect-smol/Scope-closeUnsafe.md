Package: `effect`<br />
Module: `Scope`<br />

## Scope.closeUnsafe

Closes a scope unsafely with the provided exit value.

**When to use**

Use when implementing lower-level scope machinery that must transition a
scope to `Closed` immediately and can run the returned finalizer effect when
one is produced.

**Details**

Returns an effect that runs registered finalizers, or `undefined` when the
scope was already closed or no finalizers need to run.

**Gotchas**

Ignoring the returned effect skips registered finalizers.

**See**

- `close` for the usual effectful close operation that always returns an `Effect`

**Signature**

```ts
declare const closeUnsafe: <A, E>(self: Scope, exit_: Exit<A, E>) => Effect<void, never, never> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L565)

Since v4.0.0