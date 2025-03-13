Package: `effect`<br />
Module: `Micro`<br />

## Micro.sync

Creates a `Micro` effect that succeeds with a lazily evaluated value.

If the evaluation of the value throws an error, the effect will fail with a
`Die` variant of the `MicroCause` type.

**Signature**

```ts
declare const sync: <A>(evaluate: LazyArg<A>) => Micro<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L877)

Since v3.4.0