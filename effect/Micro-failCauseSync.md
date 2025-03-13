Package: `effect`<br />
Module: `Micro`<br />

## Micro.failCauseSync

Creates a `Micro` effect that will fail with the lazily evaluated `MicroCause`.

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<MicroCause<E>>) => Micro<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L957)

Since v3.4.0