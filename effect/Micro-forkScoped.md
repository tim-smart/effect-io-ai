Package: `effect`<br />
Module: `Micro`<br />

## Micro.forkScoped

Run the `Micro` effect in a new `MicroFiber` that can be awaited, joined, or
aborted.

The lifetime of the handle will be attached to the current `MicroScope`.

**Signature**

```ts
declare const forkScoped: <A, E, R>(self: Micro<A, E, R>) => Micro<MicroFiber<A, E>, never, R | MicroScope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4182)

Since v3.4.0