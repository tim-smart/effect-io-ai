## isInterrupted

Checks if a `Cause` contains an interruption.

**Details**

This function returns `true` if the `Cause` includes any fiber interruptions.

**Signature**

```ts
declare const isInterrupted: <E>(self: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L789)

Since v2.0.0