Package: `effect`<br />
Module: `WorkerRunner`<br />

## WorkerRunner.PlatformMessage

Wire protocol message used by worker platforms: a request carrying input or a
close signal.

**Signature**

```ts
type PlatformMessage<I> = readonly [request: 0, I] | readonly [close: 1]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkerRunner.ts#L47)

Since v4.0.0