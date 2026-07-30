Package: `effect`<br />
Module: `Micro`<br />

## Micro.sandbox

Replace the error type of the given `Micro` with the full `MicroCause` object.

**Signature**

```ts
declare const sandbox: <A, E, R>(self: Micro<A, E, R>) => Micro<A, MicroCause<E>, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1399)

Since v3.4.0