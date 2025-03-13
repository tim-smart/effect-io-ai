Package: `effect`<br />
Module: `Cause`<br />

## Cause.parallel

Combines two `Cause`s in parallel.

**Details**

This function merges two errors that occurred simultaneously. Instead of
discarding one error, both are retained, allowing for richer error reporting
and debugging.

**See**

- `isParallelType` Check if a `Cause` is a `Parallel`

**Signature**

```ts
declare const parallel: <E, E2>(left: Cause<E>, right: Cause<E2>) => Cause<E | E2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L638)

Since v2.0.0