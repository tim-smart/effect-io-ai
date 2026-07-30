Package: `effect`<br />
Module: `Duration`<br />

## Duration.unsafeToNanos

Get the duration in nanoseconds as a bigint.

If the duration is infinite, it throws an error.

**Signature**

```ts
declare const unsafeToNanos: (self: DurationInput) => bigint
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Duration.ts#L382)

Since v2.0.0