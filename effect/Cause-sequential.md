## sequential

Combines two `Cause`s sequentially.

**Details**

This function merges two errors that occurred in sequence, such as a main
error followed by a finalization error. It preserves both errors for complete
failure information.

**See**

- `isSequentialType` Check if a `Cause` is a `Sequential`

**Signature**

```ts
declare const sequential: <E, E2>(left: Cause<E>, right: Cause<E2>) => Cause<E | E2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L654)

Since v2.0.0