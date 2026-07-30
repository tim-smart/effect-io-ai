Package: `effect`<br />
Module: `Micro`<br />

## Micro.fork

Run the `Micro` effect in a new `MicroFiber` that can be awaited, joined, or
aborted.

When the parent `Micro` finishes, this `Micro` will be aborted.

**Signature**

```ts
declare const fork: <A, E, R>(self: Micro<A, E, R>) => Micro<MicroFiber<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4106)

Since v3.4.0