Package: `effect`<br />
Module: `Micro`<br />

## Micro.forkDaemon

Run the `Micro` effect in a new `MicroFiber` that can be awaited, joined, or
aborted.

It will not be aborted when the parent `Micro` finishes.

**Signature**

```ts
declare const forkDaemon: <A, E, R>(self: Micro<A, E, R>) => Micro<MicroFiber<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4143)

Since v3.4.0