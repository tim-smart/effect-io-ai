Package: `effect`<br />
Module: `Duration`<br />

## Duration.toNanos

Get the duration in nanoseconds as a bigint.

If the duration is infinite, returns `Option.none()`

**Signature**

```ts
declare const toNanos: (self: DurationInput) => Option.Option<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Duration.ts#L362)

Since v2.0.0