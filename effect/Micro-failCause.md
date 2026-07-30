Package: `effect`<br />
Module: `Micro`<br />

## Micro.failCause

Creates a `Micro` effect that will fail with the specified `MicroCause`.

**Signature**

```ts
declare const failCause: <E>(cause: MicroCause<E>) => Micro<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L843)

Since v3.4.6